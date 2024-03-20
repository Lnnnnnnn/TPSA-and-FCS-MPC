//
// Created by s1805689 on 24/05/2022.
//

#include "ap_header.h"

void ThreadPE (float_sp *Jmin, float16_t *CalcNum, ap_int_4 *nextgate, ap_int_4 *state, float16_t xn_current[],
              float16_t xn_visited[][XNSIZE],
              ap_int_4 *index, const ap_int_4 &INIT_index, ap_int_4 *branch, const ap_int_4 &INIT_branch,
              ap_int_4 location[],
              float_sp *J_current, float_sp J_visited[],
              ap_int_4 helpedList[], const ap_int_4 &assignmentList, ap_int_4 helper_assignment_number, const ap_int_2 prestate[],
              float16_t xref[], float16_t U_SET[][27], ap_int_2 GATE[][3],
              float16_t v[],
              APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
              APFIX_16_QswConst_MOS Q_switchConst_MOS,
              APFIX_16_Qcur Q_currentlim, float16_t CL){

    ap_int_4 indextemp = 0;
    ap_int_4 assignmentbegintemp = 0;
    ap_int_4 assignmenttemp = 0;
    if (*state == 0){
        indextemp = 0;
        assignmentbegintemp = 0;
        assignmenttemp = assignmentList;
    } else{
        indextemp = INIT_index;
        assignmentbegintemp = INIT_index;
        assignmenttemp = INIT_branch + helper_assignment_number;
    }

// STEP 1: Pruning
// If J_current is larger than Jmin, No reason to go to deeper level or move in same level.
    if (*J_current >= *Jmin) {

        while (*J_current >= *Jmin && *index > indextemp) {

            location[*index] = 0;
            *J_current = *J_current - J_visited[*index];
            *index = *index - 1;
            *branch = location[*index];
            for (ap_int_4 i = 0; i < XNSIZE; ++i) {

                xn_current[i] = xn_visited[*index][i];
            }
        }

        // if this level have helper larger than gatesize
        TFLOOP3:
        while (*branch + helpedList[*index] >= GATESIZE && *index > indextemp) {

            location[*index] = 0;
            helpedList[*index] = 0;

            *J_current = *J_current - J_visited[*index];
            *index = *index - 1;
            *branch = location[*index];

            for (ap_int_4 i = 0; i < XNSIZE; ++i) {

                xn_current[i] = xn_visited[*index][i];
            }
        }


// move to new position
        *branch = *branch + helpedList[*index] + 1;
        helpedList[*index] = 0;
        location[*index] = *branch;

// check finish assginment
        if (location[assignmentbegintemp] == assignmenttemp) {
            *state = 2;
            *index = -1;
            *branch = -1;

            for (ap_int_4 i = 0; i < HORIZON; i++) // set location to be zero
            {

                location[i] = -1;
            }

            *J_current = -1;

            for (ap_int_4 i = 0; i < HORIZON; i++) // set helpedList to be zero
            {

                helpedList[i] = 0;
            }
        }
        return;
    }

// STEP 2: Calculate state-space function and cost value for new J_current
    *CalcNum = *CalcNum + 1;  // count the total calcNum

    float16_t u[XNSIZE];

    for (ap_int_4 i = 0; i < XNSIZE; ++i) {

        u[i] = U_SET[i][location[*index]];
    }

    ap_int_2 previous_state[UNSIZE];

    if (*index == 0) {
        for (ap_int_4 i = 0; i < UNSIZE; ++i) {

            previous_state[i] = prestate[i];
        }
    } else {
        for (ap_int_4 i = 0; i < UNSIZE; ++i) {

            previous_state[i] = GATE[location[*index - 1]][i];
        }
    }

    ap_int_2 current_state[UNSIZE];

    for (ap_int_4 i = 0; i < UNSIZE; ++i) {

        current_state[i] = GATE[location[*index]][i];
    }

    statespace(xn_current, u, v);


    float_sp Jcalc = JcalcValue(xref, xn_current, previous_state, current_state,
                                Q_quad, Q_quad_mos, Q_switchConst_IGBT, Q_switchConst_MOS, Q_currentlim, CL);

    *J_current = *J_current + Jcalc;


// STEP 3: Determine the next location
    if (*index == HORIZON - 1) {
        if (*J_current < *Jmin) {
            *Jmin = *J_current;
            *nextgate = location[0];
        }
        if (*branch + helpedList[*index] < GATESIZE) {
            *J_current = *J_current - Jcalc;
            for (ap_int_4 i = 0; i < XNSIZE; ++i) {

                xn_current[i] = xn_visited[*index][i];
            }
            *branch = *branch + helpedList[*index] + 1;
            helpedList[*index] = 0;
            location[*index] = *branch;
        } else {
            *J_current = *J_current - Jcalc;
        TFLOOP2:
            while (*branch + helpedList[*index] >= GATESIZE && *index > indextemp) {
                location[*index] = 0;
                helpedList[*index] = 0;
                *J_current = *J_current - J_visited[*index];
                *index = *index - 1;
                *branch = location[*index];
                for (ap_int_4 i = 0; i < XNSIZE; ++i) {

                    xn_current[i] = xn_visited[*index][i];
                }
            }

            *branch = *branch + helpedList[*index] + 1;
            helpedList[*index] = 0;
            location[*index] = *branch;
        }
        if (location[assignmentbegintemp] == assignmenttemp) {
            *state = 2;
            *index = -1;
            *branch = -1;
            for (ap_int_4 i = 0; i < HORIZON; i++)  // set location to be zero
            {

                location[i] = -1;
            }
            *J_current = -1;
            for (ap_int_4 i = 0; i < HORIZON; i++) {// set helpedList to be zero


                helpedList[i] = 0;
            }

            return;
        }
    } else {
        if (*J_current < *Jmin) {
            *index = *index + 1;
            J_visited[*index] = Jcalc;
            for (ap_int_4 i = 0; i < XNSIZE; ++i) {

                xn_visited[*index][i] = xn_current[i];
            }

            *branch = 0;
            location[*index] = 0;
        } else {
            if (*branch + helpedList[*index] < GATESIZE) {
                *J_current = *J_current - Jcalc;
                for (ap_int_4 i = 0; i < XNSIZE; ++i) {

                    xn_current[i] = xn_visited[*index][i];
                }
                *branch = *branch + helpedList[*index] + 1;
                helpedList[*index] = 0;
                location[*index] = *branch;
            } else {
                *J_current = *J_current - Jcalc;
TFLOOP1:
                while (*branch + helpedList[*index] >= GATESIZE && *index > indextemp) {

                    location[*index] = 0;
                    helpedList[*index] = 0;
                    *J_current = *J_current - J_visited[*index];
                    *index = *index - 1;
                    *branch = location[*index];
                    for (ap_int_4 i = 0; i < XNSIZE; ++i) {

                        xn_current[i] = xn_visited[*index][i];
                    }
                }

                *branch = *branch + helpedList[*index] + 1;
                helpedList[*index] = 0;
                location[*index] = *branch;
            }
            if (location[assignmentbegintemp] == assignmenttemp) {
                *state = 2;
                *index = -1;
                *branch = -1;
                for (ap_int_4 i = 0; i < HORIZON; i++) {

                    location[i] = -1;
                }
                *J_current = -1;
                for (ap_int_4 i = 0; i < HORIZON; i++) {// set helpedList to be zero

                    helpedList[i] = 0;
                }

                return;
            }
        }
    }



}


void MPCthread(float_sp *Jmin, float16_t *CalcNum, ap_int_4 *nextgate, ap_int_4 *state, float16_t xn_current[],
               float16_t xn_visited[][XNSIZE],
               ap_int_4 *index, ap_int_4 INIT_index, ap_int_4 *branch, ap_int_4 INIT_branch, ap_int_4 location[],
               float_sp *J_current, float_sp J_visited[],
               ap_int_4 helpedList[], ap_int_4 assignmentList, ap_int_4 helper_assignment_number,
               float16_t xref[], float16_t v[], const ap_int_2 prestate[UNSIZE],
               APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
               APFIX_16_QswConst_MOS Q_switchConst_MOS,
               APFIX_16_Qcur Q_currentlim) {

    static float16_t U_SET[6][27] =
            {{0.00,-7.01,-14.03,-7.01,-14.03,-21.04,-14.03,-21.04,-28.05,14.03,7.01,0.00,7.01,0.00,-7.0132,0,-7.01,-14.03,28.05,21.04,14.03,21.04,14.03,7.01,14.03,7.01,0.00           },
             {0.00,-0.80,-1.60,-0.80,-1.60,-2.40,-1.60,-2.40,-3.19,1.60,0.80,0.00,0.80,0.00,-0.80,0.00,-0.80,-1.60,3.19,2.40,1.60,2.40,1.60,0.80,1.60,0.80,0.00                        },
             {0.00,-2.43,-4.85,-2.43,-4.85,-7.28,-4.85,-7.28,-9.71,4.85,2.43,0.00,2.43,0.00,-2.43,0.00,-2.43,-4.85,9.71,7.28,4.85,7.28,4.85,2.43,4.85,2.43,0.00                        },
             {0.00,-12.15,-24.29,12.15,0.00,-12.15,24.29,12.15,0.00,0.00,-12.15,-24.29,12.15,0.00,-12.15,24.29,12.15,0.00,0.00,-12.15,-24.29,12.15,0.00,-12.15,24.29,12.15,0.00        },
             {0.00,-1.38,-2.77,1.38,0.00,-1.38,2.77,1.38,0.00,0.00,-1.38,-2.77,1.38,0.00,-1.38,2.77,1.38,0.00,0.00,-1.38,-2.77,1.38,0.00,-1.38,2.77,1.38,0.00                          },
             {0.00,-4.20,-8.41,4.20,0.00,-4.20,8.41,4.20,0.00,0.00,-4.20,-8.41,4.20,0.00,-4.20,8.41,4.20,0.00,0.00,-4.20,-8.41,4.20,0.00,-4.20,8.41,4.20,0.00                          }};

    ap_int_2 GATE[27][3] = {{-1, -1, -1},
                            {-1, -1, 0},
                            {-1, -1, 1},
                            {-1, 0,  -1},
                            {-1, 0,  0},
                            {-1, 0,  1},
                            {-1, 1,  -1},
                            {-1, 1,  0},
                            {-1, 1,  1},
                            {0,  -1, -1},
                            {0,  -1, 0},
                            {0,  -1, 1},
                            {0,  0,  -1},
                            {0,  0,  0},
                            {0,  0,  1},
                            {0,  1,  -1},
                            {0,  1,  0},
                            {0,  1,  1},
                            {1,  -1, -1},
                            {1,  -1, 0},
                            {1,  -1, 1},
                            {1,  0,  -1},
                            {1,  0,  0},
                            {1,  0,  1},
                            {1,  1,  -1},
                            {1,  1,  0},
                            {1,  1,  1}};


    float16_t CL = 22;

        if (*state == 0 or *state == 1) {
            ThreadPE(Jmin, CalcNum, nextgate, state, xn_current, xn_visited,
                     index, INIT_index, branch, INIT_branch, location,
                     J_current, J_visited,
                     helpedList, assignmentList, helper_assignment_number,prestate,
                     xref, U_SET, GATE,
                     v,
                     Q_quad, Q_quad_mos, Q_switchConst_IGBT, Q_switchConst_MOS, Q_currentlim, CL);
        }

}



void MPCallocate_0627(ap_int_4 states[], float16_t xn_currents[][XNSIZE], float16_t xn_visiteds[][HORIZON][XNSIZE],
                      ap_int_4 indexs[], ap_int_4 INIT_indexs[], ap_int_4 branchs[], ap_int_4 INIT_branchs[],
                      ap_int_4 locations[][HORIZON],
                      float_sp J_currents[], float_sp J_visiteds[][HORIZON],
                      ap_int_4 helpedLists[][HORIZON], ap_int_4 HelperQueue[THREADNUM], ap_int_4 assignmentLists[],
                      ap_int_4 getHelperList[THREADNUM], ap_int_4 getWokerList[THREADNUM], ap_int_4 *helper_number,
                      ap_int_4 *worker_task_total_number
) {


    // create local memeory
// MODIFY GETHELPERLIST_BUFFER BEGIN
ap_int_4 getHelperList_buffer[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
// MODIFY GETHELPERLIST_BUFFER END

// MODIFY GETWORKERLIST_BUFFER BEGIN
ap_int_4 getWokerList_buffer[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
// MODIFY GETWORKERLIST_BUFFER END

    ap_int_4 i = 0;
    ap_int_4 j = 0;

    ap_int_4 helper_number_buffer = 0;
    ap_int_4 worker_task_total_number_buffer = 0;

    ap_int_4 states_buffer[THREADNUM];

    ap_int_4 branchs_buffer[THREADNUM];

    ap_int_4 helpedLists_buffer[THREADNUM][HORIZON];


    ap_int_4 indexs_buffer[THREADNUM];


    ap_int_4 assignmentLists_buffer[THREADNUM];

    states_buffer:
    for (ap_int_4 k = 0; k < THREADNUM; ++k) {

        states_buffer[k] = states[k];
    }
    branchs_buffer:
    for (ap_int_4 k = 0; k < THREADNUM; ++k) {

        branchs_buffer[k] = branchs[k];
    }
    indexs_buffer:
    for (ap_int_4 k = 0; k < THREADNUM; ++k) {

        indexs_buffer[k] = indexs[k];
    }
    assignmentLists_buffer:
    for (ap_int_4 k = 0; k < THREADNUM; ++k) {

        assignmentLists_buffer[k] = assignmentLists[k];
    }
    helpedLists_buffer1:
    for (ap_int_4 k = 0; k < THREADNUM; ++k) {

        helpedLists_buffer2:
        for (ap_int_4 l = 0; l < HORIZON; ++l) {

            helpedLists_buffer[k][l] = helpedLists[k][l];
        }
    }

// get helper
    getHelperList_buffer:
    for (ap_int_4 QueueIndex = 0; QueueIndex < THREADNUM; ++QueueIndex) {

        if (states_buffer[QueueIndex] == 2) {
            getHelperList_buffer[QueueIndex] = QueueIndex;
//            helper_number_buffer += 1;
        }
// get worker
        getWorkerList_buffer:
        ap_int_4 t1 = branchs_buffer[QueueIndex] + helpedLists_buffer[QueueIndex][indexs[QueueIndex]];
        ap_int_4 t2 = assignmentLists_buffer[QueueIndex] - t1 - 1;
        if (states_buffer[QueueIndex] == 0 && t1 < GATESIZE) {
            if (indexs_buffer[QueueIndex] == 0) { // if it is in the 0 level
                main_if3:
                getWokerList_buffer[QueueIndex] = t2;

            } else {
                getWokerList_buffer[QueueIndex] = GATESIZE - t1;

            }
        }

    }

    // write output
    write_getHelperList:
    for (ap_int_4 k = 0; k < THREADNUM; ++k) {
#pragma HLS UNROLL
        getHelperList[k] = getHelperList_buffer[k];

        getWokerList[k] = getWokerList_buffer[k];
    }

    *helper_number = helper_number_buffer;
    *worker_task_total_number = worker_task_total_number_buffer;


}

void matchFunction_0627(ap_int_4 states[THREADNUM], float16_t xn_currents[THREADNUM][XNSIZE],
                        float16_t xn_visiteds[][HORIZON][XNSIZE],
                        ap_int_4 indexs[THREADNUM], ap_int_4 INIT_indexs[], ap_int_4 branchs[], ap_int_4 INIT_branchs[],
                        ap_int_4 locations[THREADNUM][HORIZON],
                        float_sp J_currents[THREADNUM], float_sp J_visiteds[][HORIZON],
                        ap_int_4 helpedLists[THREADNUM][HORIZON], ap_int_4 HelperQueue[THREADNUM],
                        ap_int_4 assignmentLists[],
                        ap_int_4 getHelperList[THREADNUM], ap_int_4 getWokerList[THREADNUM], ap_int_4 *helper_number,
                        ap_int_4 *worker_task_total_number, ap_int_4 helper_assignment_numbers[THREADNUM], ap_int_4 helper_task_div_number) {
// MODIFY GETHELPERLIST_BUFFER BEGIN
ap_int_4 getHelperList_buffer[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
// MODIFY GETHELPERLIST_BUFFER END

// MODIFY GETWORKERLIST_BUFFER BEGIN
ap_int_4 getWokerList_buffer[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
// MODIFY GETWORKERLIST_BUFFER END



    ap_int_4 helper_pointer = 0;
    ap_int_4 worker_pointer = 0;
//    ap_int_4 helper_task_div_number = 4;

    // read input
    for (ap_int_4 k = 0; k < THREADNUM; ++k) {

        getHelperList_buffer[k] = getHelperList[k];
    }
    for (ap_int_4 k = 0; k < THREADNUM; ++k) {

        getWokerList_buffer[k] = getWokerList[k];
    }

// MODIFY HELPNUMBER_BUFFER BEGIN
ap_int_4 helpnumber_buffer[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
// MODIFY HELPNUMBER_BUFFER END


    // vadd and write
    matchloop:
    for (ap_int_4 mem = 0; mem < THREADNUM; ++mem) {

        while (worker_pointer < THREADNUM && getWokerList_buffer[worker_pointer] < helper_task_div_number) {
            worker_pointer += 1;
        }
        if (worker_pointer == THREADNUM) {
            break;
        }
        if (getHelperList_buffer[mem] != -1) {
            states[getHelperList_buffer[mem]] = 1;

            helpedLists[worker_pointer][indexs[worker_pointer]] += helper_task_div_number;
            helper_assignment_numbers[getHelperList_buffer[mem]] = helper_task_div_number;
            getWokerList_buffer[worker_pointer] -= helper_task_div_number;
            helpnumber_buffer[mem] = helpedLists[worker_pointer][indexs[worker_pointer]] - helper_task_div_number + 1;

            matchloo1:
            for (ap_int_4 i = 0; i < XNSIZE; ++i) {

                xn_currents[getHelperList_buffer[mem]][i] = xn_currents[worker_pointer][i];
            }
            matchloop2:
            for (ap_int_4 i = 0; i < HORIZON; ++i) {

                matchloop3:
                for (ap_int_4 j = 0; j < XNSIZE; ++j) {

                    xn_visiteds[getHelperList_buffer[mem]][i][j] = xn_visiteds[worker_pointer][i][j];
                }
            }

            indexs[getHelperList_buffer[mem]] = indexs[worker_pointer];
            INIT_indexs[getHelperList_buffer[mem]] = indexs[worker_pointer];


            branchs[getHelperList_buffer[mem]] = branchs[worker_pointer] + helpnumber_buffer[mem];
            INIT_branchs[getHelperList_buffer[mem]] = branchs[worker_pointer] + helpnumber_buffer[mem];

            matchloop4:
            for (ap_int_4 i = 0; i < HORIZON; ++i) {

                locations[getHelperList_buffer[mem]][i] = locations[worker_pointer][i];
            }
            locations[getHelperList_buffer[mem]][indexs[getHelperList_buffer[mem]]] += helpnumber_buffer[mem];

            J_currents[getHelperList_buffer[mem]] = J_currents[worker_pointer];
            matchloop5:
            for (ap_int_4 i = 0; i < HORIZON; ++i) {

                J_visiteds[getHelperList_buffer[mem]][i] = J_visiteds[worker_pointer][i];
            }


        }
    }

}


bool WorkerAllocationFrequency(ap_int_4 states[THREADNUM], ap_int_4 indexs[THREADNUM],ap_int_4 locations[][HORIZON], ap_int_4 helper_task_div_number) {
    ap_int_4 workerstates = 0;
    ap_int_4 idlestates = 2;
    bool helper_flag = false;
    bool worker_flag = false;

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        if (states[i] == workerstates) {
            worker_flag = true;
        } else if (states[i] == idlestates) {
            helper_flag = true;
        }

        if (helper_flag && worker_flag) {
            return true;
        }
    }
    return false;
}


