@echo off

set IMAGE=msb-web-data
set VERSION=v1
set PREFIX=thienptran/

docker build -m 8G -f Dockerfile.msb-web-data -t %PREFIX%%IMAGE%:%VERSION% .
docker push %PREFIX%%IMAGE%:%VERSION%
docker tag %PREFIX%%IMAGE%:%VERSION% %PREFIX%%IMAGE%:latest
