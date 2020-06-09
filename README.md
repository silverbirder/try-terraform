# try-terraform

## 構成

* shared/
  * providers.tf
* modules/
  * iam/...
* env/
    * dev/
        * main.tf
        * outputs.tf
        * variables.tf
        * terraform.tfvars
    * stage/
    * prod/
* .terraform-version