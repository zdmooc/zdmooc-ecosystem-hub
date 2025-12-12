# Cartographie (écosystème)

```mermaid
flowchart LR
  A[rh-openshift-architect-lab] --> B[argocd-complete-masterclass]
  A --> C[docker-podman-complete-masterclass]
  A --> D[kafka-complete-masterclass]

  A --> E[openshift-reference-apps]
  B --> E

  A --> F[openshift-platform-bootstrap]
  A --> G[openshift-gitops-standard-6files]
  A --> H[openshift-observability-blueprints]
  A --> I[openshift-security-policy-pack]
  A --> J[openshift-networking-blueprints]
  A --> K[openshift-cicd-blueprints]
  A --> L[openshift-sre-runbooks]
  D --> M[openshift-event-driven-lab]
  A --> N[openshift-sso-keycloak-patterns]
```

Interprétation :
- `rh-openshift-architect-lab` = **pédagogie & certification**
- `*-masterclass` = **apprentissage profond**
- `openshift-*-blueprints` / `*-standard-*` = **assets réutilisables en mission**
- `openshift-reference-apps` = **démos GitOps multi-env**
