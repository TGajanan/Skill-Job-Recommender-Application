FROM python:3.6
WORKDIR /DatabaseConnectivity
ADD . /DatabaseConnectivity
COPY requirements.txt /DatabaseConnectivity
RUN python3 -m pip install -r requirements.txt
RUN python3 -m pip install ibm_db
EXPOSE 5000
CMD ["python","DatabaseConnectivity.py"]
