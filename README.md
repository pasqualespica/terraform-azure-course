# DevOps expert using Terraform on Azure

https://github.com/in4it/terraform-azure-course
## Table of Contents

- [DevOps expert using Terraform on Azure](#devops-expert-using-terraform-on-azure)
  - [Table of Contents](#table-of-contents)
  - [Intstall](#intstall)
  - [Introduction to terraform HCL](#introduction-to-terraform-hcl)
  - [Terraform with Azure](#terraform-with-azure)
  - [Azure Services](#azure-services)
  - [Advanced Terraform](#advanced-terraform)
  - [More Azure Services](#more-azure-services)

## Intstall

- [terraform](https://www.terraform.io/)
- [azure](https://docs.microsoft.com/it-it/cli/azure/install-azure-cli-macos?view=azure-cli-latest)

## Introduction to terraform HCL

[Configuration Language](https://www.terraform.io/docs/configuration/index.html) 

- [variables](https://www.terraform.io/docs/configuration/variables.html)
- [functions](https://www.terraform.io/docs/configuration/functions/)
- [resources](https://www.terraform.io/docs/configuration/resources.html) require -[providers](https://www.terraform.io/docs/configuration/providers.html)
- []

see `main.tf`
```tf

> var.myvar
hello terraform

> "${var.myvar}"
hello terraform
```

```tf
> var.mymap
{
  "1" = "valore"
  "valore" = "20000"
}
> var.myvar[valore]

> var.mymap["valore"]
20000
```

```
> var.mylist
[
  "1",
  "2",
  "3",
  "fefq",
]

> var.mylist[2]
3
> element(var.mylist, 2)
3
> slice(var.mylist, 1,3)
[
  "2",
  "3",
]
```

see ``



## Terraform with Azure

wdwd

## Azure Services

dcdcd


## Advanced Terraform

dcdc

## More Azure Services

dwwd



