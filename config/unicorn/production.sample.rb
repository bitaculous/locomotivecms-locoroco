# Set your full path to application.
app_path = '/var/www/app/current'

# Set application path as working directory. Help ensure the application will always spawn in the symlinked application
# directory.
working_directory app_path

# Preload application, this loads the application in the master process before forking worker processes.
preload_app true

# Spawn master worker for user `unicorn` and group `locoroco.bitaculous.com`.
# user 'unicorn', 'locoroco.bitaculous.com'

# Use at least one worker per core if you're on a dedicated server, more will usually help for “short waits” on
# databases / caches.
worker_processes 2

# Nuke workers after 30 seconds instead of 60 seconds which is the default.
timeout 30

# Set port to listen on.
# listen 8080, tcp_nopush: true

# Set socket to listen on, we use a shorter backlog for quicker failover when busy.
listen "#{app_path}/tmp/sockets/unicorn.sock", backlog: 64

# Set master PID location
pid "#{app_path}/tmp/pids/unicorn.pid"

# By default, the Unicorn logger will write to stderr. Additionally, some applications / frameworks log to stdout or
# stderr, so prevent them from going to `/dev/null` and log everything to one file.
stdout_path "#{app_path}/log/unicorn.log"
stderr_path "#{app_path}/log/unicorn.log"

# Set Rails environment, `production` should be by the default.
rails_env = ENV['RAILS_ENV'] || 'production'

before_fork do |server, worker|
  # There's no need for the master process to hold a connection
  # defined?(ActiveRecord::Base) && ActiveRecord::Base.connection.disconnect!

  # The following is only recommended for memory / DB-constrained installations. It is not needed if your system can
  # house twice as many worker processes as you have configured.
  #
  # This allows a new master process to incrementally phase out the old master process with SIGTTOU to avoid a
  # thundering herd, especially in the `preload_app false` case, when doing a transparent upgrade. The last worker
  # spawned will then kill off the old master process with a SIGQUIT.
  # old_pid = "#{server.config[:pid]}.oldbin"

  # if File.exists?(old_pid) && server.pid != old_pid
  #   begin
  #     signal = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
  #     Process.kill(signal  File.read(old_pid).to_i)
  #   rescue Errno::ENOENT, Errno::ESRCH
  #     # Someone else did the job for us
  #   end
  # end

  # Throttle the master from forking too quickly by sleeping. Due to the implementation of standard Unix signal handlers,
  # this helps (but does not completely) prevent identical, repeated signals from being lost when the receiving process
  # is busy.
  # sleep 1
end

after_fork do |server, worker|
  # defined?(ActiveRecord::Base) && ActiveRecord::Base.establish_connection

  # If `preload_app true`, then you may also want to check and restart any other shared sockets / descriptors such as
  # Memcached, Redis, etc.

  # Per-process listener for migrations, debugging etc.
  # address = "127.0.0.1:#{9293 + worker.nr}"
  # server.listen(address, tries: -1, delay: 5, tcp_nopush: true)
end