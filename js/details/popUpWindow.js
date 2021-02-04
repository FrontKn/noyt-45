let popUpWindow = function() {
    let buttonWindow = document.querySelectorAll('.it_toggle_close');

    let buttonWindowLog = document.querySelectorAll('.it_toggle_close_log');

    for (let i = 0; i < buttonWindow.length; i++) {
        buttonWindow[i].onclick = function() {
            document.querySelector('.popUp__Reg').classList.toggle('disNoPo');
        };

    }

    for (let i = 0; i < buttonWindow.length; i++) {
        buttonWindowLog[i].onclick = function() {
            document.querySelector('.popUp__log').classList.toggle('disNoPo');
        };

    }
};

export { popUpWindow };