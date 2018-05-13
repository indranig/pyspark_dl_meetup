FROM epahomov/docker-zeppelin:zep_0.7_spark_2.1_hadoop_2.7

RUN apt-get update && \
  apt-get install -y wget
RUN wget https://bootstrap.pypa.io/get-pip.py && \
  python get-pip.py && \
  rm get-pip.py
RUN python -m pip install tensorflow
