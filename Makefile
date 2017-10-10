build:
	$(eval tmp := builder)
	docker build -t $(tmp) .
	docker run -v `pwd`/output:/tmp/output -it $(tmp)

build-ci:
	cd /tmp
	sh ./build.sh
	mkdir -p /tmp/output
	mv *.deb /tmp/output
