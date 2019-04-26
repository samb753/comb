
function copyToClipboard() {
  let bgColor = document.getElementsByClassName('phrase-container')[0].style.backgroundColor;
  let converted = rgb2hex(bgColor);
  copyStringToClipboard(converted);
  console.log(`${converted} copied!`);
}

function clearSelection() {
 if (window.getSelection) {window.getSelection().removeAllRanges();}
 else if (document.selection) {document.selection.empty();}
}

const copyHex = document.getElementById('copyHex');

copyHex.addEventListener('click', event => {
  copyToClipboard();
  clearSelection();
  let copyHexTooltip = document.getElementById('copyHexTooltip');
  copyHexTooltip.setAttribute('aria-label', 'copied!');
  setTimeout(function() {
            copyHexTooltip.setAttribute('aria-label', 'copy hex');
        }, 500);
});

function rgb2hex(rgb){
 rgb = rgb.match(/^rgba?[\s+]?\([\s+]?(\d+)[\s+]?,[\s+]?(\d+)[\s+]?,[\s+]?(\d+)[\s+]?/i);
 return (rgb && rgb.length === 4) ? "#" +
  ("0" + parseInt(rgb[1],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[2],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[3],10).toString(16)).slice(-2) : '';
}

function copyStringToClipboard (str) {
   // Create new element
   var el = document.createElement('textarea');
   // Set value (string to be copied)
   el.value = str;
   // Set non-editable to avoid focus and move outside of view
   el.setAttribute('readonly', '');
   el.style = {position: 'absolute', left: '-9999px'};
   document.body.appendChild(el);
   // Select text inside element
   el.select();
   // Copy text to clipboard
   document.execCommand('copy');
   // Remove temporary element
   document.body.removeChild(el);
}
