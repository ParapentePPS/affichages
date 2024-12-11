# Makefile pour déployer le site
# JM Bruel 2024
index.html: README.adoc
	asciidoctor README.adoc -o index.html

deploy: index.html
	@echo "========================================"
	@echo "==> Deploy updates "
	git commit -am "🤖 DEPLOY: last updates"; git pull; git push
