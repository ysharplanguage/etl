FROM postgres:13.3-alpine

COPY seed.sql /docker-entrypoint-initdb.d/001_data.sql

ENV PGDATA=/data
