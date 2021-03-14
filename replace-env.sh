#!/bin/bash
# replace enviroment variables on `judge0.conf`
sed -i -e 's/${AUTHN_TOKEN}/'"$AUTHN_TOKEN"'/g' judge0.conf
sed -i -e 's/${AUTHZ_TOKEN}/'"$AUTHZ_TOKEN"'/g' judge0.conf
sed -i -e 's/${REDIS_PASSWORD}/'"$REDIS_PASSWORD"'/g' judge0.conf
sed -i -e 's/${POSTGRES_DB}/'"$POSTGRES_DB"'/g' judge0.conf
sed -i -e 's/${POSTGRES_USER}/'"$POSTGRES_USER"'/g' judge0.conf
sed -i -e 's/${POSTGRES_PASSWORD}/'"$POSTGRES_PASSWORD"'/g' judge0.conf
sed -i -e 's/${SECRET_KEY_BASE}/'"$SECRET_KEY_BASE"'/g' judge0.conf

# replace environment variables on `docker-compose.https.yml`
sed -i -e 's/${VIRTUAL_HOST}/'"$VIRTUAL_HOST"'/g' docker-compose.https.yml
sed -i -e 's/${LETSENCRYPT_EMAIL}/'"$LETSENCRYPT_EMAIL"'/g' docker-compose.https.yml