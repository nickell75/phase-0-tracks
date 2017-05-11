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

//________PSEUDOCODE________Release 1____
// Take in two data structures
//		compare each structure for shared values

function compareObjects(objectOne, objectTwo){
	console.log("Compared Objects true/false: ")
  for (var key in objectOne){
    for (var nextKey in objectTwo){
      if (key === nextKey){
        if (objectOne[key] === objectTwo[nextKey]){
          return true;
        } 
      }
    }
  }
  return false;
}

//________PSEUDOCODE________Release 2____
// Take in a number for length
//		Using length, build a data structure of random characters 
// 		Output the data structure of length size random words
//			Parameters: Random word length between 1 and 10 letters

function randomWords(number) {
  var word =[];  
  for(var j=0; j<number; j++){
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var newString = "";
    for (var i =0; i < Math.random()*10; i++) {
      newString += (alphabet[Math.round(Math.random() * 10)]);
    }
    word.push(newString);
  }
  console.log(word);
}

//___________DRIVER CODE_____________
// Release 0
//var anotherString = new longestString;
longestString("This is how we Cowboy BeBop!");

//___________DRIVER CODE_____________
// Release 1
console.log(compareObjects({name: "Steven", age: 54}, {name: "Tamir", age: 54}));

console.log(compareObjects({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));

console.log(compareObjects({animal: "Cat", legs: 4}, {animal: "Dog", legs: 3}));

//___________DRIVER CODE_____________
// Release 2
randomWords(3);