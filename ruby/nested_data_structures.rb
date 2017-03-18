=begin
  
The program accesses data of a storage garage
Units are labeled by the owner's name
Each owner unit has subunits for cars, motorcycles and boats
Each subunit lists the contents of the subunit
  
=end

garage = {
  lauren_unit: {
    cars: ["BMW X5", "Mercedes G Wagon"], 
    motorcyle: [],
    boats:["Sailboat", "Speedboat"]
  }, 
  belal_unit:{
    cars: ["Camero", "Ford Mustang"], 
    motorcyle: ["Ninja", "Harley Davidson"], 
    boats:[]
  }, 
  sultan_unit:{
    cars: ["BMW 325i"], 
    motorcyle: ["Ninja 2", "Ninja 3"], 
    boats:["Giant Yacht"]
  }, 
  mykka_unit:{
    cars: ["Prius", "Ford Pickup"], 
    motorcyle: [], 
    boats:["Fishing boat"]
  }
}

# p garage[:belal_unit][:motorcyle][1]

# garage[:mykka_unit][:motorcyle].push("Used Harley")
# p garage[:mykka_unit][:motorcyle]

# garage[:lauren_unit][:cars][1] = "Porsche Cayenne"
# p garage[:lauren_unit][:cars]

# p garage[:sultan_unit][:boats][0]