variable  "db_option_group_name" {
    description  = "The name of the option group"
    type         = string
}

variable  "instance_class"  {
    description  = "The type of instance class"
    type         = string
}

variable  "allocated_storage"  {
    type         = number
}

variable   "max_allocated_storage"  {
    type         = number
}

variable   "port"  {
    description   = "Port number of this database"
    type          = number
}

variable   "iam_database_authentication_enabled"  {
    description   = "AWS IAM accounts enabled"
    type          = bool
}

variable    "vpc_security_group_ids"  {
   description   = "List of VPC security groups to associate with"
    type          = list
}

variable    "parameter_group_name"  {
    description   = "Name of the DB parameter group"
    type          = string
}    

variable   "major_engine_version" {
    description  = "The major version of the engine"  
    type         = string
}

variable  "options"  {
    description  = "A list of options to apply"
    type         = string
}

variable   "availability_zone" {
    description  = "A list of availability zones to apply"
    type         = number
}
