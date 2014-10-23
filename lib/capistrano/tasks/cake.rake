#!/usr/bin/env rake

desc 'Run rake task on server'
 task :cake do
  on roles(:app), in: :sequence, wait: 5 do
    within release_path do
      with rails_env: fetch(:rails_env) do
        task = ENV['task']

        execute :rake, task
      end
    end
  end
end