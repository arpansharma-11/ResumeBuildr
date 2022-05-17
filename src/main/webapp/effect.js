var imageElement = document.getElementById('img');
var highLight = document.querySelectorAll('#highlight');
var imageArray = ["img/1.png", "img/2.png", "img/3.png"];
var i = 0;
setInterval(() => {
    highLight.forEach(element => {
        element.classList.remove('highlight');
    });
    
    highLight[i].classList.add('highlight');

    imageElement.src = imageArray[i];
    i = i + 1;
    i = i % imageArray.length;
}, 3000);

