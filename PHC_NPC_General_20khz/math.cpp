//
// Created by s1805689 on 24/05/2022.
//

#include "ap_header.h"


float_sp JcalcValue(float16_t xref[], float16_t xn_current[], ap_int_2 previous_state[], ap_int_2 current_state[],
                    APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
                    APFIX_16_QswConst_MOS Q_switchConst_MOS,
                    APFIX_16_Qcur Q_currentlim, float16_t CL) {

    APFIX_32_Qq Qq = 0;
    APFIX_32_QswConst QswConst = 0;

    APFIX_32_Qq temp_0 = xref[0] - xn_current[0];
    APFIX_32_Qq temp_1 = xref[1] - xn_current[1];
    APFIX_32_Qq temp_2 = xref[2] - xn_current[2];
    APFIX_32_Qq temp_3 = xref[3] - xn_current[3];
    APFIX_32_Qq temp_4 = xref[4] - xn_current[4];
    APFIX_32_Qq temp_5 = xref[5] - xn_current[5];

    Qq = (temp_0 * temp_0 * Q_quad + temp_3 * temp_3 * Q_quad + temp_1 * temp_1 + temp_4 * temp_4);

    for (ap_int_4 i = 0; i < 3; ++i) {

        if (previous_state[i] != current_state[i]) {
            QswConst = QswConst + Q_switchConst_IGBT;
        }
    }

    float_sp Jcalc = Qq + QswConst;

    return Jcalc;
}

void statespace(float16_t xn_current[], float16_t u[], float16_t v[]) {

    float16_t Aterm[XNSIZE] = {0, 0, 0, 0, 0, 0};

    float16_t Bterm[XNSIZE] = {0, 0, 0, 0, 0, 0};

    float16_t Eterm[XNSIZE] = {0, 0, 0, 0, 0, 0};


    float16_h_t Amatrix[XNSIZE][XNSIZE] = {{0.9206, 0.0793,  -0.0507, 0,      0,       0},
                                           {0.2266, 0.7733,  0.1450,  0,      0,       0},
                                           {0.6278, -0.6277, 0.9236,  0,      0,       0},
                                           {0,      0,       0,       0.9206, 0.0793,  -0.0507},
                                           {0,      0,       0,       0.2266, 0.7733,  0.1450},
                                           {0,      0,       0,       0.6278, -0.6277, 0.9236}};



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

    for (ap_int_4 i = 0; i < XNSIZE; ++i) {

        xn_current[i] = Aterm[i] + Bterm[i] + Eterm[i];
    }

}
