# DevOps expert using Terraform on Azure

https://github.com/in4it/terraform-azure-course
## Table of Contents

- [DevOps expert using Terraform on Azure](#devops-expert-using-terraform-on-azure)
  - [Table of Contents](#table-of-contents)
  - [Intstall](#intstall)
  - [Introduction to terraform HCL](#introduction-to-terraform-hcl)
    - [Var, types, ...](#var-types-)
    - [Commands](#commands)
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

see `p7b-terraform-test/main.tf`
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

see `p7b-terraform-test/resources.tf`

ogni volta che si aggiunge o modifica una `resource`

```
terraform init
```

poi

```
terraform console
```

e scrivi 

```
> var.AMIS[var.AWS_REGION]
my ami
```

---

### Var, types, ...

<img src="media/00_var_type.png" alt="Logo" width="600" height="00">
<img src="media/01_var_type.png" alt="Logo" width="600" height="300">
<img src="media/02_complex_type.png" alt="Logo" width="600" height="300">
<img src="media/03_list_map_set.png" alt="Logo" width="600" height="300">
<img src="media/04_object.png" alt="Logo" width="600" height="300">
<img src="media/05_tuple.png" alt="Logo" width="600" height="300">
<img src="media/06_mix1.png" alt="Logo" width="600" height="300">
<img src="media/07_mix2.png" alt="Logo" width="600" height="300">


### Commands
<img src="media/08_cmd_apply.png" alt="Logo" width="600" height="200">
<img src="media/09_cmd_plan.png" alt="Logo" width="600" height="200">
<img src="media/10_cmd_init.png" alt="Logo" width="600" height="200">
<img src="media/11_cmd_destroy.png" alt="Logo" width="600" height="200">

---

`01_first-steps`

**What is my public IP**

https://www.whatsmyip.org/

`curl ifconfig.so`

**Generate my public key**

```
ssh-keygen -f mykey
```


## Terraform with Azure


## Azure Services


## Advanced Terraform


## More Azure Services




