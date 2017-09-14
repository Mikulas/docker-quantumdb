REPO = mikulas/quantumdb
VERSION = 0.2.1

_: build publish

build:
	docker build --build-arg version=${VERSION} --tag ${REPO}:${VERSION} .
	docker tag ${REPO}:${VERSION} ${REPO}:latest

publish:
	docker push ${REPO}:${VERSION}
	docker push ${REPO}:latest
