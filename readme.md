# Python Applicaton using PyArrows Client



###  Use:

1. from the root run the shell script
* this builds the docker image and runs it (running it is not necessary and just for testing) 

```
./run.sh
```

2. push the image to a repository in GCP Artifact Repository: follow syntax/pattern of below. 
For more information visit GCP Artifact Repository documentation: https://cloud.google.com/artifact-registry/docs/docker/quickstart
```
docker push us-east1-docker.pkg.dev/neo4j-se-team-201905/alexander-pyarrow-client/pyarrow-client
```


