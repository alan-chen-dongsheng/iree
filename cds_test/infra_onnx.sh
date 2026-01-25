#!/bin/bash

model_path="/Users/alanchen/workspace/iree/cds_test/mobilenetv2_050_Opset16.onnx"
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
    --function=main_graph \
    --input="1x3x244x244xf32=2" \
    ${execute_name}
