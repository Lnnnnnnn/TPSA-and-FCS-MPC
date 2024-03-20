//
// Created by s1805689 on 25/04/2022.
//
#ifndef PHC_DFS_PARALLEL_AP_HEADER_H
#define PHC_DFS_PARALLEL_AP_HEADER_H

#include <ap_fixed.h>
#include <ap_int.h>
#include "hls_vector.h"
#include "vector"
#include <queue>
#include <iostream>

using namespace std;
//
//typedef ap_fixed<16, 2> float16_h_t;
//typedef ap_fixed<32, 16> float16_t;
//typedef ap_int<3> ap_int_2;
//typedef ap_int<8> ap_int_4;
//typedef ap_fixed<32, 24> float_sp;
////typedef ap_fixed<32, 16> float32_t;
//
//typedef ap_fixed<32, 24> APFIX_32_Qq;
//typedef ap_fixed<32, 24> APFIX_32_Qsw;
//typedef ap_fixed<32, 24> APFIX_32_QswConst;
//typedef ap_fixed<32, 24> APFIX_32_Qcur;
//
//typedef ap_fixed<4, 2> APFIX_16_Qquad;
//typedef ap_fixed<8, 2> APFIX_16_Qquadmos;
//typedef ap_fixed<10, 8> APFIX_16_QswConst_IGBT;
//typedef ap_fixed<8, 6> APFIX_16_QswConst_MOS;
//typedef ap_int<16> APFIX_16_Qcur;
//
typedef float float16_h_t;
typedef float float16_t;
typedef int ap_int_2;
typedef int ap_int_4;
typedef float float_sp;

typedef float  APFIX_32_Qq;
typedef float  APFIX_32_Qsw;
typedef float  APFIX_32_QswConst;
typedef float  APFIX_32_Qcur;

typedef float APFIX_16_Qquad;
typedef float APFIX_16_Qquadmos;
typedef float APFIX_16_QswConst_IGBT;
typedef float APFIX_16_QswConst_MOS;
typedef float APFIX_16_Qcur;


const short N_U = 3;
const short N_Y = 6;
const short HORIZON = 6; // TREE HORIZON
const short ACTUALHORIZON = 2; // ACTUAL HORIZON


const short Umin = -1;

const short YrefCol = N_Y * ACTUALHORIZON;
const short VkCol = N_U * ACTUALHORIZON;

const short FkTermCol = N_U * ACTUALHORIZON; // 12
const short FkTerm1_1Col =  N_Y * ACTUALHORIZON; // 24
const short FkTerm2_1Col = N_Y * ACTUALHORIZON;

const short UuncCol = N_U * ACTUALHORIZON;
const short UkCol = N_U * ACTUALHORIZON;
const short UBarUncCol = N_U * ACTUALHORIZON;

const short JvisitedCol = N_U * ACTUALHORIZON;





const short UpsilonTRow = N_U * ACTUALHORIZON; // 12
const short UpsilonTCol = N_Y * ACTUALHORIZON; // 24

const short PsiRow = N_Y * ACTUALHORIZON; // 24
const short PsiTCol = N_U * ACTUALHORIZON; // 12

const short GammaRow = N_Y * ACTUALHORIZON;
const short GammaCol = N_Y;

const short lSTERow = N_U * ACTUALHORIZON; // 12
const short lSTECol = N_U;           // 3

const short MinusWinvRow = N_U * ACTUALHORIZON;
const short MinusWinvCol = N_U * ACTUALHORIZON;

const short HRow = N_U * ACTUALHORIZON; // 12
const short HCol = N_U * ACTUALHORIZON; // 12


const short XNSIZE = 6;
const short UNSIZE = 3;
const short VNSIZE = 2;

const short GATESIZE = 2;
const short SDAGATESIZE = 2;

// MODIFY HORIZON BEGIN
//const short HORIZON = 3;
// MODIFY HORIZON END

// MODIFY THREADNUM BEGIN
const short THREADNUM = 16;
// MODIFY THREADNUM END



//Math Function
//void multimartix (float16_t a[N][P], float16_ t b[P][M], float16_t out[N][M]);

float_sp JcalcValue(float16_t xref[], float16_t xn_current[], ap_int_2 previous_state[], ap_int_2 current_state[],
                    APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
                    APFIX_16_QswConst_MOS Q_switchConst_MOS,
                    APFIX_16_Qcur Q_currentlim, float16_t CL);


void JcalcValue_SDA(ap_int_4 index, float16_t Uk[UkCol], float16_t UBarUnc[UBarUncCol], float_sp J_visited[JvisitedCol]);

void statespace(float16_t xn_current[], float16_t u[], float16_t v[]);


//Thread Function

void ThreadPE (float_sp *Jmin, float16_t *CalcNum, ap_int_4 nextgate[], ap_int_4 *state, float16_t xn_current[],
               float16_t xn_visited[][XNSIZE],
               ap_int_4 *index, const ap_int_4 &INIT_index, ap_int_4 *branch, const ap_int_4 &INIT_branch,
               ap_int_4 location[],
               float_sp *J_current, float_sp J_visited[],
               ap_int_4 helpedList[], const ap_int_4 &assignmentList, ap_int_4 helper_assignment_number, const ap_int_2 prestate[],
               float16_t xref[], float16_t U_SET[][27], ap_int_2 GATE[][UNSIZE],
               float16_t v[],
               APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
               APFIX_16_QswConst_MOS Q_switchConst_MOS,
               APFIX_16_Qcur Q_currentlim, float16_t CL,
               float16_t Uk[], float16_t UBarUnc[]);



void MPCthread(float_sp *Jmin, float16_t *CalcNum, ap_int_4 nextgate[], ap_int_4 *state, float16_t xn_current[],
               float16_t xn_visited[][XNSIZE],
               ap_int_4 *index, ap_int_4 INIT_index, ap_int_4 *branch, ap_int_4 INIT_branch, ap_int_4 location[],
               float_sp *J_current, float_sp J_visited[],
               ap_int_4 helpedList[], ap_int_4 assignmentList, ap_int_4 helper_assignment_number,
               float16_t xref[],  float16_t v[], const ap_int_2 prestate[],
               APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
               APFIX_16_QswConst_MOS Q_switchConst_MOS,
               APFIX_16_Qcur Q_currentlim,
               float16_t Uk[], float16_t UBarUnc[]);


bool WorkerAllocationFrequency(ap_int_4 states[THREADNUM], ap_int_4 indexs[THREADNUM], ap_int_4 locations[][HORIZON], ap_int_4 helper_task_div_number);


void MPCallocate_0627(ap_int_4 states[], float16_t xn_currents[][XNSIZE], float16_t xn_visiteds[][HORIZON][XNSIZE],
                      ap_int_4 indexs[], ap_int_4 INIT_indexs[], ap_int_4 branchs[], ap_int_4 INIT_branchs[],
                      ap_int_4 locations[][HORIZON],
                      float_sp J_currents[], float_sp J_visiteds[][HORIZON],
                      ap_int_4 helpedLists[][HORIZON], ap_int_4 HelperQueue[THREADNUM], ap_int_4 assignmentLists[],
                      ap_int_4 getHelperList[THREADNUM], ap_int_4 getWokerList[THREADNUM], ap_int_4 *helper_number,
                      ap_int_4 *worker_task_total_number);

void matchFunction_0627(ap_int_4 states[], float16_t xn_currents[][XNSIZE], float16_t xn_visiteds[][HORIZON][XNSIZE],
                        ap_int_4 indexs[], ap_int_4 INIT_indexs[], ap_int_4 branchs[], ap_int_4 INIT_branchs[],
                        ap_int_4 locations[][HORIZON],
                        float_sp J_currents[], float_sp J_visiteds[][HORIZON],
                        ap_int_4 helpedLists[][HORIZON], ap_int_4 HelperQueue[THREADNUM], ap_int_4 assignmentLists[],
                        ap_int_4 getHelperList[THREADNUM], ap_int_4 getWokerList[THREADNUM], ap_int_4 *helper_number,
                        ap_int_4 *worker_task_total_number, ap_int_4 helper_assignment_numbers[THREADNUM],
                        ap_int_4 helper_task_div_number,
                        float16_t Uks[THREADNUM][HORIZON]);


void MPCcore(ap_int_4 *y, float_sp Jin, float_sp *J, float16_t *Calc, ap_int_4  *allocationCal,
             float16_t xref[XNSIZE], float16_t x[XNSIZE], ap_int_2 gateT[3], bool gate_unzip[6],
             float16_t v[VNSIZE], float16_t v_abc[3], const ap_int_2 prestate[UNSIZE],
             APFIX_16_Qquad Q_quad, APFIX_16_Qquadmos Q_quad_mos, APFIX_16_QswConst_IGBT Q_switchConst_IGBT,
             APFIX_16_QswConst_MOS Q_switchConst_MOS,
             APFIX_16_Qcur Q_currentlim);


#endif //PHC_DFS_PARALLEL_AP_HEADER_H
