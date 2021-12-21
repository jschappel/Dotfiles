#!/bin/bash
DEV=$HOME/Github/JoorRepos/dev

if [ "$1" != "" ]; then
  cd $DEV
  docker-compose exec backend.python ./scripts/test grpc_service.services."$1".tests.test_service
else 
  echo "Please supply a file to test"
fi
