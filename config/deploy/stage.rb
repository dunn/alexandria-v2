set :stage, :stage
set :rails_env, 'production'

server 'adrlstage.library.ucsb.edu', user: 'deploy', roles: [:web, :app, :db]
set :ssh_options, port: 22, keys: ['~/.ssh/id_rsa']
