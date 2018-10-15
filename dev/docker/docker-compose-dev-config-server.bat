call docker stop kafka
call docker stop zookeeper
call docker stop config-server
call docker rm kafka
call docker rm zookeeper
call docker rm config-server
call docker stop myredis
call docker rm myredis
rem cd C:\Users\krishna.pillutla\eclipse-workspace\picking
rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker stop %i
rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i
rem docker-compose -f docker-compose-dev-elk.yml up --build -d
rem docker-compose -f docker-compose-dev-zookeeper.yml up --build -d

rem docker-compose -f docker-compose-dev-postgres.yml up --build -d
rem docker-compose -f docker-compose-dev-picking.yml up --build -d
rem docker-compose -f docker-compose-azure.yml up --build -d



docker-compose -f docker-compose-dev-kafka.yml up --build -d
docker-compose -f docker-compose-dev-config-server.yml up --build -d
docker logs -f config-server
docker run -p 6379:6379 --name myredis -d redis