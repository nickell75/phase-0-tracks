var colors = ["red", "blue", "green", "yellow"];
var names = ["Mr. Ed", "Blue Face", "Seabiscuit", "Silver"];

colors.push("brown");
names.push("Flicka");

var horses = {};
	for (var i = 0; i < colors.length; i++){
		horses[names[i]] = (colors[i]);
	}
console.log(horses);

function car(year, make, model, color){
	this.year = year;
	this.make = make;
	this.model = model;
	this.color = color;

	//Additional Function
	this.paint = function(color) {
		this.color = color;
		console.log("This " + this.year + " " + this.make + " " + this.model + " painted to be " + this.color);
	}
}
var newCar1 = new car (2014, "Chevy", "Camero", "white");
var newCar2 = new car (2014, "Chevy", "Tahoe", "blue");
var newCar3 = new car (2004, "Toyota", "Camry", "black");
console.log(newCar1);
console.log(newCar2);
console.log(newCar3);
newCar1.paint("Red");
newCar2.paint("Orange");
newCar3.paint("Pink");

