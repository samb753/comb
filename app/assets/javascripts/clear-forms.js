let firstWord = document.getElementById("phrase_first_word");
let secondWord = document.getElementById("phrase_second_word");

firstWord.addEventListener("click", event => {
  document.getElementById('phrase_first_word').value = "";
});

secondWord.addEventListener("click", event => {
  document.getElementById('phrase_second_word').value = "";
});
