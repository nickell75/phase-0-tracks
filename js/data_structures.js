var colors = ["red", "blue", "green", "yellow"];
var names = ["Mr. Ed", "Blue Face", "Seabiscuit", "Silver"];

colors.push("brown");
names.push("Flicka");

var horses = {};
	for (var i = 0; i < colors.length; i++){
		horses[names[i]] = (colors[i]);
	}



console.log(horses);