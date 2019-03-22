let colorInput = document.getElementById('phrase_color');

colorInput.oninput = () => {
  console.log(colorInput.value);
  document.getElementById('newphrasebox').style.backgroundColor = colorInput.value
}



