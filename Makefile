build:
	docker build --build-arg UBUNTU_VERSION=19.10 -t srslte-docker .

run:
	docker run --rm -ti --privileged -v $$PWD:/data -v /dev:/dev srslte-docker /bin/bash
