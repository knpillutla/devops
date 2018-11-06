rem cd C:\Users\krishna.pillutla\eclipse-workspace\picking
rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker stop %i
rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i
rem call docker stop kafka
rem call docker stop zookeeper
rem call docker stop config-server
rem call docker stop postgres
call docker stop picking
call docker stop packing
call docker stop shipping
call docker stop inventory
call docker stop orderplanner
call docker stop customer-order
call docker stop user
call docker stop eventMonitor
call docker stop myredis
rem call docker rm kafka
rem call docker rm zookeeper
rem call docker rm config-server
rem call docker rm postgres
call docker rm picking
call docker rm packing
call docker rm shipping
call docker rm inventory
call docker rm orderplanner
call docker rm customer-order
call docker rm user
call docker rm eventMonitor
call docker rm myredis
rem docker-compose -f docker-compose-dev-elk.yml up --build -d
rem docker-compose -f docker-compose-dev-postgres.yml up --build -d
rem docker-compose -f docker-compose-dev-kafka.yml up --build -d
rem docker-compose -f docker-compose-dev-config-server.yml up --build -d
docker-compose -f docker-compose-dev-all-services.yml up --build -d
rem docker-compose -f docker-compose-dev-kafka.yml up --build -d
rem docker-compose -f docker-compose-dev-postgres.yml up --build -d
rem docker-compose -f docker-compose-dev-picking.yml up --build -d
rem docker-compose -f docker-compose-azure.yml up --build -d