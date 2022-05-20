FROM python:3.10 as base

RUN pip install rich

FROM python:3.10

COPY --from=base /usr/local/lib/python3.10/site-packages/rich/. /usr/local/lib/python3.10/site-packages/rich
COPY hello.py .

CMD ["./hello.py"]
