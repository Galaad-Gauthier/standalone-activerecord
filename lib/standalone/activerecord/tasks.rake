require 'rake'

namespace :db do
  desc "create an ActiveRecord migration"
  task :create_migration do
    Standalone::ActiveRecordTasks.create_migration(ENV["NAME"], ENV["VERSION"])
  end

  desc "migrate the database (use version with VERSION=n)"
  task :migrate do
    Standalone::ActiveRecordTasks.migrate(ENV["VERSION"])
  end

  desc "roll back the migration (use steps with STEP=n)"
  task :rollback do
    Standalone::ActiveRecordTasks.rollback(ENV["STEP"])
  end
end
