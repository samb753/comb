function copyToClipboard() {
  document.getElementById('phrase_color').select();
  document.execCommand("copy");
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
