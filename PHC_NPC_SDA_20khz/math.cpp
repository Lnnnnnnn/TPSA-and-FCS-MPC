
#include "ap_header.h"


void JcalcValue_SDA(ap_int_4 index, float16_t Uk[UkCol], float16_t UBarUnc[UBarUncCol], float_sp J_visited[JvisitedCol]) {





    float16_t H[HRow][HCol] =
            {{1.7275616,0.0000000,0.0000000,0.0000000,0.0000000,0.0000000       },
             {-13.7813657,13.8892228,0.0000000,0.0000000,0.0000000,0.0000000    },
             {-7.9773514,-7.9773514,16.0171360,0.0000000,0.0000000,0.0000000    },
             {0.6132141,-1.1699291,-1.1699291,1.7266442,0.0000000,0.0000000     },
             {-13.0282037,12.9900496,-0.0801803,-12.5377635,12.6560979,0.0000000},
             {-7.5453901,-7.5453901,15.0222459,-7.2613477,-7.2613477,14.5912297 }};


#pragma HLS ARRAY_PARTITION dim=2 type=complete variable=H
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=H


    float_sp JCurrent = 0;

    for (ap_int_4 i = 0; i < HRow; ++i) {
#pragma HLS PIPELINE off
        JCurrent += H[index][i] * Uk[i];
    }

//    cout << JCurrent;

    JCurrent -= UBarUnc[index];

//    cout << JCurrent;

    JCurrent = JCurrent * JCurrent;


    if (index == 0) {

        J_visited[index] = JCurrent;

    } else {

        J_visited[index] = JCurrent + J_visited[index - 1];

    }

}








float_sp JcalcValue(float16_t xref[], float16_t xn_current[], ap_int_2 previous_state[], ap_int_2 current_state[],
                    APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
                    APFIX_16_QswConst_MOS Q_switchConst_MOS,
                    APFIX_16_Qcur Q_currentlim, float16_t CL) {

    APFIX_32_Qq Qq = 0;
    APFIX_32_Qsw Qsw = 0; // for J current doest matter
    APFIX_32_QswConst QswConst = 0;
    APFIX_32_Qcur Qcur = 0;

//    float16_h_t T_alphabeta_to_abc_2[3][3] = {
//            {0.8165,  -0.0000, 0.5774},
//            {-0.4082, 0.7071,  0.5774},
//            {-0.4082, -0.7071, 0.5774}};
//#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=T_alphabeta_to_abc_2
//#pragma HLS ARRAY_PARTITION dim=2 type=complete variable=T_alphabeta_to_abc_2
//
//    float16_t xnHF_abr[3] = {xn_current[1],xn_current[3],xn_current[4]};
//#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=xnHF_abr
//
//    float16_t xnHF_abc[3] = {0,0,0};
//#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=xnHF_abc
//
//    mulvector3x3(T_alphabeta_to_abc_2,xnHF_abr,xnHF_abc);

//    float16_t xn_abc_current[3] = {xnHF_abc[0],xnHF_abc[1],xnHF_abc[2]};
//#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=xn_abc_current

    APFIX_32_Qq temp_0 = xref[0] - xn_current[0];
    APFIX_32_Qq temp_1 = xref[1] - xn_current[1];
    APFIX_32_Qq temp_2 = xref[2] - xn_current[2];
    APFIX_32_Qq temp_3 = xref[3] - xn_current[3];
    APFIX_32_Qq temp_4 = xref[4] - xn_current[4];
    APFIX_32_Qq temp_5 = xref[5] - xn_current[5];

//    Qq = (temp_0 * temp_0 + temp_1 * temp_1 + temp_2 * temp_2 + temp_3 * temp_3 + temp_4 * temp_4 + temp_5 * temp_5);
    Qq = (temp_0 * temp_0 + temp_3 * temp_3 + temp_1 * temp_1 + temp_4 * temp_4);
//    loop_region:
//    {
//#pragma HLS LOOP_MERGE

    for (ap_int_4 i = 0; i < 3; ++i) {
#pragma HLS PIPELINE off
//#pragma HLS UNROLL
        if (previous_state[i] != current_state[i]) {
            QswConst = QswConst + Q_switchConst_IGBT;
        }
    }

//    for (ap_int_4 i = 3; i < 6; ++i) {
//        if (previous_state[i] != current_state[i]) {
//            QswConst = QswConst + Q_switchConst_MOS;
//        }
//    }

//    for (ap_int_4 i = 0; i < 3; ++i) {
////#pragma HLS UNROLL
//        if (xn_abc_current[i] >= 0) {
//            Qcur += Q_currentlim * (xn_abc_current[i] > CL);
//        } else {
//            Qcur += Q_currentlim * ((-xn_abc_current[i]) > CL);
//        }
//    }

//    float16_t xn_abc_current_pos[3] = {0, 0, 0};
//
//    for (ap_int_4 i = 0; i < 3; ++i) {
//#pragma HLS UNROLL
//        xn_abc_current_pos[i] = xn_abc_current[i];
////        xn_abc_current_pos[i] = abs(xn_abc_current[i]);
//    }

//    for (ap_int_4 i = 0; i < 3; ++i) {
////#pragma HLS PIPELINE
////#pragma HLS UNROLL
//        if (xn_abc_current_pos[i] > CL) {
//            Qcur = Qcur + Q_currentlim;
//        }
//        if (xn_abc_current_pos[i] < -CL) {
//            Qcur = Qcur + Q_currentlim;
//        }
//    }

//    }

    float_sp Jcalc = Qq + QswConst;
//    float_sp Jcalc;

//    if (temp > 8000){
//        Jcalc = 8000;
//    } else{
//        Jcalc = temp;
//    }

    return Jcalc;
}

void statespace(float16_t xn_current[], float16_t u[], float16_t v[]) {

    float16_t Aterm[XNSIZE] = {0, 0, 0, 0, 0, 0};
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=Aterm
    float16_t Bterm[XNSIZE] = {0, 0, 0, 0, 0, 0};
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=Bterm
    float16_t Eterm[XNSIZE] = {0, 0, 0, 0, 0, 0};


#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=Eterm
    float16_h_t Amatrix[XNSIZE][XNSIZE] = {{0.9206, 0.0793,  -0.0507, 0,      0,       0},
                                           {0.2266, 0.7733,  0.1450,  0,      0,       0},
                                           {0.6278, -0.6277, 0.9236,  0,      0,       0},
                                           {0,      0,       0,       0.9206, 0.0793,  -0.0507},
                                           {0,      0,       0,       0.2266, 0.7733,  0.1450},
                                           {0,      0,       0,       0.6278, -0.6277, 0.9236}};
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=Amatrix


//Aterm
    Aterm[0] = xn_current[0] * Amatrix[0][0] + xn_current[1] * Amatrix[0][1] + xn_current[2] * Amatrix[0][2];
    Aterm[1] = xn_current[0] * Amatrix[1][0] + xn_current[1] * Amatrix[1][1] + xn_current[2] * Amatrix[1][2];
    Aterm[2] = xn_current[0] * Amatrix[2][0] + xn_current[1] * Amatrix[2][1] + xn_current[2] * Amatrix[2][2];
    Aterm[3] = xn_current[3] * Amatrix[3][3] + xn_current[4] * Amatrix[3][4] + xn_current[5] * Amatrix[3][5];
    Aterm[4] = xn_current[3] * Amatrix[4][3] + xn_current[4] * Amatrix[4][4] + xn_current[5] * Amatrix[4][5];
    Aterm[5] = xn_current[3] * Amatrix[5][3] + xn_current[4] * Amatrix[5][4] + xn_current[5] * Amatrix[5][5];


//Bterm
    Bterm[0] = u[0];
    Bterm[1] = u[1];
    Bterm[2] = u[2];
    Bterm[3] = u[3];
    Bterm[4] = u[4];
    Bterm[5] = u[5];

//Eterm
    Eterm[0] = v[0];
    Eterm[1] = v[1];
    Eterm[2] = v[2];
    Eterm[3] = v[3];
    Eterm[4] = v[4];
    Eterm[5] = v[5];

//    cout << "Bterm " << Bterm[0] << endl;
//    cout << "Bterm " << Bterm[1] << endl;
//    cout << "Bterm " << Bterm[2] << endl;
//    cout << "Bterm " << Bterm[3] << endl;
//    cout << "Bterm " << Bterm[4] << endl;
//    cout << " ------ "  << endl;


    for (ap_int_4 i = 0; i < XNSIZE; ++i) {
#pragma HLS UNROLL
        xn_current[i] = Aterm[i] + Bterm[i] + Eterm[i];
    }

}
