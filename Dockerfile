FROM bentoml/model-server:0.11.0-py38
MAINTAINER ersilia

RUN pip install transformers==4.24.0  
RUN pip install sentencepiece==0.1.97 
RUN pip install torch==2.4.1 --index-url https://download.pytorch.org/whl/cpu

WORKDIR /repo
COPY . /repo
