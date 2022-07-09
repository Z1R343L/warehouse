FROM pyston/pyston:2.3.4
RUN apt-get update && apt-get upgrade -y
RUN apt-get install cargo gunicorn -y
RUN pyston -m pip install -U pip wheel setuptools poetry
COPY . .
RUN pyston -m poetry install
CMD ["./scripts/prod.sh"]