default: builddocker

buildgo:
	CGO_ENABLED=0 GOOS=linux go build -ldflags "-s" -a -installsuffix cgo -o main hello.go

builddocker:
	docker build -t java-go-duel/build-docker-go -f ./Dockerfile.build .
	docker run -t java-go-duel/build-docker-go /bin/true
	docker cp `docker ps -q -n=1`:/main .
	chmod 755 ./main
	docker build --rm=true --tag=java-go-duel/hello-go -f Dockerfile.static .

run: builddocker
	docker run java-go-duel/hello-go

clean:
	rm main

.PHONY: clean
