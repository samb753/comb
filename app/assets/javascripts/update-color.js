document.addEventListener("turbolinks:load", function() {
  let colorInput = document.getElementById('phrase_color');

  colorInput.onfocus = () => {
    $('body').addClass('no-scroll');
  }

   colorInput.onblur = () => {
    $('body').removeClass('no-scroll');
  }

  colorInput.oninput = () => {
    console.log(colorInput.value);
    document.getElementById('newPhraseBackground').style.backgroundColor = colorInput.value
  }
})
