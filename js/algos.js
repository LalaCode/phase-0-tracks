

//WORDSELECTOR FUNCTION
//takes an array of words
//iterates through each words measuring and comparing the length to the empty longest word variable
//store the longest word in the empty variable and continue comparing until all have been compared

function wordSelector (wordArray){
  var longestWord = "";
  for (var i=0; i < wordArray.length; i++) {
    if (wordArray[i].length > longestWord.length) {
      longestWord = wordArray[i];
    };

  };
  //console.log("The longest word is:  " + longestWord);
  return longestWord;
  
}



//RANDOMIZER FUNCTION
//generates a random number which is used as the index indicator for the alphabet string
//creates a random word between 1-10 letters using the random alphabet indexes

function randomizer(){
  var letters = "abcdefghijklmnopqrstuvwxyz";
  var newWord = "";
  var randomNumber = Math.floor((Math.random() * 10) + 1);

    for (var i=0; i < randomNumber; i++){
      newWord += letters.charAt(Math.floor(Math.random() * letters.length));
        };
      return newWord;
    };



//ADDRANDOMWORD FUNCTION
//pushes a specified number of random words into an empty array

function addRandomWord(times){
    var wordArray = [];
    for (var i=0; i < times; i++){
      wordArray.push(randomizer());
    };
  return wordArray;
};



//OBJECT CONSTRUCTOR FUNCTION
//constructor function to build out various instances of the Dog class

function Dog(name, age){
this.name = name;
this.age = age;
}

var dog1 = new Dog ("Fred", 10);
var dog2 = new Dog ("Rio", 2);
var dog3 = new Dog ("Ares", 2);



//KEY-VALUE MATCH FUNCTION
//checks if the age value of two objects matches and prints true or false depending on result

function match(subjectA, subjectB){
  var ageMatch = null
  if (subjectA.age == subjectB.age){
    ageMatch = true;
    console.log(ageMatch)
    } else {
      ageMatch = false
      console.log(ageMatch)
    };
  }



  // _____________________DRIVER CODE_________________________

//KEY VALUE MATCH DRIVER CODE

match(dog2,dog3);
match(dog1,dog3);

//RANDOM TEST DATA DRIVER CODE

for (var i=0; i<10; i++){
  var wordInput = addRandomWord(3);
  console.log("The words are: " + wordInput);
  console.log("The longest word is:  " + wordSelector(wordInput));

};


//LONGEST WORD TEST DRIVER CODE

// wordSelector(["banana", "elementary", "disco", "unnatural", "uberhauptnicht"]);
// wordSelector(["Lebensabschnittpartner", "Rechtsschutzversicherungsgesellschaften", "Unabhaengigkeitserklaerungen", "Donaudampfschiffahrtsgesellschaftskapitän", "uberhauptnicht"]);

// console.log(randomizer());

//console.log(addRandomWord(3));



