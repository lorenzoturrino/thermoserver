require 'datamapper_setup'

desc "production database migration"
task :migPro do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
  DataMapper.auto_migrate!
  puts "Automigrate complete on #{ENV['DATABASE_URL']}"
end

desc "dev database migration"
task :migDev do
  DataMapper.setup(:default, "postgres://localhost/thermo_dev")
  DataMapper.auto_migrate!
  puts "Automigrate complete on DEV"
end
