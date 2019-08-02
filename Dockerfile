FROM ubuntu:18.04
RUN apt-get update && apt-get clean && apt-get install -y python3-minimal python3-pip python3-distutils python3-setuptools && apt-get clean
RUN pip3 install wheel
RUN apt-get install -y openjdk-8-jdk

RUN python3 -m pip install allennlp==0.8.4
RUN python3 -m pip install tqdm wrapt spacy==2.1.7 werkzeug flask
RUN python3 -m spacy download en_core_web_sm
