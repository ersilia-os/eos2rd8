FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN pip install transformers==4.24.0  
RUN pip install sentencepiece==0.1.97 
RUN pip install torch==1.10.1+cpu torchvision==0.11.2+cpu torchaudio==0.10.1 -f https://download.pytorch.org/whl/cpu/torch_stable.html

WORKDIR /repo
COPY . /repo
