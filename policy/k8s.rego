package main

deny[msg] {
  input.kind == "Deployment"
  not input.spec.template.spec.securityContext.runAsNonRoot
  msg = "POLITIQUE DE SECURITE : Le déploiement est refusé. Le Pod doit configurer 'runAsNonRoot: true' dans son securityContext pour ne pas tourner en root."
}