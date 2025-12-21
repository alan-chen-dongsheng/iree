# /home/cds/model_repo/mobilenetv2-12.onnx
import onnx
from onnx import shape_inference
# Load the ONNX model
model = onnx.load("/home/cds/model_repo/mobilenetv2-12.onnx")
# 加载完模型是，这是一个N维度动态shape的onnx模型
# 请将N设置为1， 然后导出一个静态图
model.graph.input[0].type.tensor_type.shape.dim[0].dim_value = 1
# Perform shape inference
model = shape_inference.infer_shapes(model)
# 打印模型的计算图
print(onnx.helper.printable_graph(model.graph))
onnx.save(model, "c")