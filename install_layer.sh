if [ $# -eq 0 ]; then 
  echo 'Syntax: ./install.sh <YUM_PACKAGE>' 
else 
  docker run --rm -v $(pwd)/$1-layer:/lambda/opt lambci/yumda:2 yum install -y $1
fi


# USAGE EXAMPLES
./install_layer.sh git
./install_layer.sh sqlite
