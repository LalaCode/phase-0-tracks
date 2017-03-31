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