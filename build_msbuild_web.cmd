@echo off

set IMAGE=msb-web
set VERSION=v1
set PREFIX=thienptran/

docker build -m 8G -f Dockerfile.msb-web -t %PREFIX%%IMAGE%:%VERSION% .
docker push %PREFIX%%IMAGE%:%VERSION%
docker tag %PREFIX%%IMAGE%:%VERSION% %PREFIX%%IMAGE%:latest
