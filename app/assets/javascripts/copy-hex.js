function copyToClipboard() {
  colorInput.select();
  document.execCommand("copy");
  // colorInput.minicolors('value','#00FF00');
}

function clearSelection() {
 if (window.getSelection) {window.getSelection().removeAllRanges();}
 else if (document.selection) {document.selection.empty();}
}

const copyHex = document.getElementById('copyHex');

copyHex.addEventListener("click", event => {
  copyToClipboard();
  clearSelection();
});


document.addEventListener('keyup', (e) => {
  if (e.code === 'KeyC') {
    copyToClipboard();
  }
});
