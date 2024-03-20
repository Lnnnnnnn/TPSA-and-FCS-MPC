#include "ap_header.h"
#include <fstream>
#include <ctime>
#include <sstream>

void single_mpctest(){

    float16_t xref[6] = {-24.48088633,	63.57125338	,-74.48088633	,63.57125338	,-127.2763545,	116.5934351};
    float16_t v[2] = {0	,-172.496595};
    float16_t v_abc[3] = {-107.0998803,	132.7669632,	-25.6670829};
    float16_t x[6] = {-63.90672627,	63.03411677,	-60.87614875,	68.08514094	,-137.4559284	,107.310809};
    ap_int_2 prestate[3] = {-1	,1	,0};

    ap_int_4 y = -1;
    float_sp J = -1;
    float16_t Calc = -1;
    ap_int_4 allocationCal = -1;
    float_sp Jin = 8000;

    APFIX_16_Qquad Q_quad = 1;
    APFIX_16_Qquadmos Q_quad_mos = 0.001;
    APFIX_16_QswConst_IGBT Q_switchConst_IGBT = 0;
    APFIX_16_QswConst_MOS Q_switchConst_MOS = 0;
    APFIX_16_Qcur Q_currentlim = 8000;

    ap_int_2 gateT[3];
    bool gate_unzip[6];

    MPCcore(&y,Jin, &J,&Calc,&allocationCal, xref,x, gateT, gate_unzip,
            v,v_abc,prestate,
            Q_quad, Q_quad_mos,
            Q_switchConst_IGBT,
            Q_switchConst_MOS, Q_currentlim);

    cout << y << endl;
    cout << J << endl;
    cout << Calc << endl;
    cout << allocationCal << endl;

    for (int i = 0; i < 3; ++i) {
        cout << gateT[i] << endl;
    }

}

int main()
{

    single_mpctest();

    return 0;
}

