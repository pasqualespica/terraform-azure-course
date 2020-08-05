variable "myvar" {
    type = string
    default = "hello terraform"
}

variable "mymap" {
    type = map(string)
    default = {
        "1" = "valore"
        "valore" = 20000
    }
}

variable "mylist" {
    type = list #auto type inference
    default = [1,2,3,"fefq"]
}
