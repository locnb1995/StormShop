#!/bin/sh
cd eurekaserver/
echo Loc19081995 | sudo -S docker build --tag storm-shop-eureka-server .
cd ..
cd gateway/
echo Loc19081995 | sudo -S docker build --tag storm-shop-gateway .
cd ..
cd authentication/
echo Loc19081995 | sudo -S docker build --tag storm-shop-authentication .
cd ..
cd authorization/
echo Loc19081995 | sudo -S docker build --tag storm-shop-authorization .
cd ..
echo Loc19081995 | sudo -S docker-compose -f docker-compose.dev.yml up --build