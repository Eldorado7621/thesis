#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_dataInStream_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataInStream_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_dataInStream_V_data_V.dat");
unsigned int ap_apatb_dataInStream_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataInStream_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_dataInStream_V_keep_V.dat");
unsigned int ap_apatb_dataInStream_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataInStream_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_dataInStream_V_strb_V.dat");
unsigned int ap_apatb_dataInStream_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataInStream_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_dataInStream_V_user_V.dat");
unsigned int ap_apatb_dataInStream_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataInStream_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_dataInStream_V_last_V.dat");
unsigned int ap_apatb_dataInStream_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataInStream_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_dataInStream_V_id_V.dat");
unsigned int ap_apatb_dataInStream_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataInStream_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_dataInStream_V_dest_V.dat");
unsigned int ap_apatb_XNearStream_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_XNearStream_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_XNearStream_V_data_V.dat");
unsigned int ap_apatb_XNearStream_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_XNearStream_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_XNearStream_V_keep_V.dat");
unsigned int ap_apatb_XNearStream_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_XNearStream_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_XNearStream_V_strb_V.dat");
unsigned int ap_apatb_XNearStream_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_XNearStream_V_user_V_V_size_Reader("../tv/stream_size/stream_size_out_XNearStream_V_user_V.dat");
unsigned int ap_apatb_XNearStream_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_XNearStream_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_XNearStream_V_last_V.dat");
unsigned int ap_apatb_XNearStream_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_XNearStream_V_id_V_V_size_Reader("../tv/stream_size/stream_size_out_XNearStream_V_id_V.dat");
unsigned int ap_apatb_XNearStream_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_XNearStream_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_XNearStream_V_dest_V.dat");
extern "C" char rrt(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, float, float, int, int*, float, float, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" char apatb_rrt_hw(volatile void * __xlx_apatb_param_dataInStream_V_data_V, volatile void * __xlx_apatb_param_dataInStream_V_keep_V, volatile void * __xlx_apatb_param_dataInStream_V_strb_V, volatile void * __xlx_apatb_param_dataInStream_V_user_V, volatile void * __xlx_apatb_param_dataInStream_V_last_V, volatile void * __xlx_apatb_param_dataInStream_V_id_V, volatile void * __xlx_apatb_param_dataInStream_V_dest_V, float __xlx_apatb_param_xrandx, float __xlx_apatb_param_xrandy, int __xlx_apatb_param_N, volatile void * __xlx_apatb_param_oup, float __xlx_apatb_param_Squared_r_n, float __xlx_apatb_param_Squared_R_Robot, volatile void * __xlx_apatb_param_XNearStream_V_data_V, volatile void * __xlx_apatb_param_XNearStream_V_keep_V, volatile void * __xlx_apatb_param_XNearStream_V_strb_V, volatile void * __xlx_apatb_param_XNearStream_V_user_V, volatile void * __xlx_apatb_param_XNearStream_V_last_V, volatile void * __xlx_apatb_param_XNearStream_V_id_V, volatile void * __xlx_apatb_param_XNearStream_V_dest_V) {
  // collect __xlx_dataInStream_V_data_V_tmp_vec
  unsigned __xlx_dataInStream_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_dataInStream_V_data_V_V_read_Size = __xlx_dataInStream_V_data_V_V_size_Reader.read_size();
  vector<long long> __xlx_dataInStream_V_data_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_dataInStream_V_data_V)->empty() && __xlx_dataInStream_V_data_V_V_tmp_Count < __xlx_dataInStream_V_data_V_V_read_Size) {
    __xlx_dataInStream_V_data_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_dataInStream_V_data_V)->read());
    __xlx_dataInStream_V_data_V_V_tmp_Count++;
  }
  ap_apatb_dataInStream_V_data_V_cap_bc = __xlx_dataInStream_V_data_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_dataInStream_V_data_V_input_buffer= new long long[__xlx_dataInStream_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataInStream_V_data_V_tmp_vec.size(); ++i) {
    __xlx_dataInStream_V_data_V_input_buffer[i] = __xlx_dataInStream_V_data_V_tmp_vec[i];
  }
  // collect __xlx_dataInStream_V_keep_V_tmp_vec
  unsigned __xlx_dataInStream_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_dataInStream_V_keep_V_V_read_Size = __xlx_dataInStream_V_keep_V_V_size_Reader.read_size();
  vector<char> __xlx_dataInStream_V_keep_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_keep_V)->empty() && __xlx_dataInStream_V_keep_V_V_tmp_Count < __xlx_dataInStream_V_keep_V_V_read_Size) {
    __xlx_dataInStream_V_keep_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_keep_V)->read());
    __xlx_dataInStream_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_dataInStream_V_keep_V_cap_bc = __xlx_dataInStream_V_keep_V_tmp_vec.size();
  // store input buffer
  char* __xlx_dataInStream_V_keep_V_input_buffer= new char[__xlx_dataInStream_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataInStream_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_dataInStream_V_keep_V_input_buffer[i] = __xlx_dataInStream_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_dataInStream_V_strb_V_tmp_vec
  unsigned __xlx_dataInStream_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_dataInStream_V_strb_V_V_read_Size = __xlx_dataInStream_V_strb_V_V_size_Reader.read_size();
  vector<char> __xlx_dataInStream_V_strb_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_strb_V)->empty() && __xlx_dataInStream_V_strb_V_V_tmp_Count < __xlx_dataInStream_V_strb_V_V_read_Size) {
    __xlx_dataInStream_V_strb_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_strb_V)->read());
    __xlx_dataInStream_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_dataInStream_V_strb_V_cap_bc = __xlx_dataInStream_V_strb_V_tmp_vec.size();
  // store input buffer
  char* __xlx_dataInStream_V_strb_V_input_buffer= new char[__xlx_dataInStream_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataInStream_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_dataInStream_V_strb_V_input_buffer[i] = __xlx_dataInStream_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_dataInStream_V_user_V_tmp_vec
  unsigned __xlx_dataInStream_V_user_V_V_tmp_Count = 0;
  unsigned __xlx_dataInStream_V_user_V_V_read_Size = __xlx_dataInStream_V_user_V_V_size_Reader.read_size();
  vector<char> __xlx_dataInStream_V_user_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_user_V)->empty() && __xlx_dataInStream_V_user_V_V_tmp_Count < __xlx_dataInStream_V_user_V_V_read_Size) {
    __xlx_dataInStream_V_user_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_user_V)->read());
    __xlx_dataInStream_V_user_V_V_tmp_Count++;
  }
  ap_apatb_dataInStream_V_user_V_cap_bc = __xlx_dataInStream_V_user_V_tmp_vec.size();
  // store input buffer
  char* __xlx_dataInStream_V_user_V_input_buffer= new char[__xlx_dataInStream_V_user_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataInStream_V_user_V_tmp_vec.size(); ++i) {
    __xlx_dataInStream_V_user_V_input_buffer[i] = __xlx_dataInStream_V_user_V_tmp_vec[i];
  }
  // collect __xlx_dataInStream_V_last_V_tmp_vec
  unsigned __xlx_dataInStream_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_dataInStream_V_last_V_V_read_Size = __xlx_dataInStream_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_dataInStream_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_last_V)->empty() && __xlx_dataInStream_V_last_V_V_tmp_Count < __xlx_dataInStream_V_last_V_V_read_Size) {
    __xlx_dataInStream_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_last_V)->read());
    __xlx_dataInStream_V_last_V_V_tmp_Count++;
  }
  ap_apatb_dataInStream_V_last_V_cap_bc = __xlx_dataInStream_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_dataInStream_V_last_V_input_buffer= new char[__xlx_dataInStream_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataInStream_V_last_V_tmp_vec.size(); ++i) {
    __xlx_dataInStream_V_last_V_input_buffer[i] = __xlx_dataInStream_V_last_V_tmp_vec[i];
  }
  // collect __xlx_dataInStream_V_id_V_tmp_vec
  unsigned __xlx_dataInStream_V_id_V_V_tmp_Count = 0;
  unsigned __xlx_dataInStream_V_id_V_V_read_Size = __xlx_dataInStream_V_id_V_V_size_Reader.read_size();
  vector<char> __xlx_dataInStream_V_id_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_id_V)->empty() && __xlx_dataInStream_V_id_V_V_tmp_Count < __xlx_dataInStream_V_id_V_V_read_Size) {
    __xlx_dataInStream_V_id_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_id_V)->read());
    __xlx_dataInStream_V_id_V_V_tmp_Count++;
  }
  ap_apatb_dataInStream_V_id_V_cap_bc = __xlx_dataInStream_V_id_V_tmp_vec.size();
  // store input buffer
  char* __xlx_dataInStream_V_id_V_input_buffer= new char[__xlx_dataInStream_V_id_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataInStream_V_id_V_tmp_vec.size(); ++i) {
    __xlx_dataInStream_V_id_V_input_buffer[i] = __xlx_dataInStream_V_id_V_tmp_vec[i];
  }
  // collect __xlx_dataInStream_V_dest_V_tmp_vec
  unsigned __xlx_dataInStream_V_dest_V_V_tmp_Count = 0;
  unsigned __xlx_dataInStream_V_dest_V_V_read_Size = __xlx_dataInStream_V_dest_V_V_size_Reader.read_size();
  vector<char> __xlx_dataInStream_V_dest_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_dest_V)->empty() && __xlx_dataInStream_V_dest_V_V_tmp_Count < __xlx_dataInStream_V_dest_V_V_read_Size) {
    __xlx_dataInStream_V_dest_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_dataInStream_V_dest_V)->read());
    __xlx_dataInStream_V_dest_V_V_tmp_Count++;
  }
  ap_apatb_dataInStream_V_dest_V_cap_bc = __xlx_dataInStream_V_dest_V_tmp_vec.size();
  // store input buffer
  char* __xlx_dataInStream_V_dest_V_input_buffer= new char[__xlx_dataInStream_V_dest_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataInStream_V_dest_V_tmp_vec.size(); ++i) {
    __xlx_dataInStream_V_dest_V_input_buffer[i] = __xlx_dataInStream_V_dest_V_tmp_vec[i];
  }
  // Collect __xlx_oup__tmp_vec
  vector<sc_bv<32> >__xlx_oup__tmp_vec;
  for (int j = 0, e = 5; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_oup)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_oup)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_oup)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_oup)[j*4+3];
    __xlx_oup__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_oup = 5;
  int __xlx_offset_param_oup = 0;
  int __xlx_offset_byte_param_oup = 0*4;
  int* __xlx_oup__input_buffer= new int[__xlx_oup__tmp_vec.size()];
  for (int i = 0; i < __xlx_oup__tmp_vec.size(); ++i) {
    __xlx_oup__input_buffer[i] = __xlx_oup__tmp_vec[i].range(31, 0).to_uint64();
  }
  //Create input buffer for XNearStream_V_data_V
  ap_apatb_XNearStream_V_data_V_cap_bc = __xlx_XNearStream_V_data_V_V_size_Reader.read_size();
  int* __xlx_XNearStream_V_data_V_input_buffer= new int[ap_apatb_XNearStream_V_data_V_cap_bc];
  //Create input buffer for XNearStream_V_keep_V
  ap_apatb_XNearStream_V_keep_V_cap_bc = __xlx_XNearStream_V_keep_V_V_size_Reader.read_size();
  char* __xlx_XNearStream_V_keep_V_input_buffer= new char[ap_apatb_XNearStream_V_keep_V_cap_bc];
  //Create input buffer for XNearStream_V_strb_V
  ap_apatb_XNearStream_V_strb_V_cap_bc = __xlx_XNearStream_V_strb_V_V_size_Reader.read_size();
  char* __xlx_XNearStream_V_strb_V_input_buffer= new char[ap_apatb_XNearStream_V_strb_V_cap_bc];
  //Create input buffer for XNearStream_V_user_V
  ap_apatb_XNearStream_V_user_V_cap_bc = __xlx_XNearStream_V_user_V_V_size_Reader.read_size();
  char* __xlx_XNearStream_V_user_V_input_buffer= new char[ap_apatb_XNearStream_V_user_V_cap_bc];
  //Create input buffer for XNearStream_V_last_V
  ap_apatb_XNearStream_V_last_V_cap_bc = __xlx_XNearStream_V_last_V_V_size_Reader.read_size();
  char* __xlx_XNearStream_V_last_V_input_buffer= new char[ap_apatb_XNearStream_V_last_V_cap_bc];
  //Create input buffer for XNearStream_V_id_V
  ap_apatb_XNearStream_V_id_V_cap_bc = __xlx_XNearStream_V_id_V_V_size_Reader.read_size();
  char* __xlx_XNearStream_V_id_V_input_buffer= new char[ap_apatb_XNearStream_V_id_V_cap_bc];
  //Create input buffer for XNearStream_V_dest_V
  ap_apatb_XNearStream_V_dest_V_cap_bc = __xlx_XNearStream_V_dest_V_V_size_Reader.read_size();
  char* __xlx_XNearStream_V_dest_V_input_buffer= new char[ap_apatb_XNearStream_V_dest_V_cap_bc];
  // DUT call
  char ap_return = rrt(__xlx_dataInStream_V_data_V_input_buffer, __xlx_dataInStream_V_keep_V_input_buffer, __xlx_dataInStream_V_strb_V_input_buffer, __xlx_dataInStream_V_user_V_input_buffer, __xlx_dataInStream_V_last_V_input_buffer, __xlx_dataInStream_V_id_V_input_buffer, __xlx_dataInStream_V_dest_V_input_buffer, __xlx_apatb_param_xrandx, __xlx_apatb_param_xrandy, __xlx_apatb_param_N, __xlx_oup__input_buffer, __xlx_apatb_param_Squared_r_n, __xlx_apatb_param_Squared_R_Robot, __xlx_XNearStream_V_data_V_input_buffer, __xlx_XNearStream_V_keep_V_input_buffer, __xlx_XNearStream_V_strb_V_input_buffer, __xlx_XNearStream_V_user_V_input_buffer, __xlx_XNearStream_V_last_V_input_buffer, __xlx_XNearStream_V_id_V_input_buffer, __xlx_XNearStream_V_dest_V_input_buffer);
// print __xlx_apatb_param_oup
  sc_bv<32>*__xlx_oup_output_buffer = new sc_bv<32>[__xlx_size_param_oup];
  for (int i = 0; i < __xlx_size_param_oup; ++i) {
    __xlx_oup_output_buffer[i] = __xlx_oup__input_buffer[i+__xlx_offset_param_oup];
  }
  for (int i = 0; i < __xlx_size_param_oup; ++i) {
    ((char*)__xlx_apatb_param_oup)[i*4+0] = __xlx_oup_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_oup)[i*4+1] = __xlx_oup_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_oup)[i*4+2] = __xlx_oup_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_oup)[i*4+3] = __xlx_oup_output_buffer[i].range(31, 24).to_uint();
  }
  for (unsigned i = 0; i <ap_apatb_XNearStream_V_data_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_XNearStream_V_data_V)->write(__xlx_XNearStream_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_XNearStream_V_keep_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_XNearStream_V_keep_V)->write(__xlx_XNearStream_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_XNearStream_V_strb_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_XNearStream_V_strb_V)->write(__xlx_XNearStream_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_XNearStream_V_user_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_XNearStream_V_user_V)->write(__xlx_XNearStream_V_user_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_XNearStream_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_XNearStream_V_last_V)->write(__xlx_XNearStream_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_XNearStream_V_id_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_XNearStream_V_id_V)->write(__xlx_XNearStream_V_id_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_XNearStream_V_dest_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_XNearStream_V_dest_V)->write(__xlx_XNearStream_V_dest_V_input_buffer[i]);
return ap_return;
}
