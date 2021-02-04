let everyPopThis = function() {

    // Вроде как сортировка в зависимости от нажатой клавиши  

    let buttonKub = document.querySelectorAll('.btn_price_elem');
    let closebuttonKub = document.querySelectorAll('.everyPop_block_close_popUp');
    for (let i = 0; i < buttonKub.length; i++) {
        closebuttonKub[i].onclick = function() {
            // let count = i + 1;
            // let textGf = '.cat-' + count;
            let Aions = i + 1;
            let Aions2 = '.closeID-' + Aions;
            document.querySelector(Aions2).classList.toggle('disNoPo')

        }
        buttonKub[i].onclick = function() {
            // let count = i + 1;
            // let textGf = '.cat-' + count;
            let lions = i + 1;
            let lions2 = '.mysID-' + lions;
            console.log(lions2);
            document.querySelector(lions2).classList.toggle('disNoPo')

        }
    }

    // Закрытие и открытия окна  

    // при нажатии на блок ребенка, окно не закрывается  
    let buttonKub17 = document.querySelector('.main__services');
    buttonKub17.onclick = function(event) {
        event.stopPropagation();
    }

    let buttonKub13 = document.querySelector('.btn_13');
    buttonKub13.onclick = function() {
        document.querySelector('.window_services').style.display = "none";
    }

    let windowKub13 = document.querySelector('.window_services');
    windowKub13.onclick = function() {
        windowKub13.style.display = "none";
    }

    let moreTextKub13 = document.querySelectorAll('.text__more');

    for (let g = 0; g < moreTextKub13.length; g++) {
        moreTextKub13[g].onclick = function() {
            document.querySelector('.window_services').style.display = "flex";
            let buttonTitleSer = document.querySelectorAll('.title_services');
            buttonTitleSer[g].click();
        }

    }

    let moreTextKub13s = document.querySelector('.text__mores');

    for (let g = 0; g < moreTextKub13.length; g++) {
        moreTextKub13s.onclick = function() {

            document.querySelector('.window_services').style.display = "flex";
            let buttonTitleSer = document.querySelectorAll('.title_services');
            buttonTitleSer[0].click();
        }

    }



};

export { everyPopThis };