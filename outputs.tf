output "alb_dns_name" {
  description = "FQDN of ALB provisioned for service (if present)"
  value       = "${(var.alb_enable_https || var.alb_enable_http) ? element(concat(aws_alb.service.*.dns_name, list("")), 0) : "not created"}"
}

output "alb_zone_id" {
  description = "Route 53 zone ID of ALB provisioned for service (if present)"
  value       = "${(var.alb_enable_https || var.alb_enable_http) ? element(concat(aws_alb.service.*.zone_id, list("")), 0) : "not created"}"
}

output "task_iam_role_arn" {
  description = "ARN of the IAM Role for the ECS Task"
  value       = "${aws_iam_role.task.arn}"
}

output "task_iam_role_name" {
  description = "Name of the IAM Role for the ECS Task"
  value       = "${aws_iam_role.task.name}"
}

output "service_iam_role_arn" {
  description = "ARN of the IAM Role for the ECS Service"
  value       = "${aws_iam_role.service.arn}"
}

output "service_iam_role_name" {
  description = "Name of the IAM Role for the ECS Task"
  value       = "${aws_iam_role.service.name}"
}
