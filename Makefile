build:
	$(eval tmp := builder)
	docker build -t $(tmp) .
	docker run -v `pwd`/output:/mnt/output -it $(tmp)
