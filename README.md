# terraform-gitlab-project_level_mr_approvals

Terraform module to manage the following Twingate resources:

* gitlab_project_level_mr_approvals

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_project_level_mr_approvals" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-project-level-mr-approvals/local"
  version = "1.0.0"

  project = "example-group-48165/example-project"
}
```

:warning: This feature requires a GitLab Enterprise instance.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_project_level_mr_approvals.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project_level_mr_approvals) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disable_overriding_approvers_per_merge_request"></a> [disable\_overriding\_approvers\_per\_merge\_request](#input\_disable\_overriding\_approvers\_per\_merge\_request) | Set to true to disable overriding approvers per merge request | `bool` | `false` | no |
| <a name="input_merge_requests_author_approval"></a> [merge\_requests\_author\_approval](#input\_merge\_requests\_author\_approval) | Set to true to allow merge requests authors to approve their own merge requests | `bool` | `false` | no |
| <a name="input_merge_requests_disable_committers_approval"></a> [merge\_requests\_disable\_committers\_approval](#input\_merge\_requests\_disable\_committers\_approval) | Set to true to disable merge request committers from approving their own merge requests | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | The ID or URL-encoded path of a project to change MR approval configuration | `string` | n/a | yes |
| <a name="input_require_password_to_approve"></a> [require\_password\_to\_approve](#input\_require\_password\_to\_approve) | Set to true to require authentication to approve merge requests | `bool` | `false` | no |
| <a name="input_reset_approvals_on_push"></a> [reset\_approvals\_on\_push](#input\_reset\_approvals\_on\_push) | Set to true to remove all approvals in a merge request when new commits are pushed to its source branch | `bool` | `true` | no |
| <a name="input_selective_code_owner_removals"></a> [selective\_code\_owner\_removals](#input\_selective\_code\_owner\_removals) | Reset approvals from Code Owners if their files changed | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
