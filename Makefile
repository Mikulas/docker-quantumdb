REPO = mikulas/quantumdb
VERSION = 0.2.1

build:
	docker build --build-arg version=${VERSION} --tag ${REPO}:${VERSION} .
