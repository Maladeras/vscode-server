# Caeldanet v4 (Cloud)

- Create an account on Terraform Cloud (TFC)
  - https://app.terraform.io/signup/account
- Create an account on GitHub (GH)
  - https://github.com/join
- Create an DigitalOcean (DO) account, linked with your GH account, to get Your DIGITALOCEAN_TOKEN 
- Link your TFC account to GH & DO
- Create a new Workspace on this repo
  - Type: Version control workflow
  - Select your repo on GH
- TFC Terraform Variables:
  - ssh_private_key
  - vscode_password
- TFC Environment Variables:
  - DIGITALOCEAN_TOKEN
    - [https://cloud.digitalocean.com](https://cloud.digitalocean.com/account/api/tokens)
  - OVH_APPLICATION_KEY
  - OVH_APPLICATION_SECRET
  - OVH_CONSUMER_KEY 
    - [https://eu.api.ovh.com/createToken/](https://eu.api.ovh.com/createToken/index.cgi?GET=/*&PUT=/*&POST=/*&DELETE=/*)

# Sources

- https://github.com/cdr/code-server
- https://www.terraform.io/docs/
- https://docs.digitalocean.com/reference/api/api-reference/
- https://api.ovh.com/console/
- https://github.com/orgs/linuxserver/packages/container/package/code-server