desc "Migrate the database through scripts in db/migrate directory."

namespace :db do
  task :migrate do
    Rake::task["db:migrate_db1"].invoke
    Rake::task["db:migrate_db2"].invoke
  end

  task :migrate_db1 do
    ActiveRecord::Base.establish_connection DB1_CONF
    ActiveRecord::Migrator.migrate("db/migrate/db1")
  end

  task :migrate_db2 do
    ActiveRecord::Base.establish_connection DB2_CONF
    ActiveRecord::Migrator.migrate("db/migrate/db2")
  end

  task :rollback do
    Rake::task["db:rollback_db1"].invoke
    Rake::task["db:rollback_db2"].invoke
  end

  task :rollback_db1 do
    ActiveRecord::Base.establish_connection DB1_CONF
    ActiveRecord::Migrator.migrate("db/migrate/db1")
  end

  task :rollback_db2 do
    ActiveRecord::Base.establish_connection DB2_CONF
    ActiveRecord::Migrator.migrate("db/migrate/db2")
  end

end
