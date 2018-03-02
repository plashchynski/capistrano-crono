def crono_args
  args = []
  args.push "--piddir #{fetch(:crono_piddir)}"
  args.push "--logfile #{fetch(:crono_log)}"
  args.push "--environment #{fetch(:crono_env)}"
end

namespace :load do
  task :defaults do
    set :crono_piddir, -> { File.join(shared_path, 'tmp', 'pids') }
    set :crono_env, -> { fetch(:rack_env, fetch(:rails_env, fetch(:stage))) }
    set :crono_log, -> { File.join(shared_path, 'log', 'crono.log') }
    set :crono_role, -> { :app }
  end
end

namespace :crono do
  desc 'Start crono'
  task :start do
    on roles fetch(:crono_role) do
      within release_path do
        execute(:bundle, :exec, :crono, :start, crono_args.join(' '))
      end
    end
  end

  desc 'Stop crono'
  task :stop do
    on roles fetch(:crono_role) do
      within release_path do
        execute(:bundle, :exec, :crono, :stop, crono_args.join(' '))
      end
    end
  end

  desc 'Restart crono'
  task :restart do
    on roles fetch(:crono_role) do
      within release_path do
        execute(:bundle, :exec, :crono, :restart, crono_args.join(' '))
      end
    end
  end
end

after 'deploy:updated', 'crono:stop'
after 'deploy:reverted', 'crono:stop'
after 'deploy:published', 'crono:start'
