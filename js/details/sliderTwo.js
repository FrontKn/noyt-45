// let cartForStorage = document.querySelectorAll('.part_main');
// let leftA = document.querySelector('.arrow_left');
// let rightA = document.querySelector('.arrow_right');
// let main = document.querySelector('.main-slider');
// let lengStorage = cartForStorage.length;

// leftA.addEventListener('click', function() {

//     let arrowwAll = [];
//     for (let i = 0; i < 6; i++) {

//         cartForStorage = document.querySelectorAll('.part_main');
//         let overMap = cartForStorage[i];
//         arrowwAll.push(overMap);
//     }
//     main.insertAdjacentElement('afterBegin', arrowwAll[lengStorage - 1]);
// })


// rightA.addEventListener('click', function() {
//     let arrowwAll = [];
//     for (let i = 0; i < 6; i++) {

//         cartForStorage = document.querySelectorAll('.part_main');
//         let overMap = cartForStorage[i];
//         arrowwAll.push(overMap);
//     }
//     main.insertAdjacentElement('beforeend', arrowwAll[0]);
// })

function sliderTwo() {


    let cartForStorage = document.querySelectorAll('.product__offer');
    let leftA = document.querySelector('.arrow__left');
    let rightA = document.querySelector('.arrow__right');
    let main = document.querySelector('.all__offer');
    let lengStorage = cartForStorage.length;


    rightA.addEventListener('click', function() {
        let arrowwAll = [];
        for (let i = 0; i < 6; i++) {

            cartForStorage = document.querySelectorAll('.product__offer');
            let overMap = cartForStorage[i];
            arrowwAll.push(overMap);
        }
        main.insertAdjacentElement('afterBegin', arrowwAll[lengStorage - 1]);
    })


    leftA.addEventListener('click', function() {
        let arrowwAll = [];
        for (let i = 0; i < 6; i++) {

            cartForStorage = document.querySelectorAll('.product__offer');
            let overMap = cartForStorage[i];
            arrowwAll.push(overMap);
        }
        main.insertAdjacentElement('beforeend', arrowwAll[0]);
    })
}

export { sliderTwo };