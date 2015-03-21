set :application,    "Web frontend lograrme.com"
set :deploy_to,      "/var/www/vhosts/lograrme.com/symfony_projects/frontend/"
set :domain,         "69.195.198.111"

set :scm,            :git
set :repository,     "https://mauricioloyola@bitbucket.org/mauricioloyola/frontend.git"
set :branch,         "master"

role  :web,          domain
role  :app,          domain, :primary => true

set :user,           "usrlograrme"  
set :password,       "40262378"  
ssh_options[:port] = 22123
set   :use_sudo,      false
set   :keep_releases, 3

#set :deploy_via, :rsync_with_remote_cache
set :shared_files,      ["app/config/parameters.yml"]
set :shared_children,     [app_path + "/logs", web_path + "/uploads", "vendor"]

set :use_composer, true
set :update_vendors, true

set :model_manager, "doctrine"

set :dump_assetic_assets, true
set :interactive_mode, false
