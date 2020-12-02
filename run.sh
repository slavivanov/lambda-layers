if [ $# -eq 0 ]; then
  echo "Syntax: ./run.sh <YUM_PACKAGE>"
else
  docker run -ti --rm --entrypoint bash -v $(pwd)/$1-layer:/opt lambci/lambda:python3.8
fi
