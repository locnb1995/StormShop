# StormShop
Project have built with Spring Cloud , Sql Server and Docker.

Set up Project

--------------------- Pull Sql Server 2019 from docker

1. Run [sudo docker pull mcr.microsoft.com/mssql/server:2019-latest] (remove sudo if use window)

--------------------- Init DB

Notes : **Only need to do it once when the container db of application does not exists. If container db of application already existed , skip this step.**
1. Go to **StormShop** folder
2. Run [sudo docker rm volume storm-shop-mssql-data volume storm-shop-mssql-log volume storm-shop-mssql-secrets] (remove sudo if use window)
3. Run [sudo docker-compose -f docker-compose.db.yml up --build] (remove sudo if use window)
4. Use tool as DBEaver , Sql Server Management , ... connect to DB and create 1 DB with name : "resources". See DB Info in next step.
5. DB Info
   - Host : http://localhost:1433
   - Username : SA
   - Password : Nguyenbaoloc1995
5. After that, you can stop and remove exist db container in this step and re-init in next step.


----------------------------------------- BUILD CONTAINER SERVICE
1. With Linux, Run [bash run_initservice.sh]
2. With Window, Run .... (Need Invest)

   
----------------------------------------- CHECK APPLICATION RUN
1. Go to Eureka Server : "http://localhost:8671"
2. Check status of services in application.
