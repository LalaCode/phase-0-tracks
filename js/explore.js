//PSUEDOCODE:

//Initiate an empty string that will hold the reversed string
//Take string as argument in function
//Iterate over each letter starting with the last letter
  //identify letter by the position the string
  //while the string is larger than -1 the loop should continue
  //subtract 1 from letter index
  //add that letter to the empty string
  
//print variable based on meeting a condition

var string = "hello"
var newString = "";
var sunny = true

function reverse(word){

  for (var i = word.length-1; i>-1; i--) {
    newString = newString + word[i];
  };
  console.log(newString)

};

//reverse(string)

if (sunny == true){
  reverse(string);
};



