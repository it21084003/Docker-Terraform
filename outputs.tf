output "nginx_image_id" {
  value       = docker_image.docker_tf_image.image_id
  description = "The nginx image id"
}

output "nginx_container_id" {
  value       = docker_container.nginx_container.id
  description = "The nginx container ID"
}