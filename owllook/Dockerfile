FROM python:3.6
WORKDIR /owllook
COPY . /owllook/
RUN pip install --no-cache-dir pipenv && pipenv install --skip-lock
EXPOSE 8001