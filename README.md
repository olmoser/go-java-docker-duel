# go-java-docker-duel
Comparing container and memory footprint of a `hello-world` time ticker written in Go and Java on OSX.

To understand how static Go binaries for Docker are built on OSX, please refer to [this excellent artice](https://developer.atlassian.com/blog/2015/07/osx-static-golang-binaries-with-docker/) by [Nicola Paolucci](https://developer.atlassian.com/blog/authors/npaolucci), which is also the source of the code in the `Makefile`s used here.

# build

```
make 
```

# run containers

```
make run
```

