build:
	docker build --build-arg UBUNTU_VERSION=20.04 -t srslte-docker .

buildsrc:
	docker build --build-arg UBUNTU_VERSION=20.04 --build-arg INSTALL_SCRIPT=install-srslte-from-source.sh -t srslte-docker-src .

run:
	docker run --name srslte --rm -ti --privileged -v $$PWD:/data -v /dev:/dev srslte-docker /bin/bash

runsrc:
	docker run --name srslte-src --rm -ti --privileged -v $$PWD:/data -v /dev:/dev srslte-docker-src /bin/bash
