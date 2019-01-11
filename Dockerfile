FROM python:3.7.1

ADD autoTravLog.py /
ADD logprocess.py /

COPY requirements.txt /requirements.txt
WORKDIR /
RUN pip install -r requirements.txt
COPY autoTravLog.py .
COPY logprocess.py .

CMD [ "python", "logprocess.py" ]
