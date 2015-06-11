require_relative "boot"

#### Do not delete
db = Database.new
#################

Car = Struct.new(:make, :model)
car = Car.new("VW", "Golf")

db.store(:cars, car)

puts db.load(:cars)


