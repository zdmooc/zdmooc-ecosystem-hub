.PHONY: info clone check render

info:
	@echo "Repo: zdmooc-ecosystem-hub"
	@echo "Edit catalog/repos.yaml then run: make render"

clone:
	./scripts/clone-all.sh

check:
	./scripts/check-repos.sh

render:
	./scripts/render-catalog.sh > docs/20-repo-catalog.md
	 "Generated docs/20-repo-catalog.md"
