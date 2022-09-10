# 基于python3.6镜像来构建owllook镜像
FROM python:3.6
ENV TIME_ZONE=Asia/Shanghai
RUN echo "${TIME_ZONE}" > /etc/timezone \
    && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
WORKDIR /owllook
ADD . /owllook
RUN pip install --no-cache-dir pipenv
RUN pipenv install --skip-lock 
RUN find . -name "*.pyc" -delete
CMD ["pipenv", "run", "gunicorn", "-c", "/owllook/config/gunicorn.py", "--worker-class", "sanic.worker.GunicornWorker", "owllook.server:app"]