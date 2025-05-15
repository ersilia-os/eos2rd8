FROM bentoml/model-server:0.11.0-py38
MAINTAINER ersilia

RUN pip install transformers==4.24.0  
RUN pip install sentencepiece==0.1.97 
RUN pip install torch==1.10.1 -f https://download.pytorch.org/whl/cpu/torch_stable.html
RUN pip install torchaudio==0.10.1 -f https://download.pytorch.org/whl/cpu/torch_stable.html
RUN pip install torchvision==0.11.2 -f https://download.pytorch.org/whl/cpu/torch_stable.html

WORKDIR /repo
COPY . /repo
