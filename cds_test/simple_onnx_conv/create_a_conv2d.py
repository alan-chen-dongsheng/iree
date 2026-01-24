import onnx
from onnx import helper, TensorProto, numpy_helper
import numpy as np

# 输入张量: NCHW = 1x3x500x500
input_tensor = helper.make_tensor_value_info(
    "input", TensorProto.FLOAT, [1, 3, 500, 500]
)

# 卷积权重: (out_channels, in_channels, kH, kW)
out_channels = 8
kH = kW = 3
weight = np.random.randn(out_channels, 3, kH, kW).astype(np.float32)
weight_initializer = numpy_helper.from_array(weight, name="weight")

# 可选 bias
bias = np.random.randn(out_channels).astype(np.float32)
bias_initializer = numpy_helper.from_array(bias, name="bias")

# 输出张量 shape（不强制写死也可以）
# 假设 stride=1, padding=0 => 500-3+1=498
output_tensor = helper.make_tensor_value_info(
    "output", TensorProto.FLOAT, [1, out_channels, 498, 498]
)

conv_node = helper.make_node(
    "Conv",
    inputs=["input", "weight", "bias"],
    outputs=["output"],
    strides=[1, 1],
    pads=[0, 0, 0, 0],
)

graph = helper.make_graph(
    nodes=[conv_node],
    name="SingleConv",
    inputs=[input_tensor],
    outputs=[output_tensor],
    initializer=[weight_initializer, bias_initializer],
)

model = helper.make_model(graph, producer_name="single_conv_example")
onnx.checker.check_model(model)
onnx.save(model, "single_conv.onnx")
print("Saved: single_conv.onnx")
