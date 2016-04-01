require 'data_mapper'
require 'dm-postgres-adapter'

require './temperature'

DataMapper.setup(:default, 'postgres://localhost/thermotemps')
DataMapper.finalize

