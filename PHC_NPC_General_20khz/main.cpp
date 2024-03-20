#include "ap_header.h"
#include <sstream>

void single_mpctest() {

    float16_t xref[6] = {0, 0, 0, 0, 0, 0};
    float16_t v[2] = {-0, -172.496595};
    float16_t x[6] = {-0.000490046, -3.00995772, -0.026273066, 0.039731878, 0.078585944, -141.1882254};
    ap_int_2 prestate[3] = {0, 0, 0};

    ap_int_4 y = -1;
    float_sp J = -1;
    float16_t Calc = -1;
    ap_int_4 allocationCal = -1;
    float_sp Jin = 8000;

    APFIX_16_Qquad Q_quad = 1;
    APFIX_16_Qquadmos Q_quad_mos = 0.001;
    APFIX_16_QswConst_IGBT Q_switchConst_IGBT = 10;
    APFIX_16_QswConst_MOS Q_switchConst_MOS = 0;
    APFIX_16_Qcur Q_currentlim = 8000;

    ap_int_2 gateT[3];
    bool gate_unzip[6];

    MPCcore(&y, Jin, &J, &Calc, &allocationCal, xref, x, gateT, gate_unzip,
            v, prestate,
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

int main() {

    single_mpctest();

    return 0;
}

