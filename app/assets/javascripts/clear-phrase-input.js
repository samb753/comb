let firstWord = document.getElementById("phrase_first_word");
let secondWord = document.getElementById("phrase_second_word");

firstWord.addEventListener("click", event => {
 firstWord.value = "";
});

secondWord.addEventListener("click", event => {
 secondWord.value = "";
});

clearPhrase = () => {
  firstWord.value = "";
  secondWord.value = "";
  colorInput.value = "";
  document.getElementById('newPhraseBackground').style.backgroundColor = colorInput.value
}
