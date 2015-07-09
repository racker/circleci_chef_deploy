***
# circleci_chef_deploy
Project to standardize a circle.yml file to install chefdk and run deployments for the DevOps group.

***
# CircleCI Environmental Variables
knife.rb
- CIRCLE_CI_MACHINE_USER_CLIENT_NAME - node_name
- CIRCLE_CI_MACHINE_USER_CLIENT_KEY - client_key
- CIRCLE_CI_CHEF_ORG_CLIENT - validation_client_name
- CIRCLE_CI_CHEF_ORG_KEY - validation_key
- CIRCLE_CI_CHEF_ORG - chef_server_url https://api.opscode.com/organizations/ + CIRCLE_CI_CHEF_ORG

circle.yml
- KNIFE_SEARCH - knife command search criteria to find target machines
  > Example: `name:*web* AND NOT name:staging-web-01`
- KNIFE_COMMAND - command to run on target machines
  > Example: `chef-client`
- KNIFE_USER - user to SSH in on target machines
  > Example: `circleci_deploy`
