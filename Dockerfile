FROM python:3.9.15
WORKDIR /app
COPY . .
RUN pip install mkdocs
RUN mkdocs build 
WORKDIR /app/site
EXPOSE 8080
CMD python -m http.server 8080 
