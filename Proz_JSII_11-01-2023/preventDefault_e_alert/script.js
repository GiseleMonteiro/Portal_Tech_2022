let linkProz = document.getElementById("link-proz");
let btnSubmit = document.querySelector("button[type=submit]");

//Função preventDefault(), para impedir o padrão, 
//ou seja, desativa o comportamento padrão de algum elemento HTML.
//Função alert() ajuda a controlar quais interações queremos fornecer
//ao usuário e quando queremos liberá-las.
linkProz.addEventListener("click", (e)=>{
    e.preventDefault();
    alert("Não foi possível acessar o link");
})

btnSubmit.addEventListener("click", (e)=>{
    alert("Não foi possível enviar os dados do formulário");
    e.preventDefault();
})