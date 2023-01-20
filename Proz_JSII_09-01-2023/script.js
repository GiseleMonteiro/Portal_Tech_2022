//Capturar elementos do DOM e definir variável
let keyText = document.querySelector("#key-text");
let codeText = document.querySelector("#code-text");
let quadrado = document.querySelector("#quadrado");
let distanciaDaEsquerda = 0

/*  keypress: tipo de evento que só reconhece teclas de letras, numeros ou pontuação, 
            ou seja, desconsidera teclas como Shift, Alt, setas, etc.
    keydown: tipo de evento disparado ao apertar uma tecla. Ele é executado de forma
            repetida se a tecla permanece apertada.
    keyup: tipo de evento disparado ao soltar uma tecla. Importante destacar que, 
            antes, ela precisa ser pressionada.*/

document.addEventListener("keyup", (e)=>{
    console.log(e.key);
    console.log(e.code);
    //Exibindo os valores das propriedades key e code
    keyText.innerText = e.key;
    codeText.innerText = e.code;
})

//Deslocar um elemento
document.addEventListener("keydown", (e)=>{
    if(e.code == "ArrowRight"){
        distanciaDaEsquerda = distanciaDaEsquerda + 10
        console.log("Apertou a seta à direita");
        console.log(distanciaDaEsquerda);
        //Definir a distância entre o elemento e a borda esquerda do seu elemento pai
        //Necessário concatenar valor da variável + unidade de medida
        quadrado.style.left = distanciaDaEsquerda + "px"
    }
})