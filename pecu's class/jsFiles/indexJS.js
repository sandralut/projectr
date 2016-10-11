var myVar = setInterval(myTimer, 1000);

function myTimer() {
    var d = new Date();
    var n = d.toLocaleTimeString();
    document.getElementById("clock").innerHTML = n;
}