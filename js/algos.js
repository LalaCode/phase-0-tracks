//iterate through the array to test the length of each one 
//compare length to variable length, update if next word is longer
//print the one with longest length

var word_array = ["banana", "elementary", "disco", "unnatural", "uberhauptnicht"];
var longest_word_count = 0;
var longest_word = "null";

var wordSelector = function(){
  for (var i=0; i < word_array.length; i++) {
    if (word_array[i].length > longest_word_count) {
      longest_word_count = word_array[i].length;
      longest_word = word_array[i];
    }

  }
  console.log(longest_word);
}

  




wordSelector()


//if (word_array[i].length > longest_word) {
//      longest_word = word_array[i];
//    }
//  }
  
//};