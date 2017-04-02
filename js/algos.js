

//LONGEST WORD
var longest_word_count = 0;
var longest_word = "null";

var wordSelector = function(word_array){
  for (var i=0; i < word_array.length; i++) {
    if (word_array[i].length > longest_word_count) {
      longest_word_count = word_array[i].length;
      longest_word = word_array[i];
    }

  }
  console.log("The longest word is:  " + longest_word);
}

//KEY-VALUE MATCH
function Dog(name, age){
this.name = name;
this.age = age;
}

var dog1 = new Dog ("Fred", 10);
var dog2 = new Dog ("Rio", 2);
var dog3 = new Dog ("Ares", 2);

console.log(dog1)
console.log(dog2)
console.log(dog3)
//iterate through the hashes to see if there is a match



  //wordSelector(["banana", "elementary", "disco", "unnatural", "uberhauptnicht"]);
  //wordSelector(["long phrase","longest phrase","longer phrase"]);
  //wordSelector(["Lebensabschnittpartner", "Rechtsschutzversicherungsgesellschaften", "Unabhaengigkeitserklaerungen", "Donaudampfschiffahrtsgesellschaftskapitän", "uberhauptnicht"]);

