#include "ap_header.h"

void MPCcore(ap_int_4 *y, float_sp Jin, float_sp *J, float16_t *Calc, ap_int_4 *allocationCal, float16_t xref[XNSIZE],
             float16_t x[XNSIZE], ap_int_2 gateT[3], bool gate[6], float16_t v[VNSIZE], const ap_int_2 prestate[UNSIZE],
             APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
             APFIX_16_QswConst_MOS Q_switchConst_MOS, APFIX_16_Qcur Q_currentlim) {


    float16_t xrefs[THREADNUM][XNSIZE];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {
        for (ap_int_4 j = 0; j < XNSIZE; ++j) {
            xrefs[i][j] = xref[j];
        }
    }


    float16_t vs[THREADNUM][VNSIZE];
    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < VNSIZE; ++j) {

            vs[i][j] = v[j];
        }
    }

    float_sp Jmins[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        Jmins[i] = Jin;
    }

    float16_t CalcNums[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        CalcNums[i] = 0;
    }
    ap_int_4 nextgates[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        nextgates[i] = 0;
    }

// MODIFY STATES BEGIN
    ap_int_4 states[THREADNUM] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    float16_t xn_currents[THREADNUM][XNSIZE];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < XNSIZE; ++j) {

            xn_currents[i][j] = x[j];
        }
    }

    float16_t xn_visiteds[THREADNUM][HORIZON][XNSIZE];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 k = 0; k < XNSIZE; ++k) {

            xn_visiteds[i][0][k] = x[k];
        }
    }

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 1; j < HORIZON; ++j) {

            for (ap_int_4 k = 0; k < XNSIZE; ++k) {

                xn_visiteds[i][j][k] = 0;
            }
        }
    }

    ap_int_4 indexs[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {


        indexs[i] = 0;
    }

    ap_int_4 INIT_indexs[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        INIT_indexs[i] = 0;
    }



// MODIFY BRANCHS BEGIN
    ap_int_4 branchs[THREADNUM] = {0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 23, 24, 25, 26};



// MODIFY INIT_BRANCHS BEGIN
    ap_int_4 INIT_branchs[THREADNUM] = {0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 23, 24, 25, 26};


// MODIFY LOCATIONS BEGIN
    ap_int_4 locations[THREADNUM][HORIZON] = {{0,  0},
                                              {2,  0},
                                              {4,  0},
                                              {6,  0},
                                              {8,  0},
                                              {10, 0},
                                              {12, 0},
                                              {14, 0},
                                              {16, 0},
                                              {18, 0},
                                              {20, 0},
                                              {22, 0},
                                              {23, 0},
                                              {24, 0},
                                              {25, 0},
                                              {26, 0}};


    float_sp J_currents[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        J_currents[i] = 0;
    }


    float_sp J_visiteds[THREADNUM][HORIZON];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < HORIZON; ++j) {

            J_visiteds[i][j] = 0;
        }
    }

    ap_int_4 helpedLists[THREADNUM][HORIZON];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < HORIZON; ++j) {

            helpedLists[i][j] = 0;
        }
    }


    float16_h_t E[6][2] = {{-0.0065, 0},
                           {-0.1515, 0},
                           {0.0566,  0},
                           {0,       -0.0065},
                           {0,       -0.1515},
                           {0,       0.0566}};


    float16_t v_temp[XNSIZE];

    v_temp[0] = E[0][0] * v[0];
    v_temp[1] = E[1][0] * v[0];
    v_temp[2] = E[2][0] * v[0];
    v_temp[3] = E[3][1] * v[1];
    v_temp[4] = E[4][1] * v[1];
    v_temp[5] = E[5][1] * v[1];


    float16_t V_SETs[THREADNUM][XNSIZE];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        V_SETs[i][0] = v_temp[0];
        V_SETs[i][1] = v_temp[1];
        V_SETs[i][2] = v_temp[2];
        V_SETs[i][3] = v_temp[3];
        V_SETs[i][4] = v_temp[4];
        V_SETs[i][5] = v_temp[5];
    }

//    queue<float16_t> HelperQueue;
    ap_int_4 HelperQueue[THREADNUM];

// MODIFY ASSIGNMENTLISTS BEGIN
    ap_int_4 assignmentLists[THREADNUM] = {2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 23, 24, 25, 26, 27};
// MODIFY ASSIGNMENTLISTS END


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


    bool GATE_unzip[27][6] = {{0, 0, 0, 0, 0, 0},
                              {0, 0, 0, 0, 0, 1},
                              {0, 0, 0, 0, 1, 1},
                              {0, 0, 0, 1, 0, 0},
                              {0, 0, 0, 1, 0, 1},
                              {0, 0, 0, 1, 1, 1},
                              {0, 0, 1, 1, 0, 0},
                              {0, 0, 1, 1, 0, 1},
                              {0, 0, 1, 1, 1, 1},
                              {0, 1, 0, 0, 0, 0},
                              {0, 1, 0, 0, 0, 1},
                              {0, 1, 0, 0, 1, 1},
                              {0, 1, 0, 1, 0, 0},
                              {0, 1, 0, 1, 0, 1},
                              {0, 1, 0, 1, 1, 1},
                              {0, 1, 1, 1, 0, 0},
                              {0, 1, 1, 1, 0, 1},
                              {0, 1, 1, 1, 1, 1},
                              {1, 1, 0, 0, 0, 0},
                              {1, 1, 0, 0, 0, 1},
                              {1, 1, 0, 0, 1, 1},
                              {1, 1, 0, 1, 0, 0},
                              {1, 1, 0, 1, 0, 1},
                              {1, 1, 0, 1, 1, 1},
                              {1, 1, 1, 1, 0, 0},
                              {1, 1, 1, 1, 0, 1},
                              {1, 1, 1, 1, 1, 1}};


    static float16_t U_SET[6][27] = {{0.00, -7.01,  -14.03, -7.01, -14.03, -21.04, -14.03, -21.04, -28.05, 14.03, 7.01,   0.00,   7.01,  0.00, -7.0132, 0,     -7.01, -14.03, 28.05, 21.04,  14.03,  21.04, 14.03, 7.01,   14.03, 7.01,  0.00},
                                     {0.00, -0.80,  -1.60,  -0.80, -1.60,  -2.40,  -1.60,  -2.40,  -3.19,  1.60,  0.80,   0.00,   0.80,  0.00, -0.80,   0.00,  -0.80, -1.60,  3.19,  2.40,   1.60,   2.40,  1.60,  0.80,   1.60,  0.80,  0.00},
                                     {0.00, -2.43,  -4.85,  -2.43, -4.85,  -7.28,  -4.85,  -7.28,  -9.71,  4.85,  2.43,   0.00,   2.43,  0.00, -2.43,   0.00,  -2.43, -4.85,  9.71,  7.28,   4.85,   7.28,  4.85,  2.43,   4.85,  2.43,  0.00},
                                     {0.00, -12.15, -24.29, 12.15, 0.00,   -12.15, 24.29,  12.15,  0.00,   0.00,  -12.15, -24.29, 12.15, 0.00, -12.15,  24.29, 12.15, 0.00,   0.00,  -12.15, -24.29, 12.15, 0.00,  -12.15, 24.29, 12.15, 0.00},
                                     {0.00, -1.38,  -2.77,  1.38,  0.00,   -1.38,  2.77,   1.38,   0.00,   0.00,  -1.38,  -2.77,  1.38,  0.00, -1.38,   2.77,  1.38,  0.00,   0.00,  -1.38,  -2.77,  1.38,  0.00,  -1.38,  2.77,  1.38,  0.00},
                                     {0.00, -4.20,  -8.41,  4.20,  0.00,   -4.20,  8.41,   4.20,   0.00,   0.00,  -4.20,  -8.41,  4.20,  0.00, -4.20,   8.41,  4.20,  0.00,   0.00,  -4.20,  -8.41,  4.20,  0.00,  -4.20,  8.41,  4.20,  0.00}};


    APFIX_16_Qquad Q_quads[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        Q_quads[i] = Q_quad;
    }

    APFIX_16_Qquadmos Q_quad_moss[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        Q_quad_moss[i] = Q_quad_mos;
    }

    APFIX_16_QswConst_IGBT Q_switchConst_IGBTs[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        Q_switchConst_IGBTs[i] = Q_switchConst_IGBT;
    }

    APFIX_16_QswConst_MOS Q_switchConst_MOSs[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        Q_switchConst_MOSs[i] = Q_switchConst_MOS;
    }

    APFIX_16_Qcur Q_currentlims[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        Q_currentlims[i] = Q_currentlim;
    }


    ap_int_4 helper_assignment_numbers[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        helper_assignment_numbers[i] = 0;
    }

    float_sp minValue = Jin;
    ap_int_4 minIndex = 0;

    // begin the while loop
    int round = 0;
    int allocationround = 0;

    ap_int_4 k1 = 9;
    ap_int_4 k2 = 6;
    ap_int_4 k3 = 1;

    while (true) {

        ap_int_4 helper_number = 0;
        ap_int_4 worker_task_total_number = 0;
        ap_int_4 helper_task_div_number = 4;

        if (WorkerAllocationFrequency(states, indexs, locations, helper_task_div_number) && round > k1 &&
            round % k3 == 0) {
            allocationround += 1;
// MODIFY GETHELPERLIST BEGIN
            ap_int_4 getHelperList[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};


// MODIFY GETWORKERLIST BEGIN
            ap_int_4 getWokerList[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

            MPCallocate_0627(states, xn_currents, xn_visiteds, indexs, INIT_indexs, branchs, INIT_branchs, locations,
                             J_currents, J_visiteds, helpedLists, HelperQueue, assignmentLists, getHelperList,
                             getWokerList, &helper_number, &worker_task_total_number);

            matchFunction_0627(states, xn_currents, xn_visiteds, indexs, INIT_indexs, branchs, INIT_branchs, locations,
                               J_currents, J_visiteds, helpedLists, HelperQueue, assignmentLists, getHelperList,
                               getWokerList, &helper_number, &worker_task_total_number, helper_assignment_numbers,
                               helper_task_div_number);

        }


        for (ap_int_4 i = 0; i < THREADNUM; ++i) {

            MPCthread(&Jmins[i], &CalcNums[i], &nextgates[i], &states[i], xn_currents[i], xn_visiteds[i], &indexs[i],
                      INIT_indexs[i], &branchs[i], INIT_branchs[i], locations[i], &J_currents[i], J_visiteds[i],
                      helpedLists[i], assignmentLists[i], helper_assignment_numbers[i], xrefs[i], V_SETs[i], prestate,
                      Q_quads[i], Q_quad_moss[i], Q_switchConst_IGBTs[i], Q_switchConst_MOSs[i], Q_currentlims[i]);

        }

        if ((round % k2 == 0 && round != 0)) {
            ap_int_4 working_thread_count = 0;
            // find the minimum value
            for (ap_int_4 i = 0; i < THREADNUM; ++i) {
                if (Jmins[i] < minValue) {
                    minValue = Jmins[i];
                    minIndex = i;
                }
                if (states[i] != 2) {
                    working_thread_count += 1;
                }
            }


            // set the minimum value for all Jmin
            for (ap_int_4 i = 0; i < THREADNUM; ++i) {

                Jmins[i] = minValue;
                nextgates[i] = nextgates[minIndex];
            }

            if (working_thread_count <= 0) {
                break;
            }

        }

        round += 1;


    }

    ap_int_4 ans = 0;

    ans = nextgates[minIndex];

    // set the final output value
    *y = ans;
    *J = minValue;
// MODIFY CALCULATIONS BEGIN
    *Calc = round;
// MODIFY CALCULATIONS END
    *allocationCal = allocationround;


    gateT[0] = GATE[ans][0];
    gateT[1] = GATE[ans][1];
    gateT[2] = GATE[ans][2];

    gate[0] = GATE_unzip[ans][0];
    gate[1] = GATE_unzip[ans][1];
    gate[2] = GATE_unzip[ans][2];
    gate[3] = GATE_unzip[ans][3];
    gate[4] = GATE_unzip[ans][4];
    gate[5] = GATE_unzip[ans][5];


}

