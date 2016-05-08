set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
# server '104.236.77.182', user: 'deploy', roles: %w{web app}

server '192.168.1.106', user: 'deploy', roles: %w{web app}
