  // setInterval(function() {
  //   document.getElementById('bgtest') = '#' + Math.floor(Math.random() * 16777215).toString(16);
  // }, 2000)
var randomColor = "#"+((1<<24)*Math.random()|0).toString(16);

document.documentElement.style.setProperty('main-bg-color', randomColor);
