resource "gitlab_project_level_mr_approvals" "this" {
  project = var.project

  disable_overriding_approvers_per_merge_request = var.disable_overriding_approvers_per_merge_request
  merge_requests_author_approval                 = var.merge_requests_author_approval
  merge_requests_disable_committers_approval     = var.merge_requests_disable_committers_approval
  require_password_to_approve                    = var.require_password_to_approve
  reset_approvals_on_push                        = var.reset_approvals_on_push
  selective_code_owner_removals                  = var.selective_code_owner_removals
}
