//iterate through the array to test the length of each one 
//compare length to variable length, update if next word is longer
//print the one with longest length

var word_array = ["banana", "elementary", "disco", "unnatural", "uberhauptnicht"];
//var word_array = ["long phrase","longest phrase","longer phrase"];
//var word_array = ["Lebensabschnittpartner", "Rechtsschutzversicherungsgesellschaften", "Unabhaengigkeitserklaerungen", "Donaudampfschiffahrtsgesellschaftskapitän", "uberhauptnicht"];

var longest_word_count = 0;
var longest_word = "null";

var wordSelector = function(){
  for (var i=0; i < word_array.length; i++) {
    if (word_array[i].length > longest_word_count) {
      longest_word_count = word_array[i].length;
      longest_word = word_array[i];
    }

  }
  console.log("The longest word is:  " + longest_word);
}

  wordSelector()

