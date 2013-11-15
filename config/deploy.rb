require "rvm/capistrano"

set :application, "peeps"

set :use_sudo, false
set :deploy_to, "~/#{application}"

set :repository,  "git@github.com:ThreeWiseMen/peeps.git"
set :scm, :git
set :branch, :master

task :staging do
  role :web, "10.1.2.81"                   # Your HTTP server, Apache/etc
  role :app, "10.1.2.81"                   # This may be the same as your `Web` server
  role :db,  "10.1.2.81", :primary => true # This is where Rails migrations will run
  set :user, :commons
end

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
