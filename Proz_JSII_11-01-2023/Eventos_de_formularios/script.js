//Capturar os elementos do DOm que usaremos:
let inputEmail = document.getElementById("email");
let inputIdade = document.getElementById("idade");
let formulario = document.querySelector("form");

//Eventos em formulários:
//focus = o elemento é focado pelo usuário.
//blur = o elemento perde o foco do usuário.
//change = o elemento teve seu valor alterado depois de perder o foco.

inputEmail.addEventListener("focus", ()=>{
    inputEmail.style.backgroundColor = "lightgreen"
})
inputEmail.addEventListener("blur", (e)=>{
    //A string vazia remove a estilização aplicada anteriormente
    e.target.style.backgroundColor = ""
})
inputIdade.addEventListener("change", ()=>{
    alert("Certeza que quer alterar seus dados?")
})
formulario.addEventListener("submit", ()=>{
    alert("Dados enviados com sucesso!")
})
