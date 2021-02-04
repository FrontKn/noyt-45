let servicPopUp = function() {
    let buttonTitleSer = document.querySelectorAll('.title_services');


    // let idTitleSer = document.querySelectorAll('.title_services');
    for (let i = 0; i < buttonTitleSer.length; i++) {
        buttonTitleSer[i].onclick = function() {

            for (let j = 0; j < buttonTitleSer.length; j++) {
                buttonTitleSer[j].classList.remove('title_services_active');
                // idTitleSer.push(document.querySelectorAll('.cat-' + j));
            }

            let count = i + 1;
            let textGf = '.cat-' + count;
            let elemListTitleSer = document.querySelectorAll('.list_element_ser');
            for (let k = 0; k < elemListTitleSer.length; k++) {
                elemListTitleSer[k].classList.add('disNoPo');

            }
            let idTitleSer = document.querySelectorAll('' + textGf);

            for (let p = 0; p < idTitleSer.length; p++) {
                idTitleSer[p].classList.remove('disNoPo');

            }
            buttonTitleSer[i].classList.add('title_services_active');

        };

    }
};


// for(i=0;i<buttonKub.lenght;i++){
//     buttonKub[i].onclick(function(){
//       lions = i++;
//      document.queverySelector('' +  '.' + lions).classList.toggle('disNone')
//    }
// }
export { servicPopUp };