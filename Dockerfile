#To build site avant de le deployer sur nginx
FROM python:3.9.16-alpine as build
WORKDIR /app
COPY . .
RUN pip install mkdocs
RUN mkdocs build 


FROM nginx:1.23.2
COPY --from=build /app/site /usr/share/nginx/html
