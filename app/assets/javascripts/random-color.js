document.addEventListener('keyup', (e) => {
  if (e.code === 'Space') {
    colorInput.value = '#'+(Math.random()*0xFFFFFF<<0).toString(16);
    document.getElementById('newPhraseBackground').style.backgroundColor = colorInput.value
  }
});
