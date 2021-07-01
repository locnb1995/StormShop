#!/bin/sh
PASSWORD="Loc19081995"
echo "${PASSWORD}" | sudo -S docker exec -i storm-shop-db-init /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P Nguyenbaoloc1995 -i initdb.sql
cd eurekaserver/
echo "${PASSWORD}" | sudo -S docker build --tag storm-shop-eureka-server .
cd ..
cd gateway/
echo "${PASSWORD}" | sudo -S docker build --tag storm-shop-gateway .
cd ..
cd authentication/
echo "${PASSWORD}" | sudo -S docker build --tag storm-shop-authentication .
cd ..
cd authorization/
echo "${PASSWORD}" | sudo -S docker build --tag storm-shop-authorization .
cd ..
echo "${PASSWORD}" | sudo -S docker-compose -f docker-compose.dev.yml up --build