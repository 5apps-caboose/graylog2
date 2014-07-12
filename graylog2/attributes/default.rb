node.default['graylog2']['basedir'] = '/var/graylog2'
node.default['graylog2']['server']['version'] = '0.20.1'
node.default['graylog2']['web_interface']['version'] = '0.20.1'

node.default['graylog2']['elasticsearch']['version'] = '0.90.10'
node.default['graylog2']['elasticsearch']['max_number_of_indices'] = 20
node.default['graylog2']['elasticsearch']['network']['host'] = '127.0.0.1'
node.default['graylog2']['elasticsearch']['heap_size'] = nil

node.default['graylog2']['port'] = 514
# Override to '0.0.0.0' in a policy cookbook or a role to listen on all
# interfaces
node.default['graylog2']['listen_address'] = '127.0.0.1'
# You must set a password_secret and root_password_sha2 in a recipe or role
node.default['graylog2']['password_secret']    = nil
node.default['graylog2']['root_password_sha2'] = nil

node.default['graylog2']['mongodb']['host'] = 'localhost'
node.default['graylog2']['mongodb']['port'] = 27017
node.default['graylog2']['mongodb']['max_connections'] = 100
node.default['graylog2']['mongodb']['database'] = 'graylog2'
node.default['graylog2']['mongodb']['auth'] = 'false'
node.default['graylog2']['mongodb']['user'] = 'user'
node.default['graylog2']['mongodb']['password'] = 'password'

node.default['graylog2']['transport_email']['enabled'] = false
node.default['graylog2']['transport_email']['hostname'] = 'mail.example.com'
node.default['graylog2']['transport_email']['port'] = 587
node.default['graylog2']['transport_email']['use_auth'] = true
node.default['graylog2']['transport_email']['use_tls'] = true
node.default['graylog2']['transport_email']['auth_username'] = 'you@example.com'
node.default['graylog2']['transport_email']['auth_password'] = 'secret'
node.default['graylog2']['transport_email']['subject_prefix'] = '[graylog2]'
node.default['graylog2']['transport_email']['from_email'] = 'graylog2@example.com'
node.default['graylog2']['transport_email']['from_name'] = 'Graylog2'

node.default['graylog2']['collection_size'] = 50000000
node.default['graylog2']['email'] = 'graylog2@example.org'
node.default['graylog2']['email_package'] = 'postfix'
node.default['graylog2']['allow_deleting'] = 'false'
node.default['graylog2']['send_stream_alarms'] = true
node.default['graylog2']['send_stream_subscriptions'] = true
node.default['graylog2']['stream_alarms_cron_minute'] = '*/15'
node.default['graylog2']['stream_subscriptions_cron_minute'] = '*/15'

node.default['graylog2']['external_hostname'] = nil
node.default['graylog2']['server_name'] = 'graylog2'

node.default['graylog2']['output_batch_size'] = 5000
node.default['graylog2']['processbuffer_processors'] = 5
node.default['graylog2']['outputbuffer_processors'] = 5
node.default['graylog2']['processor_wait_strategy'] = 'sleeping'
node.default['graylog2']['ring_size'] = 1024

node.default['graylog2']['enable_graphite_output'] = false
node.default['graylog2']['graphite_carbon_host'] = '127.0.0.1'
node.default['graylog2']['graphite_carbon_tcp_port'] = 2003
node.default['graylog2']['graphite_prefix'] = "logs"
