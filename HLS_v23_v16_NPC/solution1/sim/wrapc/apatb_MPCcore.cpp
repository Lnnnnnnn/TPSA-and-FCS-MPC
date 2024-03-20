#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_y "../tv/cdatafile/c.MPCcore.autotvin_y.dat"
#define AUTOTB_TVOUT_y "../tv/cdatafile/c.MPCcore.autotvout_y.dat"
#define AUTOTB_TVIN_Jin "../tv/cdatafile/c.MPCcore.autotvin_Jin.dat"
#define AUTOTB_TVOUT_Jin "../tv/cdatafile/c.MPCcore.autotvout_Jin.dat"
#define AUTOTB_TVIN_J "../tv/cdatafile/c.MPCcore.autotvin_J.dat"
#define AUTOTB_TVOUT_J "../tv/cdatafile/c.MPCcore.autotvout_J.dat"
#define AUTOTB_TVIN_Calc "../tv/cdatafile/c.MPCcore.autotvin_Calc.dat"
#define AUTOTB_TVOUT_Calc "../tv/cdatafile/c.MPCcore.autotvout_Calc.dat"
#define AUTOTB_TVIN_allocationCal "../tv/cdatafile/c.MPCcore.autotvin_allocationCal.dat"
#define AUTOTB_TVOUT_allocationCal "../tv/cdatafile/c.MPCcore.autotvout_allocationCal.dat"
#define AUTOTB_TVIN_xref_0 "../tv/cdatafile/c.MPCcore.autotvin_xref_0.dat"
#define AUTOTB_TVOUT_xref_0 "../tv/cdatafile/c.MPCcore.autotvout_xref_0.dat"
#define AUTOTB_TVIN_xref_1 "../tv/cdatafile/c.MPCcore.autotvin_xref_1.dat"
#define AUTOTB_TVOUT_xref_1 "../tv/cdatafile/c.MPCcore.autotvout_xref_1.dat"
#define AUTOTB_TVIN_xref_2 "../tv/cdatafile/c.MPCcore.autotvin_xref_2.dat"
#define AUTOTB_TVOUT_xref_2 "../tv/cdatafile/c.MPCcore.autotvout_xref_2.dat"
#define AUTOTB_TVIN_xref_3 "../tv/cdatafile/c.MPCcore.autotvin_xref_3.dat"
#define AUTOTB_TVOUT_xref_3 "../tv/cdatafile/c.MPCcore.autotvout_xref_3.dat"
#define AUTOTB_TVIN_xref_4 "../tv/cdatafile/c.MPCcore.autotvin_xref_4.dat"
#define AUTOTB_TVOUT_xref_4 "../tv/cdatafile/c.MPCcore.autotvout_xref_4.dat"
#define AUTOTB_TVIN_xref_5 "../tv/cdatafile/c.MPCcore.autotvin_xref_5.dat"
#define AUTOTB_TVOUT_xref_5 "../tv/cdatafile/c.MPCcore.autotvout_xref_5.dat"
#define AUTOTB_TVIN_x_0 "../tv/cdatafile/c.MPCcore.autotvin_x_0.dat"
#define AUTOTB_TVOUT_x_0 "../tv/cdatafile/c.MPCcore.autotvout_x_0.dat"
#define AUTOTB_TVIN_x_1 "../tv/cdatafile/c.MPCcore.autotvin_x_1.dat"
#define AUTOTB_TVOUT_x_1 "../tv/cdatafile/c.MPCcore.autotvout_x_1.dat"
#define AUTOTB_TVIN_x_2 "../tv/cdatafile/c.MPCcore.autotvin_x_2.dat"
#define AUTOTB_TVOUT_x_2 "../tv/cdatafile/c.MPCcore.autotvout_x_2.dat"
#define AUTOTB_TVIN_x_3 "../tv/cdatafile/c.MPCcore.autotvin_x_3.dat"
#define AUTOTB_TVOUT_x_3 "../tv/cdatafile/c.MPCcore.autotvout_x_3.dat"
#define AUTOTB_TVIN_x_4 "../tv/cdatafile/c.MPCcore.autotvin_x_4.dat"
#define AUTOTB_TVOUT_x_4 "../tv/cdatafile/c.MPCcore.autotvout_x_4.dat"
#define AUTOTB_TVIN_x_5 "../tv/cdatafile/c.MPCcore.autotvin_x_5.dat"
#define AUTOTB_TVOUT_x_5 "../tv/cdatafile/c.MPCcore.autotvout_x_5.dat"
#define AUTOTB_TVIN_gateT_0 "../tv/cdatafile/c.MPCcore.autotvin_gateT_0.dat"
#define AUTOTB_TVOUT_gateT_0 "../tv/cdatafile/c.MPCcore.autotvout_gateT_0.dat"
#define AUTOTB_TVIN_gateT_1 "../tv/cdatafile/c.MPCcore.autotvin_gateT_1.dat"
#define AUTOTB_TVOUT_gateT_1 "../tv/cdatafile/c.MPCcore.autotvout_gateT_1.dat"
#define AUTOTB_TVIN_gateT_2 "../tv/cdatafile/c.MPCcore.autotvin_gateT_2.dat"
#define AUTOTB_TVOUT_gateT_2 "../tv/cdatafile/c.MPCcore.autotvout_gateT_2.dat"
#define AUTOTB_TVIN_gate_0 "../tv/cdatafile/c.MPCcore.autotvin_gate_0.dat"
#define AUTOTB_TVOUT_gate_0 "../tv/cdatafile/c.MPCcore.autotvout_gate_0.dat"
#define AUTOTB_TVIN_gate_1 "../tv/cdatafile/c.MPCcore.autotvin_gate_1.dat"
#define AUTOTB_TVOUT_gate_1 "../tv/cdatafile/c.MPCcore.autotvout_gate_1.dat"
#define AUTOTB_TVIN_gate_2 "../tv/cdatafile/c.MPCcore.autotvin_gate_2.dat"
#define AUTOTB_TVOUT_gate_2 "../tv/cdatafile/c.MPCcore.autotvout_gate_2.dat"
#define AUTOTB_TVIN_gate_3 "../tv/cdatafile/c.MPCcore.autotvin_gate_3.dat"
#define AUTOTB_TVOUT_gate_3 "../tv/cdatafile/c.MPCcore.autotvout_gate_3.dat"
#define AUTOTB_TVIN_gate_4 "../tv/cdatafile/c.MPCcore.autotvin_gate_4.dat"
#define AUTOTB_TVOUT_gate_4 "../tv/cdatafile/c.MPCcore.autotvout_gate_4.dat"
#define AUTOTB_TVIN_gate_5 "../tv/cdatafile/c.MPCcore.autotvin_gate_5.dat"
#define AUTOTB_TVOUT_gate_5 "../tv/cdatafile/c.MPCcore.autotvout_gate_5.dat"
#define AUTOTB_TVIN_v_0 "../tv/cdatafile/c.MPCcore.autotvin_v_0.dat"
#define AUTOTB_TVOUT_v_0 "../tv/cdatafile/c.MPCcore.autotvout_v_0.dat"
#define AUTOTB_TVIN_v_1 "../tv/cdatafile/c.MPCcore.autotvin_v_1.dat"
#define AUTOTB_TVOUT_v_1 "../tv/cdatafile/c.MPCcore.autotvout_v_1.dat"
#define AUTOTB_TVIN_prestate_0 "../tv/cdatafile/c.MPCcore.autotvin_prestate_0.dat"
#define AUTOTB_TVOUT_prestate_0 "../tv/cdatafile/c.MPCcore.autotvout_prestate_0.dat"
#define AUTOTB_TVIN_prestate_1 "../tv/cdatafile/c.MPCcore.autotvin_prestate_1.dat"
#define AUTOTB_TVOUT_prestate_1 "../tv/cdatafile/c.MPCcore.autotvout_prestate_1.dat"
#define AUTOTB_TVIN_prestate_2 "../tv/cdatafile/c.MPCcore.autotvin_prestate_2.dat"
#define AUTOTB_TVOUT_prestate_2 "../tv/cdatafile/c.MPCcore.autotvout_prestate_2.dat"
#define AUTOTB_TVIN_Q_quad "../tv/cdatafile/c.MPCcore.autotvin_Q_quad.dat"
#define AUTOTB_TVOUT_Q_quad "../tv/cdatafile/c.MPCcore.autotvout_Q_quad.dat"
#define AUTOTB_TVIN_Q_quad_mos "../tv/cdatafile/c.MPCcore.autotvin_Q_quad_mos.dat"
#define AUTOTB_TVOUT_Q_quad_mos "../tv/cdatafile/c.MPCcore.autotvout_Q_quad_mos.dat"
#define AUTOTB_TVIN_Q_switchConst_IGBT "../tv/cdatafile/c.MPCcore.autotvin_Q_switchConst_IGBT.dat"
#define AUTOTB_TVOUT_Q_switchConst_IGBT "../tv/cdatafile/c.MPCcore.autotvout_Q_switchConst_IGBT.dat"
#define AUTOTB_TVIN_Q_switchConst_MOS "../tv/cdatafile/c.MPCcore.autotvin_Q_switchConst_MOS.dat"
#define AUTOTB_TVOUT_Q_switchConst_MOS "../tv/cdatafile/c.MPCcore.autotvout_Q_switchConst_MOS.dat"
#define AUTOTB_TVIN_Q_currentlim "../tv/cdatafile/c.MPCcore.autotvin_Q_currentlim.dat"
#define AUTOTB_TVOUT_Q_currentlim "../tv/cdatafile/c.MPCcore.autotvout_Q_currentlim.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_y "../tv/rtldatafile/rtl.MPCcore.autotvout_y.dat"
#define AUTOTB_TVOUT_PC_Jin "../tv/rtldatafile/rtl.MPCcore.autotvout_Jin.dat"
#define AUTOTB_TVOUT_PC_J "../tv/rtldatafile/rtl.MPCcore.autotvout_J.dat"
#define AUTOTB_TVOUT_PC_Calc "../tv/rtldatafile/rtl.MPCcore.autotvout_Calc.dat"
#define AUTOTB_TVOUT_PC_allocationCal "../tv/rtldatafile/rtl.MPCcore.autotvout_allocationCal.dat"
#define AUTOTB_TVOUT_PC_xref_0 "../tv/rtldatafile/rtl.MPCcore.autotvout_xref_0.dat"
#define AUTOTB_TVOUT_PC_xref_1 "../tv/rtldatafile/rtl.MPCcore.autotvout_xref_1.dat"
#define AUTOTB_TVOUT_PC_xref_2 "../tv/rtldatafile/rtl.MPCcore.autotvout_xref_2.dat"
#define AUTOTB_TVOUT_PC_xref_3 "../tv/rtldatafile/rtl.MPCcore.autotvout_xref_3.dat"
#define AUTOTB_TVOUT_PC_xref_4 "../tv/rtldatafile/rtl.MPCcore.autotvout_xref_4.dat"
#define AUTOTB_TVOUT_PC_xref_5 "../tv/rtldatafile/rtl.MPCcore.autotvout_xref_5.dat"
#define AUTOTB_TVOUT_PC_x_0 "../tv/rtldatafile/rtl.MPCcore.autotvout_x_0.dat"
#define AUTOTB_TVOUT_PC_x_1 "../tv/rtldatafile/rtl.MPCcore.autotvout_x_1.dat"
#define AUTOTB_TVOUT_PC_x_2 "../tv/rtldatafile/rtl.MPCcore.autotvout_x_2.dat"
#define AUTOTB_TVOUT_PC_x_3 "../tv/rtldatafile/rtl.MPCcore.autotvout_x_3.dat"
#define AUTOTB_TVOUT_PC_x_4 "../tv/rtldatafile/rtl.MPCcore.autotvout_x_4.dat"
#define AUTOTB_TVOUT_PC_x_5 "../tv/rtldatafile/rtl.MPCcore.autotvout_x_5.dat"
#define AUTOTB_TVOUT_PC_gateT_0 "../tv/rtldatafile/rtl.MPCcore.autotvout_gateT_0.dat"
#define AUTOTB_TVOUT_PC_gateT_1 "../tv/rtldatafile/rtl.MPCcore.autotvout_gateT_1.dat"
#define AUTOTB_TVOUT_PC_gateT_2 "../tv/rtldatafile/rtl.MPCcore.autotvout_gateT_2.dat"
#define AUTOTB_TVOUT_PC_gate_0 "../tv/rtldatafile/rtl.MPCcore.autotvout_gate_0.dat"
#define AUTOTB_TVOUT_PC_gate_1 "../tv/rtldatafile/rtl.MPCcore.autotvout_gate_1.dat"
#define AUTOTB_TVOUT_PC_gate_2 "../tv/rtldatafile/rtl.MPCcore.autotvout_gate_2.dat"
#define AUTOTB_TVOUT_PC_gate_3 "../tv/rtldatafile/rtl.MPCcore.autotvout_gate_3.dat"
#define AUTOTB_TVOUT_PC_gate_4 "../tv/rtldatafile/rtl.MPCcore.autotvout_gate_4.dat"
#define AUTOTB_TVOUT_PC_gate_5 "../tv/rtldatafile/rtl.MPCcore.autotvout_gate_5.dat"
#define AUTOTB_TVOUT_PC_v_0 "../tv/rtldatafile/rtl.MPCcore.autotvout_v_0.dat"
#define AUTOTB_TVOUT_PC_v_1 "../tv/rtldatafile/rtl.MPCcore.autotvout_v_1.dat"
#define AUTOTB_TVOUT_PC_prestate_0 "../tv/rtldatafile/rtl.MPCcore.autotvout_prestate_0.dat"
#define AUTOTB_TVOUT_PC_prestate_1 "../tv/rtldatafile/rtl.MPCcore.autotvout_prestate_1.dat"
#define AUTOTB_TVOUT_PC_prestate_2 "../tv/rtldatafile/rtl.MPCcore.autotvout_prestate_2.dat"
#define AUTOTB_TVOUT_PC_Q_quad "../tv/rtldatafile/rtl.MPCcore.autotvout_Q_quad.dat"
#define AUTOTB_TVOUT_PC_Q_quad_mos "../tv/rtldatafile/rtl.MPCcore.autotvout_Q_quad_mos.dat"
#define AUTOTB_TVOUT_PC_Q_switchConst_IGBT "../tv/rtldatafile/rtl.MPCcore.autotvout_Q_switchConst_IGBT.dat"
#define AUTOTB_TVOUT_PC_Q_switchConst_MOS "../tv/rtldatafile/rtl.MPCcore.autotvout_Q_switchConst_MOS.dat"
#define AUTOTB_TVOUT_PC_Q_currentlim "../tv/rtldatafile/rtl.MPCcore.autotvout_Q_currentlim.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  y_depth = 0;
  Jin_depth = 0;
  J_depth = 0;
  Calc_depth = 0;
  allocationCal_depth = 0;
  xref_0_depth = 0;
  xref_1_depth = 0;
  xref_2_depth = 0;
  xref_3_depth = 0;
  xref_4_depth = 0;
  xref_5_depth = 0;
  x_0_depth = 0;
  x_1_depth = 0;
  x_2_depth = 0;
  x_3_depth = 0;
  x_4_depth = 0;
  x_5_depth = 0;
  gateT_0_depth = 0;
  gateT_1_depth = 0;
  gateT_2_depth = 0;
  gate_0_depth = 0;
  gate_1_depth = 0;
  gate_2_depth = 0;
  gate_3_depth = 0;
  gate_4_depth = 0;
  gate_5_depth = 0;
  v_0_depth = 0;
  v_1_depth = 0;
  prestate_0_depth = 0;
  prestate_1_depth = 0;
  prestate_2_depth = 0;
  Q_quad_depth = 0;
  Q_quad_mos_depth = 0;
  Q_switchConst_IGBT_depth = 0;
  Q_switchConst_MOS_depth = 0;
  Q_currentlim_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{y " << y_depth << "}\n";
  total_list << "{Jin " << Jin_depth << "}\n";
  total_list << "{J " << J_depth << "}\n";
  total_list << "{Calc " << Calc_depth << "}\n";
  total_list << "{allocationCal " << allocationCal_depth << "}\n";
  total_list << "{xref_0 " << xref_0_depth << "}\n";
  total_list << "{xref_1 " << xref_1_depth << "}\n";
  total_list << "{xref_2 " << xref_2_depth << "}\n";
  total_list << "{xref_3 " << xref_3_depth << "}\n";
  total_list << "{xref_4 " << xref_4_depth << "}\n";
  total_list << "{xref_5 " << xref_5_depth << "}\n";
  total_list << "{x_0 " << x_0_depth << "}\n";
  total_list << "{x_1 " << x_1_depth << "}\n";
  total_list << "{x_2 " << x_2_depth << "}\n";
  total_list << "{x_3 " << x_3_depth << "}\n";
  total_list << "{x_4 " << x_4_depth << "}\n";
  total_list << "{x_5 " << x_5_depth << "}\n";
  total_list << "{gateT_0 " << gateT_0_depth << "}\n";
  total_list << "{gateT_1 " << gateT_1_depth << "}\n";
  total_list << "{gateT_2 " << gateT_2_depth << "}\n";
  total_list << "{gate_0 " << gate_0_depth << "}\n";
  total_list << "{gate_1 " << gate_1_depth << "}\n";
  total_list << "{gate_2 " << gate_2_depth << "}\n";
  total_list << "{gate_3 " << gate_3_depth << "}\n";
  total_list << "{gate_4 " << gate_4_depth << "}\n";
  total_list << "{gate_5 " << gate_5_depth << "}\n";
  total_list << "{v_0 " << v_0_depth << "}\n";
  total_list << "{v_1 " << v_1_depth << "}\n";
  total_list << "{prestate_0 " << prestate_0_depth << "}\n";
  total_list << "{prestate_1 " << prestate_1_depth << "}\n";
  total_list << "{prestate_2 " << prestate_2_depth << "}\n";
  total_list << "{Q_quad " << Q_quad_depth << "}\n";
  total_list << "{Q_quad_mos " << Q_quad_mos_depth << "}\n";
  total_list << "{Q_switchConst_IGBT " << Q_switchConst_IGBT_depth << "}\n";
  total_list << "{Q_switchConst_MOS " << Q_switchConst_MOS_depth << "}\n";
  total_list << "{Q_currentlim " << Q_currentlim_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int y_depth;
    int Jin_depth;
    int J_depth;
    int Calc_depth;
    int allocationCal_depth;
    int xref_0_depth;
    int xref_1_depth;
    int xref_2_depth;
    int xref_3_depth;
    int xref_4_depth;
    int xref_5_depth;
    int x_0_depth;
    int x_1_depth;
    int x_2_depth;
    int x_3_depth;
    int x_4_depth;
    int x_5_depth;
    int gateT_0_depth;
    int gateT_1_depth;
    int gateT_2_depth;
    int gate_0_depth;
    int gate_1_depth;
    int gate_2_depth;
    int gate_3_depth;
    int gate_4_depth;
    int gate_5_depth;
    int v_0_depth;
    int v_1_depth;
    int prestate_0_depth;
    int prestate_1_depth;
    int prestate_2_depth;
    int Q_quad_depth;
    int Q_quad_mos_depth;
    int Q_switchConst_IGBT_depth;
    int Q_switchConst_MOS_depth;
    int Q_currentlim_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s4__ { char data[4]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s2__ { char data[2]; };
extern "C" void MPCcore_hw_stub_wrapper(volatile void *, __cosim_s4__*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, __cosim_s1__*, __cosim_s1__*, __cosim_s2__*, __cosim_s1__*, __cosim_s2__*);

extern "C" void apatb_MPCcore_hw(volatile void * __xlx_apatb_param_y, __cosim_s4__* __xlx_apatb_param_Jin, volatile void * __xlx_apatb_param_J, volatile void * __xlx_apatb_param_Calc, volatile void * __xlx_apatb_param_allocationCal, volatile void * __xlx_apatb_param_xref_0, volatile void * __xlx_apatb_param_xref_1, volatile void * __xlx_apatb_param_xref_2, volatile void * __xlx_apatb_param_xref_3, volatile void * __xlx_apatb_param_xref_4, volatile void * __xlx_apatb_param_xref_5, volatile void * __xlx_apatb_param_x_0, volatile void * __xlx_apatb_param_x_1, volatile void * __xlx_apatb_param_x_2, volatile void * __xlx_apatb_param_x_3, volatile void * __xlx_apatb_param_x_4, volatile void * __xlx_apatb_param_x_5, volatile void * __xlx_apatb_param_gateT_0, volatile void * __xlx_apatb_param_gateT_1, volatile void * __xlx_apatb_param_gateT_2, volatile void * __xlx_apatb_param_gate_0, volatile void * __xlx_apatb_param_gate_1, volatile void * __xlx_apatb_param_gate_2, volatile void * __xlx_apatb_param_gate_3, volatile void * __xlx_apatb_param_gate_4, volatile void * __xlx_apatb_param_gate_5, volatile void * __xlx_apatb_param_v_0, volatile void * __xlx_apatb_param_v_1, volatile void * __xlx_apatb_param_prestate_0, volatile void * __xlx_apatb_param_prestate_1, volatile void * __xlx_apatb_param_prestate_2, __cosim_s1__* __xlx_apatb_param_Q_quad, __cosim_s1__* __xlx_apatb_param_Q_quad_mos, __cosim_s2__* __xlx_apatb_param_Q_switchConst_IGBT, __cosim_s1__* __xlx_apatb_param_Q_switchConst_MOS, __cosim_s2__* __xlx_apatb_param_Q_currentlim) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_y);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > y_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              y_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "y" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_y)[0*1+0] = y_pc_buffer[0].range(7, 0).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_J);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > J_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              J_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "J" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_J)[0*4+0] = J_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_J)[0*4+1] = J_pc_buffer[0].range(15, 8).to_int64();
((char*)__xlx_apatb_param_J)[0*4+2] = J_pc_buffer[0].range(23, 16).to_int64();
((char*)__xlx_apatb_param_J)[0*4+3] = J_pc_buffer[0].range(31, 24).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_Calc);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > Calc_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              Calc_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "Calc" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_Calc)[0*2+0] = Calc_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_Calc)[0*2+1] = Calc_pc_buffer[0].range(15, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_allocationCal);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > allocationCal_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              allocationCal_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "allocationCal" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_allocationCal)[0*1+0] = allocationCal_pc_buffer[0].range(7, 0).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gateT_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<3> > gateT_0_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gateT_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gateT_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gateT_0)[0*1+0] = gateT_0_pc_buffer[0].range(2, 0).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gateT_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<3> > gateT_1_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gateT_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gateT_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gateT_1)[0*1+0] = gateT_1_pc_buffer[0].range(2, 0).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gateT_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<3> > gateT_2_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gateT_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gateT_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gateT_2)[0*1+0] = gateT_2_pc_buffer[0].range(2, 0).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gate_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > gate_0_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gate_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gate_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gate_0)[0*1+0] = gate_0_pc_buffer[0].range(0, 0).to_uint64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gate_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > gate_1_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gate_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gate_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gate_1)[0*1+0] = gate_1_pc_buffer[0].range(0, 0).to_uint64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gate_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > gate_2_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gate_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gate_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gate_2)[0*1+0] = gate_2_pc_buffer[0].range(0, 0).to_uint64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gate_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > gate_3_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gate_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gate_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gate_3)[0*1+0] = gate_3_pc_buffer[0].range(0, 0).to_uint64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gate_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > gate_4_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gate_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gate_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gate_4)[0*1+0] = gate_4_pc_buffer[0].range(0, 0).to_uint64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gate_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > gate_5_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              gate_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gate_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_gate_5)[0*1+0] = gate_5_pc_buffer[0].range(0, 0).to_uint64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
// print y Transactions
{
aesl_fh.write(AUTOTB_TVIN_y, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_y;
aesl_fh.write(AUTOTB_TVIN_y, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.y_depth);
aesl_fh.write(AUTOTB_TVIN_y, end_str());
}

// print Jin Transactions
{
aesl_fh.write(AUTOTB_TVIN_Jin, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Jin;
aesl_fh.write(AUTOTB_TVIN_Jin, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.Jin_depth);
aesl_fh.write(AUTOTB_TVIN_Jin, end_str());
}

// print J Transactions
{
aesl_fh.write(AUTOTB_TVIN_J, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_J;
aesl_fh.write(AUTOTB_TVIN_J, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.J_depth);
aesl_fh.write(AUTOTB_TVIN_J, end_str());
}

// print Calc Transactions
{
aesl_fh.write(AUTOTB_TVIN_Calc, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Calc;
aesl_fh.write(AUTOTB_TVIN_Calc, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.Calc_depth);
aesl_fh.write(AUTOTB_TVIN_Calc, end_str());
}

// print allocationCal Transactions
{
aesl_fh.write(AUTOTB_TVIN_allocationCal, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_allocationCal;
aesl_fh.write(AUTOTB_TVIN_allocationCal, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.allocationCal_depth);
aesl_fh.write(AUTOTB_TVIN_allocationCal, end_str());
}

// print xref_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_xref_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_xref_0;
aesl_fh.write(AUTOTB_TVIN_xref_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.xref_0_depth);
aesl_fh.write(AUTOTB_TVIN_xref_0, end_str());
}

// print xref_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_xref_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_xref_1;
aesl_fh.write(AUTOTB_TVIN_xref_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.xref_1_depth);
aesl_fh.write(AUTOTB_TVIN_xref_1, end_str());
}

// print xref_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_xref_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_xref_2;
aesl_fh.write(AUTOTB_TVIN_xref_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.xref_2_depth);
aesl_fh.write(AUTOTB_TVIN_xref_2, end_str());
}

// print xref_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_xref_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_xref_3;
aesl_fh.write(AUTOTB_TVIN_xref_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.xref_3_depth);
aesl_fh.write(AUTOTB_TVIN_xref_3, end_str());
}

// print xref_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_xref_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_xref_4;
aesl_fh.write(AUTOTB_TVIN_xref_4, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.xref_4_depth);
aesl_fh.write(AUTOTB_TVIN_xref_4, end_str());
}

// print xref_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_xref_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_xref_5;
aesl_fh.write(AUTOTB_TVIN_xref_5, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.xref_5_depth);
aesl_fh.write(AUTOTB_TVIN_xref_5, end_str());
}

// print x_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_x_0;
aesl_fh.write(AUTOTB_TVIN_x_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.x_0_depth);
aesl_fh.write(AUTOTB_TVIN_x_0, end_str());
}

// print x_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_x_1;
aesl_fh.write(AUTOTB_TVIN_x_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.x_1_depth);
aesl_fh.write(AUTOTB_TVIN_x_1, end_str());
}

// print x_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_x_2;
aesl_fh.write(AUTOTB_TVIN_x_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.x_2_depth);
aesl_fh.write(AUTOTB_TVIN_x_2, end_str());
}

// print x_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_x_3;
aesl_fh.write(AUTOTB_TVIN_x_3, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.x_3_depth);
aesl_fh.write(AUTOTB_TVIN_x_3, end_str());
}

// print x_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_x_4;
aesl_fh.write(AUTOTB_TVIN_x_4, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.x_4_depth);
aesl_fh.write(AUTOTB_TVIN_x_4, end_str());
}

// print x_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_x_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_x_5;
aesl_fh.write(AUTOTB_TVIN_x_5, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.x_5_depth);
aesl_fh.write(AUTOTB_TVIN_x_5, end_str());
}

// print gateT_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gateT_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gateT_0;
aesl_fh.write(AUTOTB_TVIN_gateT_0, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.gateT_0_depth);
aesl_fh.write(AUTOTB_TVIN_gateT_0, end_str());
}

// print gateT_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gateT_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gateT_1;
aesl_fh.write(AUTOTB_TVIN_gateT_1, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.gateT_1_depth);
aesl_fh.write(AUTOTB_TVIN_gateT_1, end_str());
}

// print gateT_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gateT_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gateT_2;
aesl_fh.write(AUTOTB_TVIN_gateT_2, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.gateT_2_depth);
aesl_fh.write(AUTOTB_TVIN_gateT_2, end_str());
}

// print gate_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gate_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_0;
aesl_fh.write(AUTOTB_TVIN_gate_0, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_0_depth);
aesl_fh.write(AUTOTB_TVIN_gate_0, end_str());
}

// print gate_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gate_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_1;
aesl_fh.write(AUTOTB_TVIN_gate_1, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_1_depth);
aesl_fh.write(AUTOTB_TVIN_gate_1, end_str());
}

// print gate_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gate_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_2;
aesl_fh.write(AUTOTB_TVIN_gate_2, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_2_depth);
aesl_fh.write(AUTOTB_TVIN_gate_2, end_str());
}

// print gate_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gate_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_3;
aesl_fh.write(AUTOTB_TVIN_gate_3, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_3_depth);
aesl_fh.write(AUTOTB_TVIN_gate_3, end_str());
}

// print gate_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gate_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_4;
aesl_fh.write(AUTOTB_TVIN_gate_4, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_4_depth);
aesl_fh.write(AUTOTB_TVIN_gate_4, end_str());
}

// print gate_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gate_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_5;
aesl_fh.write(AUTOTB_TVIN_gate_5, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_5_depth);
aesl_fh.write(AUTOTB_TVIN_gate_5, end_str());
}

// print v_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_v_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_v_0;
aesl_fh.write(AUTOTB_TVIN_v_0, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.v_0_depth);
aesl_fh.write(AUTOTB_TVIN_v_0, end_str());
}

// print v_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_v_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_v_1;
aesl_fh.write(AUTOTB_TVIN_v_1, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.v_1_depth);
aesl_fh.write(AUTOTB_TVIN_v_1, end_str());
}

// print prestate_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_prestate_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_prestate_0;
aesl_fh.write(AUTOTB_TVIN_prestate_0, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.prestate_0_depth);
aesl_fh.write(AUTOTB_TVIN_prestate_0, end_str());
}

// print prestate_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_prestate_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_prestate_1;
aesl_fh.write(AUTOTB_TVIN_prestate_1, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.prestate_1_depth);
aesl_fh.write(AUTOTB_TVIN_prestate_1, end_str());
}

// print prestate_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_prestate_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_prestate_2;
aesl_fh.write(AUTOTB_TVIN_prestate_2, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.prestate_2_depth);
aesl_fh.write(AUTOTB_TVIN_prestate_2, end_str());
}

// print Q_quad Transactions
{
aesl_fh.write(AUTOTB_TVIN_Q_quad, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Q_quad;
aesl_fh.write(AUTOTB_TVIN_Q_quad, formatData(pos, 4));
}
  tcl_file.set_num(1, &tcl_file.Q_quad_depth);
aesl_fh.write(AUTOTB_TVIN_Q_quad, end_str());
}

// print Q_quad_mos Transactions
{
aesl_fh.write(AUTOTB_TVIN_Q_quad_mos, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Q_quad_mos;
aesl_fh.write(AUTOTB_TVIN_Q_quad_mos, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.Q_quad_mos_depth);
aesl_fh.write(AUTOTB_TVIN_Q_quad_mos, end_str());
}

// print Q_switchConst_IGBT Transactions
{
aesl_fh.write(AUTOTB_TVIN_Q_switchConst_IGBT, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Q_switchConst_IGBT;
aesl_fh.write(AUTOTB_TVIN_Q_switchConst_IGBT, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.Q_switchConst_IGBT_depth);
aesl_fh.write(AUTOTB_TVIN_Q_switchConst_IGBT, end_str());
}

// print Q_switchConst_MOS Transactions
{
aesl_fh.write(AUTOTB_TVIN_Q_switchConst_MOS, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Q_switchConst_MOS;
aesl_fh.write(AUTOTB_TVIN_Q_switchConst_MOS, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.Q_switchConst_MOS_depth);
aesl_fh.write(AUTOTB_TVIN_Q_switchConst_MOS, end_str());
}

// print Q_currentlim Transactions
{
aesl_fh.write(AUTOTB_TVIN_Q_currentlim, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Q_currentlim;
aesl_fh.write(AUTOTB_TVIN_Q_currentlim, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.Q_currentlim_depth);
aesl_fh.write(AUTOTB_TVIN_Q_currentlim, end_str());
}

CodeState = CALL_C_DUT;
MPCcore_hw_stub_wrapper(__xlx_apatb_param_y, __xlx_apatb_param_Jin, __xlx_apatb_param_J, __xlx_apatb_param_Calc, __xlx_apatb_param_allocationCal, __xlx_apatb_param_xref_0, __xlx_apatb_param_xref_1, __xlx_apatb_param_xref_2, __xlx_apatb_param_xref_3, __xlx_apatb_param_xref_4, __xlx_apatb_param_xref_5, __xlx_apatb_param_x_0, __xlx_apatb_param_x_1, __xlx_apatb_param_x_2, __xlx_apatb_param_x_3, __xlx_apatb_param_x_4, __xlx_apatb_param_x_5, __xlx_apatb_param_gateT_0, __xlx_apatb_param_gateT_1, __xlx_apatb_param_gateT_2, __xlx_apatb_param_gate_0, __xlx_apatb_param_gate_1, __xlx_apatb_param_gate_2, __xlx_apatb_param_gate_3, __xlx_apatb_param_gate_4, __xlx_apatb_param_gate_5, __xlx_apatb_param_v_0, __xlx_apatb_param_v_1, __xlx_apatb_param_prestate_0, __xlx_apatb_param_prestate_1, __xlx_apatb_param_prestate_2, __xlx_apatb_param_Q_quad, __xlx_apatb_param_Q_quad_mos, __xlx_apatb_param_Q_switchConst_IGBT, __xlx_apatb_param_Q_switchConst_MOS, __xlx_apatb_param_Q_currentlim);
CodeState = DUMP_OUTPUTS;
// print y Transactions
{
aesl_fh.write(AUTOTB_TVOUT_y, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_y;
aesl_fh.write(AUTOTB_TVOUT_y, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.y_depth);
aesl_fh.write(AUTOTB_TVOUT_y, end_str());
}

// print J Transactions
{
aesl_fh.write(AUTOTB_TVOUT_J, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_J;
aesl_fh.write(AUTOTB_TVOUT_J, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.J_depth);
aesl_fh.write(AUTOTB_TVOUT_J, end_str());
}

// print Calc Transactions
{
aesl_fh.write(AUTOTB_TVOUT_Calc, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_Calc;
aesl_fh.write(AUTOTB_TVOUT_Calc, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.Calc_depth);
aesl_fh.write(AUTOTB_TVOUT_Calc, end_str());
}

// print allocationCal Transactions
{
aesl_fh.write(AUTOTB_TVOUT_allocationCal, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_allocationCal;
aesl_fh.write(AUTOTB_TVOUT_allocationCal, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.allocationCal_depth);
aesl_fh.write(AUTOTB_TVOUT_allocationCal, end_str());
}

// print gateT_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gateT_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gateT_0;
aesl_fh.write(AUTOTB_TVOUT_gateT_0, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.gateT_0_depth);
aesl_fh.write(AUTOTB_TVOUT_gateT_0, end_str());
}

// print gateT_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gateT_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gateT_1;
aesl_fh.write(AUTOTB_TVOUT_gateT_1, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.gateT_1_depth);
aesl_fh.write(AUTOTB_TVOUT_gateT_1, end_str());
}

// print gateT_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gateT_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gateT_2;
aesl_fh.write(AUTOTB_TVOUT_gateT_2, formatData(pos, 3));
}
  tcl_file.set_num(1, &tcl_file.gateT_2_depth);
aesl_fh.write(AUTOTB_TVOUT_gateT_2, end_str());
}

// print gate_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gate_0, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_0;
aesl_fh.write(AUTOTB_TVOUT_gate_0, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_0_depth);
aesl_fh.write(AUTOTB_TVOUT_gate_0, end_str());
}

// print gate_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gate_1, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_1;
aesl_fh.write(AUTOTB_TVOUT_gate_1, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_1_depth);
aesl_fh.write(AUTOTB_TVOUT_gate_1, end_str());
}

// print gate_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gate_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_2;
aesl_fh.write(AUTOTB_TVOUT_gate_2, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_2_depth);
aesl_fh.write(AUTOTB_TVOUT_gate_2, end_str());
}

// print gate_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gate_3, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_3;
aesl_fh.write(AUTOTB_TVOUT_gate_3, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_3_depth);
aesl_fh.write(AUTOTB_TVOUT_gate_3, end_str());
}

// print gate_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gate_4, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_4;
aesl_fh.write(AUTOTB_TVOUT_gate_4, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_4_depth);
aesl_fh.write(AUTOTB_TVOUT_gate_4, end_str());
}

// print gate_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gate_5, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_gate_5;
aesl_fh.write(AUTOTB_TVOUT_gate_5, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.gate_5_depth);
aesl_fh.write(AUTOTB_TVOUT_gate_5, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
