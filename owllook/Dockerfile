# 基于python3.6镜像来构建owllook镜像
FROM python:3.6
ADD . /owllook
WORKDIR /owllook
RUN pip install --no-cache-dir pipenv && pipenv lock && pipenv --clear && pipenv --rm && pipenv install --system --deploy && find . -name "*.pyc" -delete