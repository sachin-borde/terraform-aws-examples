output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
}

output "cluster_certificate_authority" {
  value = aws_eks_cluster.main.certificate_authority[0].data
}

output "node_group_arn" {
  value = aws_eks_node_group.main.arn
}

output "configure_kubectl" {
  value = <<EOT
Run the following command to configure kubectl:
aws eks --region ${var.region} update-kubeconfig --name ${aws_eks_cluster.main.name}
EOT
}
