function copyToClipboard() {
  document.getElementById('phrase_color').select();
  document.execCommand("copy");
  document.clearSelection();
}

const copyHex = document.getElementById('copyHex');

copyHex.addEventListener("click", event => {
  copyToClipboard();
});
