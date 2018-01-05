harbor
================

[![Travis-CI Build Status](https://travis-ci.org/hrbrmstr/harbor.svg?branch=master)](https://travis-ci.org/hrbrmstr/harbor) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/nuest/harbor?branch=appveyor&svg=true)](https://ci.appveyor.com/project/nuest/harbor)

Tools to Manage 'Docker' Images and Containers

``` r
library(harbor)

docker_pull(image = "hello-world")
```

    ## Using default tag: latest
    ## latest: Pulling from library/hello-world
    ## Digest: sha256:ca0eeb6fb05351dfc8759c20733c91def84cb8007aa89a5bf606bc8b315b9fc7
    ## Status: Image is up to date for hello-world:latest

``` r
res <- docker_run(image = "hello-world", capture_text = TRUE)

cat(attr(res, "output"))
```

    ## 
    ## Hello from Docker!
    ## This message shows that your installation appears to be working correctly.
    ## 
    ## To generate this message, Docker took the following steps:
    ##  1. The Docker client contacted the Docker daemon.
    ##  2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    ##     (amd64)
    ##  3. The Docker daemon created a new container from that image which runs the
    ##     executable that produces the output you are currently reading.
    ##  4. The Docker daemon streamed that output to the Docker client, which sent it
    ##     to your terminal.
    ## 
    ## To try something more ambitious, you can run an Ubuntu container with:
    ##  $ docker run -it ubuntu bash
    ## 
    ## Share images, automate workflows, and more with a free Docker ID:
    ##  https://cloud.docker.com/
    ## 
    ## For more examples and ideas, visit:
    ##  https://docs.docker.com/engine/userguide/
