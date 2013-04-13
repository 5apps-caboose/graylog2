default.graylog2.basedir = "/var/graylog2"
default.graylog2.server.version = "0.11.0"
default.graylog2.web_interface.version = "0.11.0"

default.graylog2.elasticsearch.version="0.20.4"

default.graylog2.port = 514
# Override to '0.0.0.0' in a policy cookbook or a role to listen on all interfaces
default.graylog2.listen_address = '127.0.0.1'

default.graylog2.mongodb.host = "localhost"
default.graylog2.mongodb.port = 27017
default.graylog2.mongodb.max_connections = 100
default.graylog2.mongodb.database = "graylog2"
default.graylog2.mongodb.auth = "false"
default.graylog2.mongodb.user = "user"
default.graylog2.mongodb.password = "password"

default.graylog2.transport_email.enabled = false
default.graylog2.transport_email.hostname = "mail.example.com"
default.graylog2.transport_email.port = 587
default.graylog2.transport_email.use_auth = true
default.graylog2.transport_email.use_tls = true
default.graylog2.transport_email.auth_username = "you@example.com"
default.graylog2.transport_email.auth_password = "secret"
default.graylog2.transport_email.subject_prefix = "[graylog2]"
default.graylog2.transport_email.from_email = "graylog2@example.com"
default.graylog2.transport_email.from_name = "Graylog2"

default.graylog2.collection_size = 50000000
default.graylog2.email = "graylog2@example.org"
default.graylog2.email_package = "postfix"
default.graylog2.allow_deleting = "false"
default.graylog2.send_stream_alarms = true
default.graylog2.send_stream_subscriptions = true
default.graylog2.stream_alarms_cron_minute = "*/15"
default.graylog2.stream_subscriptions_cron_minute = "*/15"

default.graylog2.external_hostname = nil
default.graylog2.server_name = "graylog2"
