@echo off
setlocal
call npm install || exit /b 1
call npx sushi . || exit /b 1
if not exist input-cache mkdir input-cache
if not exist input-cache\publisher.jar curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o input-cache\publisher.jar
java -Xmx4g -jar input-cache\publisher.jar -ig ig.ini
