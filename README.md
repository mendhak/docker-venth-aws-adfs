This image wraps the [venth/aws-adfs](https://github.com/venth/aws-adfs) pip package.  

The Docker image is published at [mendhak/aws-adfs](https://hub.docker.com/r/mendhak/aws-adfs). 

The Github repo is at [mendhak/docker-venth-aws-adfs](https://github.com/mendhak/docker-venth-aws-adfs)

Example usage

    docker run -it --rm mendhak/aws-adfs login --adfs-host=myadfs.example.com --printenv --region eu-west-1

### How to build

Gets the latest release version from Github and build Dockerfile for that package version.

    export version=$(curl -s "https://api.github.com/repos/venth/aws-adfs/releases/latest" | jq -r '.tag_name' | sed 's/v//')
    docker build --build-arg version=${version} -t mendhak/aws-adfs:${version} .
    docker push mendhak/aws-adfs:${version} 
    docker push mendhak/aws-adfs:latest
