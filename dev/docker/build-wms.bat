SET GOOGLE_CLOUD_PROJECT_ID=bright-seer-219503
 
rem build dependencies
PUSHD .
call build-wms-dependencies.bat
POPD

rem build and tag images for google container registry
rem call build-wms-service-images.bat %GOOGLE_CLOUD_PROJECT_ID%
PUSHD .
build-wms-images.bat
POPD

