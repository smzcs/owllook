FROM python:3.6
WORKDIR /owllook
COPY . /owllook/
RUN pip install --no-cache-dir pipenv && pipenv lock && pipenv --clear && pipenv --rm && pipenv install --system --deploy && find . -name "*.pyc" -delete