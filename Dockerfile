FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN pip install transformers==4.24.0  
RUN pip install sentencepiece==0.1.97 
RUN conda install -c conda-forge pytorch=1.10.2

WORKDIR /repo
COPY . /repo
