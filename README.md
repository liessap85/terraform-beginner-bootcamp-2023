# Terraform Beginner Bootcamp 2023

# Semantic Versioning

- **MAJOR**: when you make incompatible API changes
- **MINOR**: when you add backwards compatible functionality
- **PATCH**: backwards compatible bug fixes

**Adding Credentials***

- When adding AWS credentials to your env, you can either use aws configure to do it locally, or enter then into your env.example file.  MAKE SURE YOU DON'T UPLOAD THIS FILE TO GITHUB

- In oder to use them in your workspace, you gotta add them via the terminal, using *export* (for the aws side) and *gp env* for the gitpod side.