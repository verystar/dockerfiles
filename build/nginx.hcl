target "common" {
  dockerfile = "Dockerfile"
  context = "nginx"
}

target "nginx-1-23-html" {
  inherits = ["common"]
  platforms = ["linux/amd64"]
  args = {
    nginx_version = "1.23.4"
    default_conf = "nginx.vh.html.conf"
  }
  tags = [
    "registry.verystar.net/library/nginx:1.23",
    "registry.verystar.net/library/nginx:1.23.4",
  ]
}
