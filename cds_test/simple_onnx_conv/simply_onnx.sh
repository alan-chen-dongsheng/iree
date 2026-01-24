#!/bin/bash

model_path="/home/cds/workspace/iree/cds_test/simple_onnx_conv/single_conv.onnx"
front_ir_name="/home/cds/workspace/iree/cds_test/simple_onnx_conv/simple_conv2d.mlir"
execute_name="/home/cds/workspace/iree/cds_test/simple_onnx_conv/simple_conv2d.vmfb"


iree-import-onnx ${model_path} \
  --opset-version 17 \
  -o=${front_ir_name}


iree-compile \
  ${front_ir_name}\
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-cpu=host \
  -o ${execute_name}

iree-run-module \
  --module=${execute_name} \
  --device=local-task \
  --function=SingleConv \
  --input="1x3x500x500xf32=5"

