//
// Created by s1805689 on 24/05/2022.
//

#include "ap_header.h"


void MPCcore(ap_int_4 *y, float_sp Jin, float_sp *J, float16_t *Calc, ap_int_4 *allocationCal,
             float16_t xref[XNSIZE], float16_t x[XNSIZE], ap_int_2 gateT[3], bool gate[6],
             float16_t v[VNSIZE], float16_t v_abc[3], const ap_int_2 prestate[UNSIZE],
             APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
             APFIX_16_QswConst_MOS Q_switchConst_MOS,
             APFIX_16_Qcur Q_currentlim) {



    float16_t xrefs[THREADNUM][XNSIZE];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < XNSIZE; ++j) {

            xrefs[i][j] = xref[j];
        }
    }


    float16_t Yref[YrefCol] = {0, 0, 0, 0, 0, 0};

    for (ap_int_4 i = 0; i < ACTUALHORIZON; ++i) {
        Yref[0 + N_Y * i] = xref[0];
        Yref[1 + N_Y * i] = xref[1];
        Yref[2 + N_Y * i] = xref[2];
        Yref[3 + N_Y * i] = xref[3];
        Yref[4 + N_Y * i] = xref[4];
        Yref[5 + N_Y * i] = xref[5];
    }


    float16_t Vk[VkCol] = {0, 0, 0};

    for (ap_int_4 i = 0; i < ACTUALHORIZON; ++i) {
        Vk[0 + N_U * i] = v_abc[0];
        Vk[1 + N_U * i] = v_abc[1];
        Vk[2 + N_U * i] = v_abc[2];
    }


    float16_t Xk[N_Y] = {0, 0, 0, 0, 0, 0};

    for (ap_int_4 i = 0; i < N_Y; ++i) {
        Xk[i] = x[i];
    }


    float16_t UpsilonT[UpsilonTRow][UpsilonTCol] =
            {{14.0526219,0.0000000,1.5217313,0.0000000,3.4802493,0.0000000,12.9441535,0.0000000,4.6859762,0.0000000,8.9542287,0.0000000             },
                {-7.0263110,12.1699276,-0.7608657,1.3178580,-1.7401246,3.0139843,-6.4720768,11.2099658,-2.3429881,4.0581745,-4.4771143,7.7545895       },
                {-7.0263110,-12.1699276,-0.7608657,-1.3178580,-1.7401246,-3.0139843,-6.4720768,-11.2099658,-2.3429881,-4.0581745,-4.4771143,-7.7545895 },
                {0.0000000,0.0000000,0.0000000,0.0000000,0.0000000,0.0000000,14.0526219,0.0000000,1.5217313,0.0000000,3.4802493,0.0000000              },
                {0.0000000,0.0000000,0.0000000,0.0000000,0.0000000,0.0000000,-7.0263110,12.1699276,-0.7608657,1.3178580,-1.7401246,3.0139843           },
                {0.0000000,0.0000000,0.0000000,0.0000000,0.0000000,0.0000000,-7.0263110,-12.1699276,-0.7608657,-1.3178580,-1.7401246,-3.0139843        }};




    float16_t Psi[PsiRow][PsiTCol] =
    {{-0.0050724,0.0025362,0.0025362,0.0000000,0.0000000,0.0000000    },
        {0.0000000,-0.0043929,0.0043929,0.0000000,0.0000000,0.0000000    },
        {-0.1244079,0.0622039,0.0622039,0.0000000,0.0000000,0.0000000    },
        {0.0000000,-0.1077404,0.1077404,0.0000000,0.0000000,0.0000000    },
        {0.0331441,-0.0165721,-0.0165721,0.0000000,0.0000000,0.0000000   },
        {0.0000000,0.0287037,-0.0287037,0.0000000,0.0000000,0.0000000    },
        {-0.0156199,0.0078100,0.0078100,-0.0050724,0.0025362,0.0025362   },
        {0.0000000,-0.0135272,0.0135272,0.0000000,-0.0043929,0.0043929   },
        {-0.0942517,0.0471259,0.0471259,-0.1244079,0.0622039,0.0622039   },
        {0.0000000,-0.0816244,0.0816244,0.0000000,-0.1077404,0.1077404   },
        {0.0852708,-0.0426354,-0.0426354,0.0331441,-0.0165721,-0.0165721 },
        {0.0000000,0.0738467,-0.0738467,0.0000000,0.0287037,-0.0287037   }};



    float16_t Gamma[GammaRow][GammaCol] =
            {{0.9257569,0.0000000,0.0741795,0.0000000,-0.0511571,0.0000000 },
        {0.0000000,0.9257569,0.0000000,0.0741795,0.0000000,-0.0511571 },
        {0.2119425,0.0000000,0.7878989,0.0000000,0.1461555,0.0000000  },
        {0.0000000,0.2119425,0.0000000,0.7878989,0.0000000,0.1461555  },
        {0.4520557,0.0000000,-0.4520294,0.0000000,0.9451988,0.0000000 },
        {0.0000000,0.4520557,0.0000000,-0.4520294,0.0000000,0.9451988 },
        {0.8496218,0.0000000,0.1502427,0.0000000,-0.0848710,0.0000000 },
        {0.0000000,0.8496218,0.0000000,0.1502427,0.0000000,-0.0848710 },
        {0.4292670,0.0000000,0.5704399,0.0000000,0.2424594,0.0000000  },
        {0.0000000,0.4292670,0.0000000,0.5704399,0.0000000,0.2424594  },
        {0.7499720,0.0000000,-0.7498778,0.0000000,0.8042084,0.0000000 },
        {0.0000000,0.7499720,0.0000000,-0.7498778,0.0000000,0.8042084 }};



    float16_t lSTE[lSTERow][lSTECol] =
        {{1.0000000,0.0000000,0.0000000 },
        {0.0000000,1.0000000,0.0000000 },
        {0.0000000,0.0000000,1.0000000 },
        {0.0000000,0.0000000,0.0000000 },
        {0.0000000,0.0000000,0.0000000 },
        {0.0000000,0.0000000,0.0000000 }};



    float16_t MinusWinv[MinusWinvRow][MinusWinvCol] =
        {{-0.3350680,-0.3324660,-0.3324660,-0.3315419,-0.3342290,-0.3342290},
        {-0.3324660,-0.3350680,-0.3324660,-0.3342290,-0.3315419,-0.3342290},
        {-0.3324660,-0.3324660,-0.3350680,-0.3342290,-0.3342290,-0.3315419},
        {-0.3315419,-0.3342290,-0.3342290,-0.6706075,-0.6646962,-0.6646962},
        {-0.3342290,-0.3315419,-0.3342290,-0.6646962,-0.6706075,-0.6646962},
        {-0.3342290,-0.3342290,-0.3315419,-0.6646962,-0.6646962,-0.6706075}};



    float16_t H[HRow][HCol] =
            {{1.7275616,0.0000000,0.0000000,0.0000000,0.0000000,0.0000000       },
        {-13.7813657,13.8892228,0.0000000,0.0000000,0.0000000,0.0000000    },
        {-7.9773514,-7.9773514,16.0171360,0.0000000,0.0000000,0.0000000    },
        {0.6132141,-1.1699291,-1.1699291,1.7266442,0.0000000,0.0000000     },
        {-13.0282037,12.9900496,-0.0801803,-12.5377635,12.6560979,0.0000000},
        {-7.5453901,-7.5453901,15.0222459,-7.2613477,-7.2613477,14.5912297 }};



// Unconstrained solution calculation


    float16_t FkTerm1[FkTermCol];
    float16_t FkTerm1_1[FkTerm1_1Col];
    float16_t FkTerm2[FkTermCol];
    float16_t FkTerm2_1[FkTerm2_1Col];
    float16_t FkTerm3[FkTermCol];

    float16_t Fk[FkTermCol];
    float16_t Uunc[UuncCol];
    float16_t UBarUnc[UBarUncCol];


    // Unconstrained FkTerm 1
    for (ap_int_4 i = 0; i < GammaRow; ++i) {

        FkTerm1_1[i] = 0;

        for (ap_int_4 j = 0; j < GammaCol; ++j) {

            FkTerm1_1[i] += Gamma[i][j] * Xk[j];

        }

        FkTerm1_1[i] -= Yref[i];
    }

    for (ap_int_4 i = 0; i < UpsilonTRow; ++i) {

        FkTerm1[i] = 0;

        for (ap_int_4 j = 0; j < UpsilonTCol; ++j) {

            FkTerm1[i] += UpsilonT[i][j] * FkTerm1_1[j];

        }

    }


    // Unconstrained FkTerm 2
    for (ap_int_4 i = 0; i < PsiRow; ++i) {

        FkTerm2_1[i] = 0;

        for (ap_int_4 j = 0; j < PsiTCol; ++j) {

            FkTerm2_1[i] += Psi[i][j] * Vk[j];

        }

    }

    for (ap_int_4 i = 0; i < UpsilonTRow; ++i) {

        FkTerm2[i] = 0;

        for (ap_int_4 j = 0; j < UpsilonTCol; ++j) {

            FkTerm2[i] += UpsilonT[i][j] * FkTerm2_1[j];

        }

    }


    // Unconstrained FkTerm 3

    for (ap_int_4 i = 0; i < lSTERow; ++i) {

        FkTerm3[i] = 0;

        for (ap_int_4 j = 0; j < lSTECol; ++j) {

            FkTerm3[i] += lSTE[i][j] * prestate[j];

        }

    }

    // Unconstrained FkTerm Final

    for (ap_int_4 i = 0; i < FkTermCol; ++i) {

        Fk[i] = 0;
        Fk[i] = FkTerm1[i] + FkTerm2[i] - FkTerm3[i];

    }

    // Unconstrained Uunc

    for (ap_int_4 i = 0; i < MinusWinvRow; ++i) {

        Uunc[i] = 0;

        for (ap_int_4 j = 0; j < MinusWinvCol; ++j) {

            Uunc[i] += MinusWinv[i][j] * Fk[j];

        }

    }

    // Unconstrained UBarUnc

    for (ap_int_4 i = 0; i < HRow; ++i) {

        UBarUnc[i] = 0;

        for (ap_int_4 j = 0; j < HCol; ++j) {

            UBarUnc[i] += H[i][j] * Uunc[j];

        }

    }


    float16_t UBarUncs[THREADNUM][UBarUncCol];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < UBarUncCol; ++j) {

            UBarUncs[i][j] = UBarUnc[j];
        }
    }


    float16_t Uks[THREADNUM][HORIZON];


// Initial Radius of Sphere (Squared value)

    float16_t Uini[HORIZON];

    for (ap_int_4 i = 0; i < HORIZON; ++i) {
        Uini[i] = 0;
    }

    for (ap_int_4 i = 0; i < UNSIZE; ++i) {
        Uini[i] = prestate[i];
    }

    float16_t Uini2[HORIZON];

    for (ap_int_4 i = 0; i < HRow; ++i) {
        for (ap_int_4 j = 0; j < HCol; ++j) {
             Uini2[i] += H[i][j] * Uini[i];
        }

    }

    float_sp Rs2 = 0;
    for (ap_int_4 i = 0; i < UBarUncCol; ++i) {
        Rs2 = Rs2 + (UBarUnc[i] - Uini2[i]) * (UBarUnc[i] - Uini2[i]);
    }



    float16_t vs[THREADNUM][VNSIZE];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < VNSIZE; ++j) {

            vs[i][j] = v[j];
        }
    }

    float_sp Jmins[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        Jmins[i] = Rs2;
    }


    float_sp SDAJmins[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        SDAJmins[i] = Rs2;
    }


    float16_t CalcNums[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        CalcNums[i] = 0;
    }
    ap_int_4 nextgates[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        nextgates[i] = 0;
    }

    ap_int_4 SDAnextgates[THREADNUM][3];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < 3; ++j) {

            SDAnextgates[i][j] = 0;
        }

    }

// MODIFY STATES BEGIN
ap_int_4 states[THREADNUM] ={0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
// MODIFY STATES END



    float16_t xn_currents[THREADNUM][XNSIZE];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (ap_int_4 j = 0; j < XNSIZE; ++j) {

            xn_currents[i][j] = x[j];
        }
    }

    float16_t xn_visiteds[THREADNUM][HORIZON][XNSIZE];     //make xs to be the zero number

    ap_int_4 indexs[THREADNUM]; // all index begin from worker

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        indexs[i] = 0;
    }

    ap_int_4 INIT_indexs[THREADNUM];

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        INIT_indexs[i] = 0;
    }



// MODIFY BRANCHS BEGIN
ap_int_4 branchs[THREADNUM] = {0, 1, 2};
// MODIFY BRANCHS END


// MODIFY INIT_BRANCHS BEGIN
ap_int_4 INIT_branchs[THREADNUM] = {0, 1, 2};
// MODIFY INIT_BRANCHS END


// MODIFY LOCATIONS BEGIN
ap_int_4 locations[THREADNUM][HORIZON] = {{0, 0, 0, 0, 0, 0},{1, 0, 0, 0, 0, 0},{2, 0, 0, 0, 0, 0}};;
// MODIFY LOCATIONS END

    for (ap_int_4 i = 0; i < THREADNUM; ++i) {

        for (int j = 0; j < HORIZON; ++j) {
            Uks[i][j] = locations[i][j] - 1;
        }

    }


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

    ap_int_4 HelperQueue[THREADNUM];

// MODIFY ASSIGNMENTLISTS BEGIN
ap_int_4 assignmentLists[THREADNUM] = {1, 2, 3};
// MODIFY ASSIGNMENTLISTS END



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


    float_sp minValue = 8000000;
    ap_int_4 minIndex = 0;


    // begin the while loop
    int round = 0;
    int allocationround = 0;


    ap_int_4 k1 = 1;
    ap_int_4 k2 = 1;
    ap_int_4 k3 = 8;

    MPCcore_MainWhile:

    while (true) {

        ap_int_4 helper_number = 0;
        ap_int_4 worker_task_total_number = 0;
        ap_int_4 helper_task_div_number = 1;
        if (WorkerAllocationFrequency(states, indexs, locations, helper_task_div_number) && round > k1 && round % k3 == 0) {

            allocationround += 1;
// MODIFY GETHELPERLIST BEGIN
ap_int_4 getHelperList[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
// MODIFY GETHELPERLIST END

// MODIFY GETWORKERLIST BEGIN
ap_int_4 getWokerList[THREADNUM] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
// MODIFY GETWORKERLIST END

            MPCallocate_0627(states, xn_currents, xn_visiteds, indexs, INIT_indexs, branchs, INIT_branchs, locations,
                             J_currents, J_visiteds, helpedLists, HelperQueue, assignmentLists, getHelperList,
                             getWokerList, &helper_number, &worker_task_total_number);

            matchFunction_0627(states, xn_currents, xn_visiteds, indexs, INIT_indexs, branchs, INIT_branchs, locations,
                               J_currents, J_visiteds, helpedLists, HelperQueue, assignmentLists, getHelperList,
                               getWokerList, &helper_number, &worker_task_total_number, helper_assignment_numbers,
                               helper_task_div_number, Uks);

        }


        for (ap_int_4 i = 0; i < THREADNUM; ++i) {

            MPCthread(&Jmins[i], &CalcNums[i], SDAnextgates[i], &states[i], xn_currents[i], xn_visiteds[i],
                      &indexs[i], INIT_indexs[i], &branchs[i], INIT_branchs[i], locations[i], &J_currents[i],
                      J_visiteds[i],
                      helpedLists[i], assignmentLists[i], helper_assignment_numbers[i], xrefs[i], V_SETs[i], prestate,
                      Q_quads[i], Q_quad_moss[i], Q_switchConst_IGBTs[i], Q_switchConst_MOSs[i], Q_currentlims[i],
                      Uks[i], UBarUncs[i]);

        }




        if ((round % k2 == 0 && round != 0)) {
            ap_int_4 working_thread_count = 0;
            // find the minimum value
            for (ap_int_4 i = 0; i < THREADNUM; ++i) {
                if (Jmins[i] < minValue) {
                    minValue = Jmins[i];
                    minIndex = i;
                }
                if (states[i] != 2){
                    working_thread_count += 1;
                }
            }

            // set the minimum value for all Jmin
            for (ap_int_4 i = 0; i < THREADNUM; ++i) {

                Jmins[i] = minValue;
                SDAnextgates[i][0] = SDAnextgates[minIndex][0];
                SDAnextgates[i][1] = SDAnextgates[minIndex][1];
                SDAnextgates[i][2] = SDAnextgates[minIndex][2];
            }

            if (working_thread_count <= 0){
                break;
            }

        }

        round += 1;


    }

    ap_int_4 ans = 0;



    // set the final output value
    *y = ans;
    *J = minValue;
// MODIFY CALCULATIONS BEGIN
    *Calc = round;
// MODIFY CALCULATIONS END
    *allocationCal = allocationround - 2;


    gateT[0] = SDAnextgates[0][0];
    gateT[1] = SDAnextgates[0][1];
    gateT[2] = SDAnextgates[0][2];

    gate[0] = GATE_unzip[ans][0];
    gate[1] = GATE_unzip[ans][1];
    gate[2] = GATE_unzip[ans][2];
    gate[3] = GATE_unzip[ans][3];
    gate[4] = GATE_unzip[ans][4];
    gate[5] = GATE_unzip[ans][5];



}

