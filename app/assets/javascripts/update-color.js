let colorInput = document.getElementById('phrase_color');

function update() {

  colorInput.onfocus = () => {
    $('body').addClass('no-scroll');
  }

  colorInput.oninput = () => {
    console.log(colorInput.value);
    document.getElementById('newPhraseBackground').style.backgroundColor = colorInput.value
  }

  colorInput.onblur = () => {
    $('body').removeClass('no-scroll');
  }

};

$(document).ready(update);
$(document).on('page:load', update);
