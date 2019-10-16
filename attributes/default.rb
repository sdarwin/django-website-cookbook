
default['http_platform']['admin_email'] = 'sam@example.com'
default['http_platform']['cert']['organization'] = 'ACME Corp'
default['http_platform']['cert']['org_unit'] = 'IT'
default['http_platform']['www']['additional_aliases'] = {'django.logchart.com' => { 'log_level' => 'info' }}
default['django_platform']['app_repo']['git_repo'] = 'sdarwin/django-website.git'
default['django_platform']['app_repo']['rel_path_to_manage_directory'] = ''
default['django_platform']['app_repo']['rel_path_to_static_directory'] = 'static'
default['django_platform']['app_repo']['rel_path_to_site_directory'] = 'mysite'
default['django_platform']['git_ssh_key']['vault_data_bag'] = 'vaultbag'
default['django_platform']['git_ssh_key']['vault_bag_item'] = 'gitkey'
default['django_platform']['git_ssh_key']['vault_item_key'] = 'thekey'
default['django_platform']['app_repo']['rel_path_to_sqlite_db'] = 'db.sqlite3'
default['django_platform']['app_repo']['rel_path_to_pip_requirements'] = 'requirements.txt'
default['django_platform']['app_repo']['additional_recipes_before_install'] = ['django-website::_custom']

default['firewall']['allow_ssh'] = true


