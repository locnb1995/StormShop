-- Pull Sql Server 2019 from docker
1. Run [sudo docker pull mcr.microsoft.com/mssql/server:2019-latest] (remove sudo if use window)

-- Init DB
Notes : **Only need to do it once when the container db of application does not exists. If container db of application already existed , skip this step.**
1. Go to **StormShop** folder
2. Run [sudo docker rm volume storm-shop-mssql-data
   && sudo docker rm volume storm-shop-mssql-log
   && sudo docker rm volume storm-shop-mssql-secrets] (remove sudo if use window)

3. Run [sudo docker-compose -f docker-compose.db.yml up --build] (remove sudo if use window)
4. Use tool as DBEaver , Sql Server Management , ... connect to DB and create 1 DB with name : resources
   DB host : http://localhost:1433
   DB Username : SA
   DB Password : Nguyenbaoloc1995
5. After that, you can stop and remove exist db container in this step and re-init in next step.

-- Build Eureka Server images
1. Go to **eurekaserver** folder
2. Run [sudo docker build --tag storm-shop-eureka-server .] (remove sudo if use window)

-- Build Gateway images
1. Go to **gateway** folder
2. Run [sudo docker build --tag storm-shop-gateway .] (remove sudo if use window)

-- Build Authentication images
1. Go to **authentication** folder
2. Run [sudo docker build --tag storm-shop-authentication .] (remove sudo if use window)

-- Build Authorization images
1. Go to **authorization** folder
2. Run [sudo docker build --tag storm-shop-authorization .] (remove sudo if use window)

-- Create Application with docker compose
1. Go to **StormShop** folder
2. Run [sudo docker-compose -f docker-compose.dev.yml up --build] (remove sudo if use window)
3. Go to Eureka Server : "http://localhost:8671"
4. Check status of services in application.