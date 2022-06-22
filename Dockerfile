FROM public.ecr.aws/lambda/python:3.9

COPY requirements.txt  .
RUN pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"
COPY . ${LAMBDA_TASK_ROOT}/

ENV PYTHONPATH="${LAMBDA_TASK_ROOT}:$PYTHONPATH"

CMD ["handler.handler"]