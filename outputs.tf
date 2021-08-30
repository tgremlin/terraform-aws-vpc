output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnets[*].id
}

output "public_subnets" {
  value = module.vpc.public_subnets[*].id
}

output "database_subnets" {
  value = module.vpc.database_subnets[*].id
}

output "azs" {
  value = module.vpc.azs[*].id
}