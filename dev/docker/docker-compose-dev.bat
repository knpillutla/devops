rem cd C:\Users\krishna.pillutla\eclipse-workspace\picking
FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker stop %i
FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i
docker-compose -f docker-compose-dev-elk.yml up --build -d
docker-compose -f docker-compose-dev-kafka.yml up --build -d
docker-compose -f docker-compose-dev-postgres.yml up --build -d
docker-compose -f docker-compose-dev-picking.yml up --build -d
rem docker-compose -f docker-compose-azure.yml up --build -d