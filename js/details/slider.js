function slider() {



    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    // function currentSlide(n) {
    //     showSlides(slideIndex = n);
    // }



    // авыавыаывавы авы авыа выа ыа выа 


    let prevButtonSlider = document.querySelector('.prev');
    prevButtonSlider.onclick = function() { plusSlides(-1) };

    let nextButtonSlider = document.querySelector('.next');
    nextButtonSlider.onclick = function() { plusSlides(1) };

    let dotButton = document.querySelectorAll('.dot');

    for (let p = 0; p < dotButton.length; p++) {

        dotButton[p].onclick = function() { currentSlide(p + 1) }
    }

    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }


    // let leftArrow = document.querySelector('.arrow__left');
    // let rightArrow = document.querySelector('.arrow__right');
    // let productArrow = document.querySelectorAll('.product__offer');
    // let productLenght = productArrow.length;


    // leftArrow.onclick = function() {
    //     productArrow[0].style.marginLeft = productArrow[0].style.marginLeft + "-50px";
    // }

    // console.log(productArrow[productLenght - 1]);
    // rightArrow.addEventListener('click', function() {
    //     // console.log(123);
    //     productArrow[productLenght - 1].style.marginRight += "50px";
    // });
}

export { slider };