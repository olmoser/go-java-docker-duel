
all:
	cd go && make
	cd java && mvn clean package docker:build

run:
	docker run -d java-go-duel/hello-go
	docker run -d java-go-duel/hello-java:1.0.0.BUILD-SNAPSHOT
	docker run \
	  --volume=/:/rootfs:ro \
	  --volume=/var/run:/var/run:rw \
	  --volume=/sys:/sys:ro \
	  --volume=/var/lib/docker/:/var/lib/docker:ro \
	  --publish=8080:8080 \
	  --detach=true \
	  --name=cadvisor \
	  google/cadvisor:latest

clean:
	cd go && make clean
	cd java && mvn clean

.PHONY: clean
