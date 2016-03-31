class Thermostat
  include DataMapper::Resource

  property :id , Serial
  property :temperature , Integer
  property :thermo_id , String , unique: true , required: true

end
