rem cd C:\Users\krishna.pillutla\eclipse-workspace\picking
docker-compose -f docker-compose-azure-dev-elk.yml up --build -d
docker-compose -f docker-compose-azure-dev-picking.yml up --build -d
rem docker-compose -f docker-compose-azure.yml up --build -d