# TF Test Sandbox

A small Terraform sandbox for ZTF test deployments. It currently provisions a single Ubuntu EC2 instance in AWS so you can validate provider setup, workflows, and quick experiments without touching production infrastructure.

## What it creates
- One EC2 instance (`t2.micro`) in `us-east-1`
- Latest Ubuntu 20.04 LTS AMI (HVM, SSD)
- Tag: `Name = TF_test`

## Prerequisites
- Terraform >= 1.2
- AWS credentials configured locally (for example via `aws configure` or env vars)

## Quick start
```bash
terraform init
terraform plan
terraform apply
```

When you are done:
```bash
terraform destroy
```

## Variables
`variables.tf` defines:
- `instance_name` (default: `ExampleAppServerInstance`)
- `instance_type` (default: `t2.micro`)

These variables are not yet wired into `main.tf`. If you want to use them, update the resource block to reference `var.instance_name` and `var.instance_type`.

## Notes
- This is a sandbox; expect breaking changes and quick experiments.
- Terraform state files should not be committed. The repo already has `.gitignore` rules for `*.tfstate` and `*.tfstate.*`.
- Running AWS resources incurs cost. Tear down with `terraform destroy` when finished.
