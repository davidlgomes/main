const alfabeto_minusculo = 'abcdefghijklmnopqrstuvwxyz';/*Declaração de constantes*/
const alfabeto_maiusculo = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const caracteres_base_64= 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/='
var tamanho_caracteres_base_64=caracteres_base_64.length;
var tamanho_alfabeto_maiusculo=alfabeto_maiusculo.length;
var tamanho_alfabeto_minusculo=alfabeto_minusculo.length;
var acao;

function muda_botao(){
   if (document.getElementById("acao_realizada_codificar").checked) {
      document.getElementById("submit").value='Codificar Mensagem!';              /*função para mudar botões*/
   } 
   else if (document.getElementById("acao_realizada_decodificar").checked) {
      document.getElementById("submit").value='Decodificar Mensagem!';
   }
}

function mostra_campo_deslocamento(){
   var select = document.getElementById('algoritmo');
   var input_deslocamento = document.getElementById('label_deslocamento'); /*função para deixar oculto ou ativo o input deslocamento*/
   input_deslocamento.style.visibility = (select.value == 'cifra_de_cesar') 
      ? "visible"
      : "hidden";  
}
function codificar(){/*Função de escolha qual algoritmo usar*/
   if (document.getElementById("acao_realizada_codificar").checked) {
      acao=document.getElementById("acao_realizada_codificar").value;
   } 
   else if (document.getElementById("acao_realizada_decodificar").checked) {
      acao=document.getElementById("acao_realizada_decodificar").value; 
   }
   var codificado=document.getElementById('codificado');
   select = document.getElementById('algoritmo');
	var algoritmo = select.options[select.selectedIndex].value;
   var codificar = document.getElementById('codificar').value;
   if((acao=='codificar')&&(algoritmo=='base64')){
         codificado.value='';
         codificarBase64(codificar, codificado);
   }
   if((acao=='decodificar')&&(algoritmo=='base64')){  
      codificado.value=''
      if(isBase64(codificar)==false){
         codificado.value  = "Não é uma string Base64";
         return codificado.value;
      }
      decodificarBase64(codificar, codificado)
   }
   if((acao=='codificar')&&(algoritmo=='cifra_de_cesar')){
      codificado.value=''
      codificarCifraDeCesar(codificar, codificado)
   }
   if((acao=='decodificar')&&(algoritmo=='cifra_de_cesar')){
      codificado.value=''
      decodificarCifraDeCesar(codificar, codificado)
   }
}


function codificarBase64(codificar, codificado){/*Função Codificar Base64*/
   codificado.value = "";
   code=window.btoa(codificar);
   codificado.value = code;
}

function decodificarBase64(codificar, codificado){/*Função Decodificar Base64*/
   tamanhoCodificar=codificar.length;
   for(var indice=0; indice<tamanhoCodificar; indice++){
      var contador=0;
      for(var indiceAuxiliar=0; indiceAuxiliar<tamanho_caracteres_base_64; indiceAuxiliar++){
         if(codificar[indice]==caracteres_base_64[indiceAuxiliar]){
            contador++;
         }
      }
      if(contador==0){
         codificado.value = `Caractere ${codificar[indice]} inválido. Favor trocar`;
         return "Caractere Inválido";
      }
   }
   encode=window.atob(codificar);
   codificado.value = encode;
}

function codificarCifraDeCesar(codificar, codificado){/*Função Codificar Cifra de César*/
   codificado.value = "";
   var deslocamento=document.getElementById('input_deslocamento').value;
   if((deslocamento=='')||
      (isNaN(deslocamento))||
      (deslocamento<0)||
      (deslocamento>tamanho_alfabeto_maiusculo)||
      (Number.isInteger(parseInt(deslocamento)==false))
   ){
      codificado.value = `Erro: O deslocamento precisa ser um número pertencente ao conjunto dos números inteiros matemáticos válido e estar contido entre 0 e ${tamanho_alfabeto_maiusculo}`
      return "erro";
   }
   var tamanhoCodificar=codificar.length;
   var posicao_maiusculo;
   var posicao_minusculo;
   var codificada="";
   for(var indice=0; indice<tamanhoCodificar; indice++){
      posicao_maiusculo=alfabeto_maiusculo.indexOf(codificar[indice]);
      posicao_minusculo=alfabeto_minusculo.indexOf(codificar[indice]);
      if(posicao_maiusculo!=-1){
         codificada += alfabeto_maiusculo[(posicao_maiusculo+parseInt(deslocamento))%tamanho_alfabeto_maiusculo];
      }
      else if(posicao_minusculo!=-1){
         codificada += alfabeto_minusculo[(posicao_minusculo+parseInt(deslocamento))%tamanho_alfabeto_minusculo];
      }
      else{
         codificada+=codificar[indice];
      }
   }
   codificado.value = `${codificada}`
}

function decodificarCifraDeCesar(codificar, codificado){/*Função Decodificar Cifra de César*/
   codificado.value = "";
   var deslocamento=document.getElementById('input_deslocamento').value;
   if((deslocamento=='')||
      (isNaN(deslocamento))||
      (deslocamento<0)||
      (deslocamento>tamanho_alfabeto_maiusculo)||
      (Number.isInteger(parseInt(deslocamento)==false))
   ){
      codificado.value=`Erro: O deslocamento precisa ser um número pertencente ao conjunto dos números inteiros matemáticos válido e estar contido entre 0 e ${tamanho_alfabeto_maiusculo}`
      return codificado.value;
   }
   var tamanhoCodificar=codificar.length;
   var posicao_maiusculo;
   var posicao_minusculo;
   var codificada="";
   for(var indice=0; indice<tamanhoCodificar; indice++){
      posicao_maiusculo=alfabeto_maiusculo.indexOf(codificar[indice]);
      posicao_minusculo=alfabeto_minusculo.indexOf(codificar[indice]);
      if(posicao_maiusculo!=-1){
         codificada += alfabeto_maiusculo[(posicao_maiusculo-parseInt(deslocamento))<0?posicao_maiusculo-parseInt(deslocamento)+26:(posicao_maiusculo-parseInt(deslocamento))>26?(posicao_maiusculo-parseInt(deslocamento))-26:(posicao_maiusculo-parseInt(deslocamento))];
      }
      else if(posicao_minusculo!=-1){
         codificada += alfabeto_minusculo[(posicao_minusculo-parseInt(deslocamento))];
      }
      else{
         codificada+=codificar[indice];
      }
   }
   codificado.value = `${codificada}`
}
function isBase64(str) {
   try {
       return atob(str) ? true : false
   } catch(e) {
       return false
   }
}
