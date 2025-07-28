# HCP Terraform AWS Landing Zone Module

## This is a proof of concept module that is work in progress it is planned to do the following

- Uses HCP Terraform's No-Code as a landing zone
- Creates three workspaces
  - cli (cli)
  - dev (VCS)
  - prod (VSC)
- Creates Github repos for all three workspaces
  - dev and cli will use the same repo. cli will be in the cli branch.
  - prod will have it's own repo
    -Ouputs will
