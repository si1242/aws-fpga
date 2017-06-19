// Amazon FPGA Hardware Development Kit
//
// Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Amazon Software License (the "License"). You may not use
// this file except in compliance with the License. A copy of the License is
// located at
//
//    http://aws.amazon.com/asl/
//
// or in the "license" file accompanying this file. This file is distributed on
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
// implied. See the License for the specific language governing permissions and
// limitations under the License.

//もしCL_HELLO_WORLD_DEFINESが未定義であれば、ここでdefineする

`ifndef CL_AES_DEFINES
`define CL_AES_DEFINES

//Put module name of the CL design here.  This is used to instantiate in top.sv
`define CL_NAME cl_aes

// 以下の定数をハードコーディング
// KEY  "1234567812345678123456781234567\0"
// IN   "abcd"
// defineで定義した定数を使うときは`KEY とか　`INというように書く
`define KEY 256'h3132333435363738_3132333435363738_3132333435363738_313233343536370a
`define IN  128'h61626364_00000000_00000000_00000000


//Highly recommeneded.  For lib FIFO block, uses less async reset (take advantage of
// FPGA flop init capability).  This will help with routing resources.
`define FPGA_LESS_RST

`endif
