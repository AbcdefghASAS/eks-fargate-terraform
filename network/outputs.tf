output "aws_subnets_public" {
  value   = aws_subnet.publicsubnets.*.id
}

output "aws_subnets_private" {
  value   = aws_subnet.privatesubnets.*.id
}

output "vpc_id" {
  value  = aws_vpc.Main.id
}
