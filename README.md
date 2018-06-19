# go-kubernetes-template

_I found myself writing this boiler plate at least twice a month_

## template areas to change

- Dockerfile `PROJECT_NAME` needs to be set
- enviroments/default.yaml


## requirements

- `dep init` to be run
- go get github.com/AlexsJones/vortex  #For interpolating kubernetes syntax


## Usage

Once templated values have been set in the dockerfile and the kubernetes template.
Follow the following sequence to deploy

```
gcloud docker build -t NAME .
gcloud docker tag NAME us.gcr.io/PROJECT/NAME:latest
cd kubernetes
./update_build.sh default NAME:latest
./build_environment.sh default
kubectl create -f deployments/
```
