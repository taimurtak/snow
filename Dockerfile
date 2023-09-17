FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install dbt-snowflake
EXPOSE 80
CMD ["dbt", "--version"]