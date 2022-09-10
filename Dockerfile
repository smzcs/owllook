# 基于python3.6镜像来构建owllook镜像
FROM python:3.6
ENV TIME_ZONE=Asia/Shanghai
RUN echo "${TIME_ZONE}" > /etc/timezone \
    && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
WORKDIR /owllook
ADD . /owllook
RUN pipenv lock && pipenv --clear && pipenv --rm
RUN pip install --no-cache-dir --system --deploy pipenv && pipenv install --skip-lock && find . -name "*.pyc" -delete