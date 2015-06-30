current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "#{ENV['CIRCLE_CI_MACHINE_USER_CLIENT_NAME']}"
client_key               ENV['CIRCLE_CI_MACHINE_USER_CLIENT_KEY']
validation_client_name   "#{ENV['CIRCLE_CI_CHEF_ORG_CLIENT']}"
validation_key           ENV['CIRCLE_CI_CHEF_ORG_KEY']
chef_server_url          "https://api.opscode.com/organizations/#{ENV['CIRCLE_CI_CHEF_ORG']}"
cache_type               'BasicFile'
cache_options(path:      "#{ENV['HOME']}/.chef/checksums")
