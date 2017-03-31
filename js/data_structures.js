var horse_colors = ["brown", "black", "white", "blue"];
var horse_names = ["Piper", "Judy", "Birke", "Fred"];


horse_colors.push("orange");
horse_names.push("Lovey");

var horse_info = {}

for (var i=0; i < horse_names.length; i++ ) {horse_info[horse_names[i]] = horse_colors[i]};

console.log(horse_info)

//car constructor function

function Car(make,model,transmission){

  this.make = make;
  this.model = model;
  this.transmission = transmission;
  this.engine_rev = function() { console.log("Vroom vroom vroom!"); };
  
}

var firstCar = new Car("BMW", "X5", "automatic");
console.log(firstCar);
firstCar.engine_rev();

var secondCar = new Car("Mercedes", "G Wagon", "automatic");
console.log(secondCar);
secondCar.engine_rev();

//literal constructor for car

var car = {make: 'Audi', model: 'TT', transmission: 'manual'}
console.log(car)