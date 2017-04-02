//Horse arrays and objects

var horseColors = ["Black", "White", "Brown", "Orange"];

var horseNames = ["Fred", "Jenny", "Bob", "Seabiscuit"];

horseColors.push("Grey");
horseNames.push("Mr. Ed");

console.log(horseColors);
console.log(horseNames);

horses = {};

for (var i = 0; i < horseNames.length; i++) {
  horses[horseNames[i]] = horseColors[i];
}

console.log(horses);

//Car Constructor

function Car (make, model, year, used) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.used = used;
  this.honk = function(){console.log("HONK! HONK!");};

}

var firstCar = new Car("Toyota", "Camry", 1994, true);
console.log(firstCar);
firstCar.honk();

var secondCar = new Car("BMW", "X5", 2001, true);
console.log(secondCar);
secondCar.honk();

var thirdCar = new Car("Honda", "Accord", 2017, false);
console.log(thirdCar);
thirdCar.honk();

//Literal Constructor

var car = {make: "Trabant", model: "OstKruez" , year: 1975, used: true};
console.log(car);
