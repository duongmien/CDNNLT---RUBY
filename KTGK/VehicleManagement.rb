# Kiểm tra giữa kì - Chuyên đề ngôn ngữ lập trình
# TÊN: DƯƠNG THỊ MIÊN
# MSV: 1911505310234
#Class Vehicle
class Vehicle
  attr_accessor :id_234, :manufacturer_234, :yearOfManu_234, :model_234, :price_234, :licenseNumber_234, :color_234
  def initialize(id_234, manufacturer_234, yearOfManu_234, model_234, price_234, licenseNumber_234, color_234)
    @id_234 = id_234
    @manufacturer_234 = manufacturer_234
    @yearOfManu_234=yearOfManu_234
    @model_234=model_234
    @price_234=price_234
    @licenseNumber_234=licenseNumber_234
    @color_234=color_234
  end
  def show
    puts "ID of vehicle: #{id_234}"
    puts "Manufacturer of vehicle: #{manufacturer_234}"
    puts "Year Of Manufacturer vehicle: #{yearOfManu_234}"
    puts "Model of vehicle: #{model_234}"
    puts "Price of vehicle: #{price_234}"
    puts "License Number of vehicle: #{licenseNumber_234}"
    puts "Color of vehicle: #{color_234}"
  end
end
#Class Car Extend Class Vehicle
class Car < Vehicle
  attr_accessor :seatNumber_234, :engineType_234, :fuel_234, :airbagNumber_234, :registrationDate_234
  def initialize(id_234, manufacturer_234, yearOfManu_234, model_234, price_234, licenseNumber_234, color_234,seatNumber_234,engineType_234, fuel_234, airbagNumber_234, registrationDate_234)
    super(id_234, manufacturer_234, yearOfManu_234, model_234, price_234, licenseNumber_234, color_234)
    @seatNumber_234=seatNumber_234
    @engineType_234=engineType_234
    @fuel_234=fuel_234
    @airbagNumber_234=airbagNumber_234
    @registrationDate_234=registrationDate_234
  end
  def show
    super
    puts "Seat number of vehicle: #{seatNumber_234}"
    puts "Engine type of vehicle: #{engineType_234}"
    puts "Fuel (petrol/oil) of vehicle: #{fuel_234}"
    puts "Airbag Number of vehicle: #{airbagNumber_234}"
    puts "Registration Date of vehicle: #{registrationDate_234}"
    puts("----------------------------------------------------")
  end
end
#Class Motorbike Extend Class Vehicle
class Motorbike < Vehicle
  attr_accessor :capacity_234, :fuelTank_234 
  def initialize(id_234, manufacturer_234, yearOfManu_234, model_234, price_234, licenseNumber_234, color_234,capacity_234, fuelTank_234)
    super(id_234, manufacturer_234, yearOfManu_234, model_234, price_234, licenseNumber_234, color_234)
    @capacity_234=capacity_234
    @fuelTank_234=fuelTank_234
  end
  def show
    super
    puts "Capacity of vehicle: #{capacity_234}"
    puts "Fuel tank capacity. of vehicle: #{fuelTank_234}"
    puts("----------------------------------------------------")
  end
end
#Class Truck Extend Class Vehicle
class Truck < Vehicle
  attr_accessor :payload_234
  def initialize(id_234, manufacturer_234, yearOfManu_234, model_234, price_234, licenseNumber_234, color_234,payload_234)
    super(id_234, manufacturer_234, yearOfManu_234, model_234, price_234, licenseNumber_234, color_234)
    @payload_234=payload_234
  end
  def show
    super
    puts "Payload of vehicle: #{payload_234}"
    puts("----------------------------------------------------")
  end
end
# Bulid Class Vehicle Managemnet
class VehicleManagement
  @@vehicles = Array.new
  # Function Add Vehicle
  def addVehicles(vehicles)
    @@vehicles.push(vehicles)
  end
  # Function Delete Vehicle By ID
  def deleteVehicleById(id)
    @@vehicles.delete_if {|x| x.id_234 == id }
  end
  # Function Show Info 
  def showInfor()
    @@vehicles.each{ |vehicle| vehicle.show}
  end
  # Function Serch By Manufacturer
  def searchByManufacturer(key)
    searchList = @@vehicles .select {|o| o.manufacturer_234.include? key}
    searchList.each{ |sl| sl.show}
  end
   # Function Serch By Color
   def searchByColor(key)
    searchList = @@vehicles .select {|o| o.color_234.include? key}
    searchList.each{ |sl| sl.show}
  end
  # Function Serch By LinsenNumber
  def searchByLincenseNumber(key)
    searchList = @@vehicles .select {|o| o.licenseNumber_234.include? key}
    searchList.each{ |sl| sl.show}
  end
end
managerVehicle =  VehicleManagement.new()

motorbike1 = Motorbike.new(1,"Yamaha",2021,"2 seat",120000,"9288","Red",10,90)
motorbike2 = Motorbike.new(12,"Vious",2022,"2 seat",1245,"78900","Blak",50,150)
car1 = Car.new(1,"Mecerdes",2019,"esv",100,"81003030","Black","4","v12","tuv",8,"19/7/2019")
car2 = Car.new(21,"Honda CRV",2018,"suv",700,"179800","White","7","v6","pov",7,"20/3/2018")
truck1 = Truck.new(19,"Huyndai",2022,"tqp",2800,"178993","Brown",20)
truck2 = Truck.new(7,"HiYou",2022,"tan",1800,"178130","Black",70)

managerVehicle.addVehicles(motorbike1)
managerVehicle.addVehicles(motorbike2)
managerVehicle.addVehicles(car1)
managerVehicle.addVehicles(car2)
managerVehicle.addVehicles(truck1)
managerVehicle.addVehicles(truck2)
puts("LIST OF VEHICLE BEFOR DELETED")
managerVehicle.showInfor()
puts("SERCH BY MANUFACTURER")
managerVehicle.searchByManufacturer("Yamaha")
puts("----------------------------------------------------")
puts("SERCH BY COLOR")
managerVehicle.searchByColor("Black")
puts("----------------------------------------------------")
puts("SERCH BY LICENSE NUMBER")
managerVehicle.searchByLincenseNumber("9288")
puts("----------------------------------------------------")

#Delete By ID
managerVehicle.deleteVehicleById(21)

puts("LIST OF VEHICLE AFTER DELETED")
managerVehicle.showInfor()