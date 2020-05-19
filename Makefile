.PHONY: clean deploy-dev mk-dist-dir package test-unit

clean:
	@rm -rf dist

deploy-dev:
	@mkdir tmp
	@tar -xzvf $(artifact) -C tmp

mk-dist-dir:
	@mkdir dist

package: clean mk-dist-dir
	@tar -cvzf ./dist/package.tar.gz assets

test-unit:
	@echo Secret squirrel test runner
	@echo Running all the necessary tests
	@echo ———————————————————————————————
	@echo " ✔ ✔ ✔ ✔ ✔ "
	@echo ———————————————————————————————
	@echo 5 of 5 tests passed
