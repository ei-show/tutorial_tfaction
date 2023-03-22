tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "ei-show-tutorial-tfaction"
      key    = "github/foo/history.json"
    }
  }
}
