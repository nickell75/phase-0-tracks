//________PSEUDOCODE________Release 0____
// Input words or a phrase and store in a data structure
//	Search through the data structure for the longest word or phrase

function longestString(words){
	console.log(words);
	wordSplit = words.split(' ');
	var temp = "";
		for (var x = 0; x < wordSplit.length; x++){
	  		if (wordSplit[x].length > temp.length){
	  		temp = wordSplit[x];
	  		}
		}
	console.log("The longest word in this phrase is: " + temp);
}

//___________DRIVER CODE_____________
// Release 0
var anotherString = new longestString("This is how we Cowboy BeBop!");
anotherString;
