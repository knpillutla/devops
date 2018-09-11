rem cd C:\Users\krishna.pillutla\eclipse-workspace\picking
rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker stop %i
rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i
docker stop postgres
docker stop picking
docker rm postgres
docker rm picking
docker-compose -f docker-compose-dev-postgres.yml up --build -d
docker-compose -f docker-compose-dev-picking.yml up --build -d
docker logs -f picking
