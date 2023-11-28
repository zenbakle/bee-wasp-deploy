FROM public.ecr.aws/lambda/python:3.10
ENV MODEL_NAME=bees-wasps-v2.tflite
RUN pip install keras_image_helper
RUN pip install  https://github.com/alexeygrigorev/tflite-aws-lambda/raw/main/tflite/tflite_runtime-2.14.0-cp310-cp310-linux_x86_64.whl
COPY lambda_function.py .

CMD ["lambda_function.lambda_handler"]