rem setlocal
rem call FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker stop %i
rem call FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i
rem call FOR /f "tokens=*" %i IN ('docker images') DO docker rmi %i
rem endlocal

call gcloud auth configure-docker

PUSHD .
call build-docker-image-gcp-configservice.bat
POPD

PUSHD .
call build-docker-image-gcp-picking.bat
POPD


rem docker-compose -f docker-compose-gcp-elk.yml up --build -d
rem docker-compose -f docker-compose-gcp-kafka.yml up --build -d
rem docker-compose -f docker-compose-gcp-postgres.yml up --build -d

rem docker-compose -f docker-compose-gcp-logstash.yml up --build -d
rem docker-compose -f docker-compose-gcp-picking-nologstash.yml up --build -d


rem docker-compose -f docker-compose-gcp-picking.yml up --build -d
rem docker-compose -f docker-compose-azure.yml up --build -d
