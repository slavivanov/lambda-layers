export AWS_PROFILE=vbalasu_admin

if [ $# -eq 0 ]; then
  echo "Syntax: ./publish_layer.sh <YUM_PACKAGE>"
else
  cd $1-layer
  zip -yr ../$1-layer.zip .
  cd ..
  aws lambda publish-layer-version --layer-name $1-layer --zip-file fileb://$1-layer.zip --description "$1 Layer"
fi
