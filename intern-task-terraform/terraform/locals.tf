locals {
  app_dockerfile = file("${path.module}/../../intern-task-app/Dockerfile")
  app_port       = tonumber(regex("(?m)^ENV PORT=([0-9]+)", local.app_dockerfile)[0])
}