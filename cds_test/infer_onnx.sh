#!/bin/bash

model_path="/home/cds/model_repo/mobilenetv2-12-batch1.onnx"
front_ir_name="mobilenetv2-12-batch1.mlir"
execute_name="mobilenetv2-12-batch1.vmfb"


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
  --function=torch-jit-export \
  --input="1x3x224x224xf32=2"

