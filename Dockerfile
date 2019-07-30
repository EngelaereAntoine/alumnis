FROM alpine

RUN apk add python3 py-pip

WORKDIR /alumnis
COPY . .

RUN pip install -r requirements.txt && pelican

WORKDIR /alumnis/output
ENTRYPOINT ["python3", "-m", "http.server"]

EXPOSE 8000