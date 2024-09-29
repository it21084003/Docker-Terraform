// docker image
resource "docker_image" "docker_tf_image" {
  name         = "anttmin/docker-nginx-tf:dockerNgTf"
  keep_locally = false
}

// start docker container
resource "docker_container" "nginx_container" {
  image = docker_image.docker_tf_image.image_id
  name  = "nginx"

  ports {
    internal = "1918"
    external = "8080"
  }
}