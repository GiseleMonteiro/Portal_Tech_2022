let numero = document.querySelector("h1");
let botao = document.querySelector("button");
let contagem = 0;


//Declarando função separadamente.
function adicionarUm(){
    contagem = contagem + 1;
    numero.innerText = contagem;
}

botao.addEventListener("click", adicionarUm);

//Escrever como uma função anônima dentro do parênteses do addEventListener.
botao.addEventListener("click", function(){
    contagem = contagem + 1;
    numero.innerText = contagem;
});

//Alternativa para organização do código:
//Uso de arrow functions para declarar a função anônima,
//substituindo o trecho function() por ()=>.
botao.addEventListener("click", ()=>{
    contagem = contagem + 1;
    numero.innerText = contagem;
})