.PHONY: *

docs:
	rm -rf src || true
	speakeasy generate docs --schema /github/workspace/repo/openapi.yaml --out ./ --langs python,curl --compile

build:
	pnpm run build

run-server:
	$(MAKE) build
	go run server.go