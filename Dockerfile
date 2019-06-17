FROM jupyter/base-notebook

WORKDIR /app

COPY . /app

USER root

RUN chmod 755 /app

RUN pip install conda

RUN conda install --file requirements.txt

EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root

