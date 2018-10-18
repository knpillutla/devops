rem setlocal
rem call FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker stop %i
rem call FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i
rem call FOR /f "tokens=*" %i IN ('docker images') DO docker rmi %i
rem endlocal

call gcloud auth configure-docker

rem PUSHD .
rem call build-dependencies-gcp.bat
rem POPD


PUSHD .
call build-docker-image-gcp-configservice.bat %1
POPD

PUSHD .
call build-docker-image-gcp-customer-order.bat %1
POPD

PUSHD .
call build-docker-image-gcp-orderplanner.bat %1
POPD

PUSHD .
call build-docker-image-gcp-inventory.bat %1
POPD

PUSHD .
call build-docker-image-gcp-picking.bat %1
POPD

PUSHD .
call build-docker-image-gcp-packing.bat %1
POPD

PUSHD .
call build-docker-image-gcp-shipping.bat %1
POPD

rem docker-compose -f docker-compose-gcp-elk.yml up --build -d
rem docker-compose -f docker-compose-gcp-kafka.yml up --build -d
rem docker-compose -f docker-compose-gcp-postgres.yml up --build -d

rem docker-compose -f docker-compose-gcp-logstash.yml up --build -d
rem docker-compose -f docker-compose-gcp-picking-nologstash.yml up --build -d


rem docker-compose -f docker-compose-gcp-picking.yml up --build -d
rem docker-compose -f docker-compose-azure.yml up --build -d
