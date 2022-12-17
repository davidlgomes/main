//Código padrão para interatividade do menu hamurguer com SVG
function menuShow() {
    let menuMobile = document.querySelector('.mobile-menu');
    if (menuMobile.classList.contains('open')) {
        menuMobile.classList.remove('open');
        document.querySelector('.icon').src = "assets/img/menu_white_36dp.svg";
    } else {
        menuMobile.classList.add('open');
        document.querySelector('.icon').src = "assets/img/close_white_36dp.svg";
    }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
//Código modificado apenas adaptando a function para linkar as outras páginas já que o SVG está em outro diretório apresentou bug

function menuShowPages() {
    let menuMobile = document.querySelector('.mobile-menu');
    if (menuMobile.classList.contains('open')) {
        menuMobile.classList.remove('open');
        document.querySelector('.icon').src = "/assets/img/menu_white_36dp.svg";
    } else {
        menuMobile.classList.add('open');
        document.querySelector('.icon').src = "/assets/img/close_white_36dp.svg";
    }
}