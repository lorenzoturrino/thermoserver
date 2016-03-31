require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/thermo_manager'

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/thermo_dev')
DataMapper.finalize
