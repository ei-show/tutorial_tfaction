resource "github_issue_label" "bar" {
  repository  = "tutorial_tfaction" # CHANGE
  name        = "bar"
  color       = "FF0000"
  description = "bar"
}