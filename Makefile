build:
	docker build --build-arg UBUNTU_VERSION=20.04 -t srslte-docker .

run:
	docker run --name srslte --rm -ti --privileged -v $$PWD:/data -v /dev:/dev srslte-docker /bin/bash
