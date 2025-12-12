# Standards (conventions)

## Conventions transverses
- Un repo = `README.md` + `docs/` + `scripts/` + `examples/` (si pertinent)
- Un “lab” = objectif + commandes + validation + cleanup
- Zéro secret en clair (prévoir SealedSecrets/External Secrets selon repo)

## GitOps (règles minimales)
- Tout changement passe par Git (PR)
- `main` = déclaratif, reproductible
- Multi-env : overlays `env/dev|preprod|prod`
- App-of-Apps ou ApplicationSet (choix documenté)
