variable "bucket" {
  type        = string
  description = "Name of the bucket to be created"
}

variable "bucket_is_prefix" {
  type        = bool
  description = "Use bucket name as prefix value to generate a unique bucket name"
}

variable "authenticated_read" {
  type        = bool
  description = "Owner gets FULL_CONTROL. Authenticated users have READ rights"
  default     = null
}

variable "aws_exec_read" {
  type        = bool
  description = ""
  default     = null
}

variable "enable_versioning" {
  type        = bool
  description = "Enable versioning for this bucket"
  default     = null
}

variable "grant_full_control" {
  type        = list(object({
    id        = string
  }))
  description = "Grantees get FULL_CONTROL"
  default     = null
}

variable "grant_read" {
  type        = list(object({
    id        = string
  }))
  description = "Allows grantees to list the objects in the bucket"
  default     = null
}

variable "grant_read_acp" {
  type        = list(object({
    id        = string
  }))
  description = "Allows grantees to read the bucket ACL"
  default     = null
}

variable "grant_write" {
  type        = list(object({
    id        = string
  }))
  description = "Allows grantees to create objects in the bucket"
  default     = null
}

variable "grant_write_acp" {
  type        = list(object({
    id        = string
  }))
  description = "Allows grantees to write the ACL for the applicable bucket"
  default     = null
}

variable "private" {
  type        = bool
  description = "Owner gets FULL_CONTROL. Delegated users have access. No one else has access rights"
  default     = null
}

variable "public_read" {
  type        = bool
  description = "Owner gets FULL_CONTROL. Everyone else has READ rights"
  default     = null
}

variable "public_read_write" {
  type        = bool
  description = "Owner gets FULL_CONTROL. Everyone else has READ and WRITE rights"
  default     = null
}

variable "recursive" {
  type        = bool
  description = "Delete bucket including objects inside"
  default     = null
}