FROM ubuntu:18.04
RUN apt-get update && apt-get -y upgrade && apt-get clean && apt-get install -y python3-minimal python3-pip python3-distutils python3-setuptools && apt-get clean
RUN pip3 install wheel
RUN apt-get install -y openjdk-11-jdk

RUN pip3 install tqdm wrapt werkzeug flask
RUN pip3 torch==1.3.1+cpu -f https://download.pytorch.org/whl/torch_stable.html
RUN pip3 --no-cache-dir install allennlp==0.9.0
RUN pip3 install spacy==2.2.0
RUN python3 -m spacy download en_core_web_sm
