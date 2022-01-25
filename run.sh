#!/bin/bash

export IMAGE="pyarrow-client-test"

docker build -t $IMAGE .

docker run -v /Users/alexanderfournier/IdeaProjects/neo4j-arrow/python:/usr/local/app/pyarrow \
  -it $IMAGE /bin/bash
