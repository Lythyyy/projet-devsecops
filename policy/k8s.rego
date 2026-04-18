package main
import rego.v1

deny contains msg if {
  input.kind == "Deployment"
  not input.spec.template.spec.securityContext.runAsNonRoot
  msg := "POLITIQUE DE SECURITE : Le deploiement est refuse. Le Pod doit configurer 'runAsNonRoot: true' dans son securityContext pour ne pas tourner en root."
}