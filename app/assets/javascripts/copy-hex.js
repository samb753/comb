function copyHexToClipboard() {
  let bgColor = document.getElementsByClassName('phrase-container')[0].style.backgroundColor;
  let converted = rgbToHex(bgColor);
  let showHex = document.getElementById('phraseHex');
  if (showHex === null ) {
    copyStringToClipboard(converted);
    console.log(`${converted} copied!`);
  } else {
    copyStringToClipboard(showHex.innerText);
    console.log(`${showHex.innerText} copied!`);
  }
}

function rgbToHex(color) {
    color = ""+ color;
    if (!color || color.indexOf("rgb") < 0) {
        return;
    }

    if (color.charAt(0) == "#") {
        return color;
    }

    var nums = /(.*?)rgb\((\d+),\s*(\d+),\s*(\d+)\)/i.exec(color),
        r = parseInt(nums[2], 10).toString(16),
        g = parseInt(nums[3], 10).toString(16),
        b = parseInt(nums[4], 10).toString(16);

    return "#"+ (
        (r.length == 1 ? "0"+ r : r) +
        (g.length == 1 ? "0"+ g : g) +
        (b.length == 1 ? "0"+ b : b)
    );
}

function copyStringToClipboard(str) {
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

function clearSelection() {
   if (window.getSelection) {window.getSelection().removeAllRanges();}
   else if (document.selection) {document.selection.empty();}
 }

const copyHex = document.getElementById('copyHex');

copyHex.addEventListener('click', event => {
  copyHexToClipboard();
  clearSelection();
  let copyHexTooltip = document.getElementById('copyHexTooltip');
  copyHexTooltip.setAttribute('aria-label', 'copied!');
  setTimeout(function() {
    copyHexTooltip.setAttribute('aria-label', 'copy hex');
  }, 500);
});




