## go-java-docker-duel
Comparing container and memory footprint of a `hello-world` time ticker written in Go and Java on OSX.

To understand how static Go binaries for Docker are built on OSX, please refer to [this excellent artice](https://developer.atlassian.com/blog/2015/07/osx-static-golang-binaries-with-docker/) by [Nicola Paolucci](https://developer.atlassian.com/blog/authors/npaolucci), which is also the source of the code in the `Makefile`s used here.

## build

```
make 
```

## run containers

```
make run
```

## check what's happening

To see the final image size, run `docker images | grep hello`:

```
REPOSITORY                                           TAG                    IMAGE ID            CREATED             VIRTUAL SIZE
java-go-duel/hello-java                              1.0.0.BUILD-SNAPSHOT   d49a9dbd0d93        6 minutes ago       161.7 MB
java-go-duel/hello-go                                latest                 1468faf3c843        59 minutes ago      6.905 MB
```

To verify that all containers are started, run `docker ps`. You should see output similar to this:

```
ONTAINER ID        IMAGE                                          COMMAND                  CREATED             STATUS              PORTS                    NAMES
ff5cde3cbac2        google/cadvisor:latest                         "/usr/bin/cadvisor"      3 minutes ago       Up 3 minutes        0.0.0.0:8080->8080/tcp   cadvisor
0b0a92527d70        java-go-duel/hello-java:1.0.0.BUILD-SNAPSHOT   "java -jar /module.ja"   3 minutes ago       Up 3 minutes                                 backstabbing_poitras
a6826247b2bd        java-go-duel/hello-go                          "/main"                  3 minutes ago       Up 3 minutes        8080/tcp                 focused_jang
```

Open a webbrowser and go to `http://localhost:8080/docker`. Select the containers to see the memory footprint. 

