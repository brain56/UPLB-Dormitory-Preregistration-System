set :user, 'zealart'  # Your hosting account's username
set :domain, 'durendal.uplb.edu.ph'  # Hosting servername where your account is located
set :project, 'UPLB-Dormitory-Preregistration-System'  # Your application as its called in the repository
set :application, '/c'  # Your app's location (domain or subdomain)
set :applicationdir, "http://durendal.uplb.edu.ph/~zealart/"  # The location of your application on your hosting (my differ for each hosting provider)
# version control config
set :scm, 'git'
set :repository,  "git@github.com:brain56/UPLB-Dormitory-Preregistration-System.git" # Your git repository location
set :deploy_via, :remote_cache
set :git_enable_submodules, 1 # if you have vendored rails
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
# roles (servers)
role :web, domain
role :app, domain
role :db,  domain, :primary => true
# deploy config
set :deploy_to, applicationdir # deploy to directory set above
set :deploy_via, :export
# additional settings
default_run_options[:pty] = true  # Forgo errors when deploying from windows
set :chmod755, "app config db lib public vendor script script/* public/disp*"
set :use_sudo, false