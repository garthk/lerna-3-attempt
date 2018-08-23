.PHONY: bootstrap

bootstrap: node_modules
	node_modules/.bin/lerna bootstrap
	cd packages/top ; DEBUG=\* node -e "require('.')"

node_modules: package.json
	npm install

clean:
	rm -rf node_modules
	rm -rf packages/top/node_modules
	rm -rf packages/middle/node_modules
	rm -rf packages/bottom/node_modules
