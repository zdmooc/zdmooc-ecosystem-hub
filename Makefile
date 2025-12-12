.PHONY: info clone check render

info:
	@echo "Repo: zdmooc-ecosystem-hub"
	@echo "Edit catalog/repos.yaml then run: make render"

clone:
	./scripts/clone-all.sh

check:
	./scripts/check-repos.sh

render:
	python scripts/render-catalog.py > docs/20-repo-catalog.md
	@echo "Generated docs/20-repo-catalog.md"
