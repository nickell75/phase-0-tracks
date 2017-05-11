//________PSEUDOCODE____________
// Input words or a phrase and store in a data structure
//	Search through the data structure for the longest word or phrase

function longestString(words){
	console.log(words);
  var temp = "";
	for (var x = 0; x < words.length; x++){
	  if (words[x] > temp){
	  	temp = words[x];
	  }
	}
	console.log(temp);
}
//___________DRIVER CODE_____________

var anotherString = new longestString(["Oranges" , "Box", "Apple"]);
anotherString;