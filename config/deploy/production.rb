# EC2サーバーのIP、EC2サーバーにログインするユーザー名、サーバーのロールを記述
server '54.65.158.121', user: 'ec2-user', roles: %w{app db web} 

#デプロイするサーバーにsshログインする鍵の情報を記述
set :ssh_options, {
      keys: [File.expand_path('~/Downloads/yukikey.pem')],
    }
set :stage, :production
set :rails_env, 'production'
set :unicorn_rack_env, 'production' 
