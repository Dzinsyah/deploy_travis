FROM python:3.6.7
MAINTAINER portofolio "dzinsyah@alphatech.id"
RUN mkdir -p /portofolio
COPY . /portofolio
RUN sudo apt install python-pip
RUN pip install -r /portofolio/requirements.txt
WORKDIR /portofolio
ENTRYPOINT ["python3"]
CMD ["app.py"]
