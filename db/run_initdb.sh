#!/bin/sh
PASSWORD="Loc19081995"
echo "${PASSWORD}" | sudo -S docker build --tag storm-shop-db-image .
echo "${PASSWORD}" | sudo -S docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Nguyenbaoloc1995' -p 1433:1433 --user root --name storm_db -h stormshop_db -v storm-shop-mssql-data:/var/opt/mssql/data -v storm-shop-mssql-log:/var/opt/mssql/log -v storm-shop-mssql-secrets:/var/opt/mssql/secrets -d storm-shop-db-image
