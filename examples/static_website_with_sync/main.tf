module "website" {
  source = "../../"

  resource_uid   = "bcarey.me"
  domain_name    = "bcarey.me"
  hosted_zone_id = "Z069296026FWRGXDSDU0I"
  profile        = ""

  sync_directories = [{
    local_source_directory = "./website_content"
    s3_target_directory    = ""
  }]

  providers = {
    aws.useast1 = aws.useast1
  }
}
