let button = document.querySelector("button");
let span = document.querySelector("span");
let section = document.querySelector("section");

//Mouseover
function mostrarSpan(){
    span.style.opacity = "100"
}

button.addEventListener("mouseover", mostrarSpan);

//Mouseout
/*function ocultarSpan(){
    span.style.opacity = "0"
}

button.addEventListener("mouseout", ocultarSpan);*/

//Evento click: junção dos eventos mousedown e mouseup
/*function fazerUmClick(){
    section.innerText = "Fez um click simples"
}

button.addEventListener("click", fazerUmClick);*/

//Evento dbllick (duplo click)
/*function fazerDoisClicks(){
    section.innerText = "Fez um duplo click!"
}

button.addEventListener("dblclick", fazerDoisClicks);*/
