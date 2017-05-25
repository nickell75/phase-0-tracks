console.log("hello world!");

var font = document.getElementById("header");
font.style.fontFamily = "'Comic Sans MS', cursive, sans-serif";
font.style.fontSize = "70px";

function changeColor(event) {
	event.target.style.color = "#ff69b4"; 
};

var color = document.getElementById("first-paragraph");
color.addEventListener("mouseover", changeColor);

function addPhoto(event){
	document.getElementById("img").innerHTML += "<img src='hooray.gif'>";
};

var button = document.getElementById("hooray");
hooray.addEventListener("click", addPhoto)