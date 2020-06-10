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

## Linter

* terraform fmt
* tflint


## Dev

# Develop

## Env
```bash
$ export PROJECT_ID=
$ export BUCKET_NAME="${PROJECT_ID}-storage-bucket"
$ export LOCATION=
```

## First time
```bash
// For GCS Backend Auth
$ gcloud auth application-default login
// Create Backet For Backend
$ gsutil mb -p $PROJECT_ID -l $LOCATION gs://$BUCKET_NAME
$ tfenv install
$ terraform init
$ terraform import google_storage_bucket.tfstate $BUCKET_NAME
```

## Every time
```bash
$ terraform plan
$ terraform apply
```