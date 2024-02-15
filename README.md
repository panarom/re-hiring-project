# Cox Automotive / Manheim Release Engineering Hiring Project
I chose to provide the `Hello World` through a static site hosted on s3, with artifacts uploaded (through terraform) from this git project (under the `uploads` folder).  S3 already has a "built-in" webserver: i.e. a static site is accessible at an `amazonaws.com` address, without the need for a custom/purchased domain name.

There are 4 variables that need to be provided in order to successfully deploy the project: they are
1. bucket_name
2. aws_access_key
3. aws_secret_key
4. deployment_environment
The recommended way to set them is to create a new tfvars file modeled on example.tfvars.  The new file may be passed as a parameter to `terraform plan` and `terraform destroy` as `-var-file=some.tfvars`

Different environments can be managed in parallel by providing a child-folder per environment underneath the `uploads` directory.  The name of this folder should match the `deployment_environment` variable; which will also be inserted into the s3 bucket's name and final URL.

The final URL that should display the `Hello World` message, after successful `apply`, should look like http://www.${deployment_environment}.${bucket_name}.s3-website.us-east-1.amazonaws.com/ (the default region is set in variable.tf as `us-east-1`, and the default environment is `development`)

## references
1. https://medium.com/@frankpromiseedah/hosting-a-static-website-on-aws-s3-using-terraform-e12addd22d18
