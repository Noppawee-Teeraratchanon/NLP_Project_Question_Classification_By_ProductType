FROM akraradets/ait-ml-base:2023

RUN pip3 install --upgrade pip
RUN pip3 install ipykernel
RUN pip3 install scikit-learn
RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install mlflow==2.7.1
RUN pip3 install matplotlib
RUN pip3 install torch
RUN pip3 install torchdata
RUN pip3 install torchtext
RUN pip3 install spacy
RUN pip3 install transformers
RUN python -m spacy download en_core_web_sm

COPY ./code /root/code

CMD tail -f /dev/null
#pydantic==2.3.0 pydantic_core==2.6.3