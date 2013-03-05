set :application, "etapaoscura.com"
set :repository,  "git@github.com:jrom/etapaoscura.com.git"
set :deploy_to, "/home/jordi/apps/etapaoscura.com"
set :deploy_via, :remote_cache
set :branch, "master"

set :user, "jordi"

set :use_sudo, false
ssh_options[:forward_agent] = true

set :scm, :git

role :web, "etapaoscura.com"
role :app, "etapaoscura.com"
role :db,  "etapaoscura.com", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
end

