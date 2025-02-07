variable "project" {
  type        = string
  description = "The ID or URL-encoded path of a project to change MR approval configuration"
}

variable "disable_overriding_approvers_per_merge_request" {
  type        = bool
  default     = false
  description = "Set to true to disable overriding approvers per merge request"
}

variable "merge_requests_author_approval" {
  type        = bool
  default     = false
  description = "Set to true to allow merge requests authors to approve their own merge requests"
}

variable "merge_requests_disable_committers_approval" {
  type        = bool
  default     = false
  description = "Set to true to disable merge request committers from approving their own merge requests"
}

variable "require_password_to_approve" {
  type        = bool
  default     = false
  description = "Set to true to require authentication to approve merge requests"
}

variable "reset_approvals_on_push" {
  type        = bool
  default     = true
  description = "Set to true to remove all approvals in a merge request when new commits are pushed to its source branch"
}

variable "selective_code_owner_removals" {
  type        = bool
  default     = false
  description = "Reset approvals from Code Owners if their files changed"
}
