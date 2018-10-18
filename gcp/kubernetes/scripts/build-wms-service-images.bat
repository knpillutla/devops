PUSHD .
build-docker-image-gcp-configservice.bat %1
POPD

PUSHD .
build-docker-image-gcp-customer-order.bat %1
POPD

PUSHD .
build-docker-image-gcp-inventory.bat %1
POPD

PUSHD .
build-docker-image-gcp-orderplanner.bat %1
POPD

PUSHD .
build-docker-image-gcp-packing.bat %1
POPD

PUSHD .
build-docker-image-gcp-picking.bat %1
POPD

PUSHD .
build-docker-image-gcp-shipping.bat %1
POPD

