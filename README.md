
**S3 Bucket, Cloudfront CDN and DNS link**

- Create file name terraform.tfvars and add/update the required enteries specifing region, bucket and cdn info, 
  for example from same path  ``` cat > terraform.tfvars ``` add below  
```
region = "us-east-1"
bucket_name = "bucket-name"
cloudflare_api_token    = " "
cloudflare_email        = " "
cloudflare_newsubdomain = " "
cloudflare_domain       = "example.com"
```

- Make sure terraform installed, initialize providers and validate config files 
  with below commands
```
terraform init   
terraform validate 
```

- Test and review resources will be created/updated
```
terraform plan 
```
- Apply and deploy resources s3 and cloudfront cdn will be created, 
  also check output will show cloudflare dns link to cloudfront url 
  ```
  terraform apply 
  ```

---

>> To install Terraform https://www.terraform.io/downloads
```
wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip
unzip terraform_1.0.11_linux_amd64.zip
mv terraform /usr/local/bin/
chmod +x /usr/local/bin/terraform 
terraform --version
```