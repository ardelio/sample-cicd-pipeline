.PHONY: clean mk-dist-dir package

clean:
	@rm -rf dist

mk-dist-dir:
	@mkdir dist

package: clean mk-dist-dir
	@tar -cvzf ./dist/build.tar.gz assets
