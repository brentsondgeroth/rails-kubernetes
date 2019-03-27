#!/bin/bash
curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=<commit hash>\
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/brentgaither/rails-kubernetes/tree/master
