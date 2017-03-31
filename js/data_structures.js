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