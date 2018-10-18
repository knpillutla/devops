rem cd C:\Users\krishna.pillutla\eclipse-workspace\picking
rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker stop %i
rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i
docker stop customer-order
docker rm customer-order
docker-compose -f docker-compose-dev-customer-order.yml up --build -d
docker logs -f customer-order
