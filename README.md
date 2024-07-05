# terraform-mgc-storage-object-buckets

![Static Badge](https://img.shields.io/badge/Magalu_provider-0.19.3-blue)
![License](https://img.shields.io/github/license/cloudscript-technology/terraform-mgc-object-storage-buckets.svg)
![GitHub Release](https://img.shields.io/github/release/cloudscript-technology/terraform-mgc-object-storage-buckets.svg)

## Description

This Terraform module creates and manages object storage buckets on Magalu Cloud using the official `magalucloud/mgc` provider. It offers various configuration options through input variables to customize the bucket creation as needed.

## Features

- Creation of object storage buckets on Magalu Cloud
- Configuration of bucket permissions and access policies
- Support for bucket versioning
- Option to grant specific access rights to users or groups

## Usage

### Requirements

- [Terraform](https://www.terraform.io/downloads.html) >= 1.5.7
- Magalu Cloud account Terraform Provider == v0.19.3

### Providers

```hcl
terraform {
  required_providers {
    mgc = {
      source = "magalucloud/mgc"
      version = "0.19.3"
    }
  }
}
```

### Example Configuration

```hcl
module "object_storage_bucket" {
  source = "github.com/cloudscript-technology/terraform-mgc-storage-object-buckets?ref=0.0.1"

  bucket                = "my-bucket"
  bucket_is_prefix      = false
  authenticated_read    = false
  aws_exec_read         = false
  enable_versioning     = true
  grant_full_control    = []
  grant_read            = []
  grant_read_acp        = []
  grant_write           = []
  grant_write_acp       = []
  private               = true
  public_read           = false
  public_read_write     = false
  recursive             = false
}
```

### Variables


| Name                 | Type   | Description                                                                         | Default | Required |
| ---------------------- | -------- | ------------------------------------------------------------------------------------- | --------- | ---------- |
| `bucket`             | string | Name of the bucket to be created                                                    | n/a     | yes      |
| `bucket_is_prefix`   | bool   | Use bucket name as prefix value to generate a unique bucket name                    | false   | no       |
| `authenticated_read` | bool   | Owner gets FULL_CONTROL. Authenticated users have READ rights                       | false   | no       |
| `aws_exec_read`      | bool   | AWS execution read access                                                           | false   | no       |
| `enable_versioning`  | bool   | Enable versioning for this bucket                                                   | false   | no       |
| `grant_full_control` | list   | Grantees get FULL_CONTROL                                                           | []      | no       |
| `grant_read`         | list   | Allows grantees to list the objects in the bucket                                   | []      | no       |
| `grant_read_acp`     | list   | Allows grantees to read the bucket ACL                                              | []      | no       |
| `grant_write`        | list   | Allows grantees to create objects in the bucket                                     | []      | no       |
| `grant_write_acp`    | list   | Allows grantees to write the ACL for the applicable bucket                          | []      | no       |
| `private`            | bool   | Owner gets FULL_CONTROL. Delegated users have access. No one else has access rights | false   | no       |
| `public_read`        | bool   | Owner gets FULL_CONTROL. Everyone else has READ rights                              | false   | no       |
| `public_read_write`  | bool   | Owner gets FULL_CONTROL. Everyone else has READ and WRITE rights                    | false   | no       |
| `recursive`          | bool   | Delete bucket including objects inside                                              | false   | no       |

### Outputs


| Name          | Description                    |
| --------------- | -------------------------------- |
| `bucket_name` | The name of the created bucket |

## Contributions

Contributions are welcome! To contribute, follow these steps:

1. Fork this repository
2. Create a branch for your feature (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a new Pull Request

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.

## Author

This module is maintained by [CloudScript Technology](https://github.com/cloudscript-technology).

## References

- [Magalu Cloud Provider](https://registry.terraform.io/providers/magalucloud/mgc/latest)
- [Terraform Documentation](https://www.terraform.io/docs)
