var horse_colors = ["brown", "black", "white", "blue"];
var horse_names = ["Piper", "Judy", "Birke", "Fred"];


horse_colors.push("orange");
horse_names.push("Lovey");

var horse_info = {}

for (var i=0; i < horse_names.length; i++ ) {horse_info[horse_names[i]] = horse_colors[i]};

console.log(horse_info)