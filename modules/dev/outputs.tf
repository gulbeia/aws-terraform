variable "vpc subnets_id" {
  value       = aws_vpc.subnet.id
  description = "The VPC ID of the subnet we created."
}