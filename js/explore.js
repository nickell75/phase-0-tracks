// Input a word
	// Reverse the letters of the word so they will read backwards
	// Output new, reversed, word to screen

//var word = input;
function reverse(word) {
	var revWord = ""
	for (var a = word.length -1; a < 0; a++){
		revWord += word[a]
	}
	
  //if (word == revWord){
  //  return
  //}
  
  if (word === revWord){
    return
  }
  return revWord
  
}
var reversedWord = reverse("This is what we like to do for fun!!...?")
console.log(reversedWord)

console.log(1 == 1)
console.log(1 == 2)