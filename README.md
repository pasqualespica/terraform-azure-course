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
    - [Resource Group](#resource-group)
    - [Virtual Networks](#virtual-networks)
    - [Virtual Machine](#virtual-machine)
    - [Network Security Group](#network-security-group)
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

### Resource Group
<img src="media/01-rg.png" alt="Logo" width="600" height="300">
<img src="media/02-rg.png" alt="Logo" width="600" height="300">
<img src="media/03-rg.png" alt="Logo" width="600" height="300">
<img src="media/04-rg.png" alt="Logo" width="600" height="300">
<img src="media/05-rg.png" alt="Logo" width="600" height="300">
<img src="media/06-rg.png" alt="Logo" width="600" height="300">
<img src="media/07-rg.png" alt="Logo" width="600" height="300">


[providers](https://www.terraform.io/docs/providers/index.html)

`02_resource-group` 

```
cd 02_resource-group

terraform init

terraform apply

### then type `yes`

(base) $ terraform console
> var.location
westeurope
> azurerm_resource_group.demo.id
/subscriptions/3cdf66cf-94eb-4c70-b74c-5c9a21d7a4e3/resourceGroups/resource-group-demo
> azurerm_resource_group.demo.name
resource-group-demo
> azurerm_resource_group.demo.location
westeurope
> azurerm_resource_group.demo.tags
{
  "env" = "resource-group-demo"
}
> azurerm_resource_group.demo.tags["env"]
resource-group-demo

```

### Virtual Networks

<img src="media/01-vnet.png" alt="Logo" width="600" height="300">
<img src="media/02-vnet.png" alt="Logo" width="600" height="300">
<img src="media/03-vnet.png" alt="Logo" width="600" height="300">
<img src="media/04-vnet.png" alt="Logo" width="600" height="300">
<img src="media/05-vnet.png" alt="Logo" width="600" height="300">
<img src="media/06-vnet.png" alt="Logo" width="600" height="300">

### Virtual Machine

<img src="media/01-vm.png" alt="Logo" width="600" height="300">
<img src="media/02-vm.png" alt="Logo" width="600" height="300">
<img src="media/03-vm.png" alt="Logo" width="600" height="300">
<img src="media/04-vm.png" alt="Logo" width="600" height="300">
<img src="media/05-vm.png" alt="Logo" width="600" height="300">
<img src="media/06-vm.png" alt="Logo" width="600" height="300">
<img src="media/07-vm.png" alt="Logo" width="600" height="300">
<img src="media/08-vm.png" alt="Logo" width="600" height="300">
<img src="media/09-vm.png" alt="Logo" width="600" height="300">
<img src="media/10-vm.png" alt="Logo" width="600" height="300">


### Network Security Group

<img src="media/01-sec.png" alt="Logo" width="600" height="300">
<img src="media/02-sec.png" alt="Logo" width="600" height="300">
<img src="media/03-sec.png" alt="Logo" width="600" height="300">
<img src="media/04-sec.png" alt="Logo" width="600" height="300">
<img src="media/05-sec.png" alt="Logo" width="600" height="300">
<img src="media/06-sec.png" alt="Logo" width="600" height="300">
<img src="media/07-sec.png" alt="Logo" width="600" height="300">
<img src="media/08-sec.png" alt="Logo" width="600" height="300">
<img src="media/09-sec.png" alt="Logo" width="600" height="300">
<img src="media/10-sec.png" alt="Logo" width="600" height="300">



## Azure Services


## Advanced Terraform


## More Azure Services




