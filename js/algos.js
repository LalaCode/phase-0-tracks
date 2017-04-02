

//LONGEST WORD


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




//RANDOM TEST DATA FUNCTION



function randomizer(){
  var letters = "abcdefghijklmnopqrstuvwxyz";
  var newWord = "";
  var randomNumber = Math.floor((Math.random() * 10) + 1);

    for (var i=0; i < randomNumber; i++){
      newWord += letters.charAt(Math.floor(Math.random() * letters.length));
        };
      return newWord;
    };



function addRandomWord(times){
    var wordArray = [];
    for (var i=0; i < times; i++){
      wordArray.push(randomizer());
    };
  return wordArray;
};




for (var i=0; i<10; i++){
  var wordInput = addRandomWord(3);
  console.log("The words are: " + wordInput);
  console.log("The longest word is:  " + wordSelector(wordInput));

};






//KEY-VALUE MATCH SET UP
// function Dog(name, age){
// this.name = name;
// this.age = age;
// }

// var dog1 = new Dog ("Fred", 10);
// var dog2 = new Dog ("Rio", 2);
// var dog3 = new Dog ("Ares", 2);

// // console.log(dog1)
// // console.log(dog2)
// // console.log(dog3)





//KEY-VALUE MATCH FUNCTION
// var ageMatch = null

// function match(subjectA, subjectB){
// if (subjectA.age == subjectB.age){
//   ageMatch = true;
//   console.log(ageMatch)
//   } else {
//     ageMatch = false
//     console.log(ageMatch)
//   };
//   }





  // _____________________DRIVER CODE_________________________

//KEY VALUE MATCH DRIVER CODE

// match(dog2,dog3);
// match(dog1,dog3);

//LONGEST WORD DRIVER CODE

// wordSelector(["banana", "elementary", "disco", "unnatural", "uberhauptnicht"]);
// wordSelector(["Lebensabschnittpartner", "Rechtsschutzversicherungsgesellschaften", "Unabhaengigkeitserklaerungen", "Donaudampfschiffahrtsgesellschaftskapitän", "uberhauptnicht"]);

// console.log(randomizer());

//console.log(addRandomWord(3));

