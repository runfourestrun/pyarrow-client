#!/bin/bash

export IMAGE="pyarrow-client-test"

docker build -t $IMAGE .

docker run  \
  -v '/Users/alexanderfournier/IdeaProjects/neo4j-arrow/python/:/usr/local/app' \
  -v '/Users/alexanderfournier/PycharmProjects/PyArrowsClient/app/:/usr/local/app/app' \
  $IMAGE
