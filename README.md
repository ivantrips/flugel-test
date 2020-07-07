# Requirements
- Terraform 0.11.x
- Ruby > 2.5
- AWS cli configured 

# Instructions

```bash
bundle install 
bundle exec kitchen converge
bundle exec kitchen verify
```

# Considerations

To run this code you should have a valid AWS account and you will need to replace the `testing.tfvars` and `test/integration/default/controls/s3_bucket.rb` `bucket_name` variable with a bucket that does not exists