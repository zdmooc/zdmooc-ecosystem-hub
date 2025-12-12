# Catalogue des repos

Source: `catalog/repos.yaml`

| Repo | Catégorie | Statut | Objectif | Quickstart | Dépendances |
|---|---|---|---|---|---|
| [rh-openshift-architect-lab](https://github.com/zdmooc/rh-openshift-architect-lab) | labs | active | Hub principal de labs OpenShift (certifs EX280/EX288/...) + exercices. | Voir README du repo | argocd-complete-masterclass<br>openshift-reference-apps |
| [argocd-complete-masterclass](https://github.com/zdmooc/argocd-complete-masterclass) | masterclass | active | GitOps Argo CD (App-of-Apps, ApplicationSet, RBAC, multi-env/cluster). | make install<br>make bootstrap |  |
| [docker-podman-complete-masterclass](https://github.com/zdmooc/docker-podman-complete-masterclass) | masterclass | active | Docker & Podman (build/run, volumes, networks, compose, rootless, security). | export ENGINE=docker # ou podman<br>make lab01 |  |
| [kafka-complete-masterclass](https://github.com/zdmooc/kafka-complete-masterclass) | masterclass | active | Kafka en pratique (local Redpanda + UI, concepts, ops, Strimzi). | make lab01<br>make lab02<br>make lab03 |  |
| [openshift-platform-bootstrap](https://github.com/zdmooc/openshift-platform-bootstrap) | blueprint | planned | Bootstrap cluster (CRC/Kind/OCP), prérequis, conventions, scripts. |  |  |
| [openshift-gitops-standard-6files](https://github.com/zdmooc/openshift-gitops-standard-6files) | standards | planned | Standard GitOps '6 fichiers' (sandbox/build/preprod/prod + users admin/edit). |  |  |
| [openshift-observability-blueprints](https://github.com/zdmooc/openshift-observability-blueprints) | blueprint | planned | Prometheus/Grafana/Loki, ServiceMonitors, dashboards, alerting. |  |  |
| [openshift-security-policy-pack](https://github.com/zdmooc/openshift-security-policy-pack) | blueprint | planned | Kyverno/Gatekeeper, PSA/PSS, LimitRange/ResourceQuota, règles org. |  |  |
| [openshift-networking-blueprints](https://github.com/zdmooc/openshift-networking-blueprints) | blueprint | planned | Routes/Ingress, NetworkPolicies, patterns multi-tenant, egress. |  |  |
| [openshift-cicd-blueprints](https://github.com/zdmooc/openshift-cicd-blueprints) | blueprint | planned | Tekton/Jenkins, Nexus, conventions build/publish, supply-chain. |  |  |
| [openshift-reference-apps](https://github.com/zdmooc/openshift-reference-apps) | reference-apps | planned | Apps démo prêtes GitOps (Kustomize/Helm), multi-env, probes, HPA/PDB. |  |  |
| [openshift-event-driven-lab](https://github.com/zdmooc/openshift-event-driven-lab) | reference-apps | planned | Event-driven complet (Kafka + consumers/producers + observabilité). |  |  |
| [openshift-sso-keycloak-patterns](https://github.com/zdmooc/openshift-sso-keycloak-patterns) | blueprint | planned | SSO Keycloak (OIDC), mapping groupes/rôles, exemples d’intégration. |  |  |
| [openshift-sre-runbooks](https://github.com/zdmooc/openshift-sre-runbooks) | runbooks | planned | Runbooks incidents (networking, storage, operators, gitops, certs, quotas). |  |  |
