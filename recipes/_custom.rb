#Customizations


%w[ /home/django/configs ].each do |path|
  directory path do
    owner 'django'
    group 'django'
    mode '0755'
  end
end

#standard data bag
#auth = data_bag_item('bag3','auth')

#vault data bag
#auth = ChefVault::Item.load('vaultbag','auth')
auth = chef_vault_item('vaultbag','auth')

template '/home/django/configs/.env' do
  variables(
    :database_user => auth['database_user'],
    :database_password => auth['database_password'],
    :database_name => auth['database_name'],
    :database_host => auth['database_host'],
    :secret_key => auth['secret_key']
  )
  source 'env.erb'
  owner 'django'
  group 'django'
  mode '0755'
end

execute "copy_env_file" do
  command "cp /home/django/configs/.env /home/django/repo/.env"
  cwd "/home/django/"
  user "django"
  group "django"
  action :run
end

