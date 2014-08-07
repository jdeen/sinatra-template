ROOT =  File.expand_path( '../../../', __FILE__ )
ENVIRONMENT = ENV['mode'] || 'development'

# The directory to operate out of.
# The default is the current directory.

directory ROOT

# Load “path” as a rackup file.
# The default is “config.ru”.

rackup "#{ROOT}/src/config/config.ru"

# Set the environment in which the rack's app will run. The value must be a string.
# The default is “development”.

environment ENVIRONMENT

# Daemonize the server into the background. Highly suggest that
# this be combined with “pidfile” and “stdout_redirect”.
# The default is “false”.

daemonize
daemonize false

# Store the pid of the server in the file at “path”.

pidfile "#{ROOT}/tmp/pids/puma.pid"

# Use “path” as the file to store the server info state. This is
# used by “pumactl” to query and control the server.

state_path "#{ROOT}/tmp/pids/puma.state"

# Redirect STDOUT and STDERR to files specified. The 3rd parameter
# (“append”) specifies whether the output is appended, the default is
# “false”.

# stdout_redirect "#{ROOT}/log/stdout", "#{ROOT}/log/stderr"
# stdout_redirect "#{ROOT}/log/stdout", "#{ROOT}/log/stderr", true

# Disable request logging.
# The default is “false”.

# quiet

# Configure “min” to be the minimum number of threads to use to answer
# requests and “max” the maximum.
# The default is “0, 16”.

threads 0, 16

# Bind the server to “url”. “tcp://”, “unix://” and “ssl://” are the only
# accepted protocols.
# The default is “tcp://0.0.0.0:9292”.

# bind 'tcp://0.0.0.0:9292'
# bind 'unix:///var/run/puma.dlite.sock' if ENVIRONMENT == 'production'

# Listens on port 7001
# The default is 9292
# port 7001


# === Puma control rack application ===

# Start the puma control rack application on “url”. This application can
# be communicated with to control the main server. Additionally, you can
# provide an authentication token, so all requests to the control server
# will need to include that token as a query parameter. This allows for
# simple authentication.

# Check out https://github.com/puma/puma/blob/master/lib/puma/app/status.rb
# to see what the app has available.

activate_control_app

# activate_control_app 'unix:///var/run/pumactl.sock'
# activate_control_app 'unix:///var/run/pumactl.sock', { auth_token: '12345' }
# activate_control_app 'unix:///var/run/pumactl.sock', { no_token: true }
