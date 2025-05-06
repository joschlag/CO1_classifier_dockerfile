FROM continuumio/miniconda:4.7.12-alpine

ENV PATH /opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda rdp_classifier=2.14 && \
	conda clean -a -y

CMD ["rdp_classifier"]
