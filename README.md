# lambda-layers

The scripts in this repository make it easy to create Lambda layers with Linux binary packages. It contains the following scripts.

### install_layer.sh

As an example, you can run the following command to install the yum package for git

```bash
./install_layer.sh git
```

Behind the scenes this leverages a docker container that runs yumda. The result is a `git-layer` folder that contains the Linux executable for git

### run.sh

As an example, you can run the following command to run a docker container for git

```bash
./run.sh git
```

This launches a docker container based on lambci/lambda:python3.8 and mounts the `git-layer` directory to the `/opt` directory in the container and launches a bash shell

Within bash, you can access `git` on the command line

### publish_layer.sh

As an example, you can run the following command to publish a lambda layer for git. Be sure to set the AWS_PROFILE environment variable within the script before you run it

```bash
./publish_layer.sh
```

This zips up the folder created by install_layer.sh, and uploads it into a Lambda layer
