document.addEventListener("turbolinks:load", function() {
  let colorInput = document.getElementById('phrase_color');

  // colorInput.onfocus = () => {
  //   $('body').css('overflow', 'hidden');
  // }

  //  colorInput.onblur = () => {
  //   $('body').css('overflow', 'auto');
  // }

  colorInput.oninput = () => {
    console.log(colorInput.value);
    document.getElementById('newPhraseBackground').style.backgroundColor = colorInput.value
  }
})
