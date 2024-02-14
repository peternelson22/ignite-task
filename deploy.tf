provider "local" {}

resource "local_file" "kube_manifest" {
  filename = "deployment.yaml"
  content  = file("deployment.yaml")
}

resource "null_resource" "apply_manifest" {
  depends_on = [local_file.kube_manifest]

  provisioner "local-exec" {
    command = "kubectl apply -f ${local_file.kube_manifest.filename}"
    environment = {
      KUBECONFIG = var.kubeconfig_path
    }
  }
}
