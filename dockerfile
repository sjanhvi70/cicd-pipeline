FROM  redhat/ubi8

RUN yum install python3 -y
RUN pip3 install Flask
COPY app.py /app.y
CMD ["python3" , "/app.py"]
