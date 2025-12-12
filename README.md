# zdmooc-ecosystem-hub

Hub de documentation qui **résume et relie** l’écosystème de dépôts GitHub `zdmooc` autour de :
- OpenShift / Kubernetes (labs & certification)
- GitOps / Argo CD
- Docker / Podman
- Kafka (local + Strimzi)
- Blueprints “prod-like” (sécurité, observabilité, networking, CI/CD)

## Objectifs
- Avoir **une vue d’ensemble** (cartographie, dépendances, “quoi sert à quoi”).
- Avoir des **parcours** (learning paths) et des checklists.
- Centraliser les **standards** (naming, conventions GitOps, structure des repos).
- Avoir un **catalogue** machine-readable (`catalog/repos.yaml`) et une génération automatique de table.

## Catalogue
- Source de vérité : `catalog/repos.yaml`
- Table rendue : `docs/20-repo-catalog.md` (générée ou maintenue)

## Quickstart
### Cloner tous les repos (dans un workspace)
```bash
./scripts/clone-all.sh /c/workspaces/openshift2026
```

### Vérifier l’accessibilité des repos (git ls-remote)
```bash
./scripts/check-repos.sh
```

### Générer la table Markdown depuis `catalog/repos.yaml`
```bash
python scripts/render-catalog.py > docs/20-repo-catalog.md
```

## Structure
- `catalog/` : inventaire YAML des repos (catégorie, statut, quickstart, dépendances)
- `docs/` : cartographie, parcours, standards, backlog
- `scripts/` : utilitaires (clone, check, render)

## Mise à jour
- Date : 2025-12-12
- Ajouter/modifier un repo : éditer `catalog/repos.yaml`, puis régénérer le catalogue.
