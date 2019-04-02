var formClearer = document.getElementById("formClearButton");

formClearer.addEventListener("click", clearForm);

function clearForm() {
  document.getElementById('phrase_first_word').value = "";
  document.getElementById('phrase_second_word').value = "";
}
