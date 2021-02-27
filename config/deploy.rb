# config valid for current version and patch releases of Capistrano
lock "~> 3.15.0"

set :application, "fast-sandstorm"
set :repo_url, "git@github.com:prio101/fast-sandstorm.git"

server '103.111.123.124', user: "prio", roles: %w{app db web}


set :rbenv_type, :user # or :system, or :fullstaq (for Fullstaq Ruby), depends on your rbenv setup
set :rbenv_ruby, '2.6.3'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name

set :linked_files, %w{ config/database.yml }
set :linked_dirs, %w{ bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :deploy_to, -> { "/home/prio/#{fetch(:application)}/#{fetch(:application)}" }


# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/master.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

set :passenger_restart_with_touch, true



namespace :deploy do
  desc "Description of task"
  task :name_of_task do
      # do something
  end
end
