let colorInput = document.getElementById('phrase_color');

colorInput.oninput = () => {
  console.log(colorInput.value);
  document.getElementById('newPhraseBackground').style.backgroundColor = colorInput.value
}


