/*function listar(){
    var x = document.getElementById("cliente").options.item(meu_form.cliente).text;
}
function trim(){
    var str = meu_form.cod_veiculo.value; 
    alert( 'string ANTES do replace: '+str );
    str.replace( /\s/g, '' );
}
function Trim(){
        var get_value = document.getElementById('text');
        var campo_temp
        var replace_1 =  get_value.value.replace(/^\s+|\s+$/g,"");

        campo_temp=get_value.value.substring(0,1);
        if (campo_temp==" "){
        text.value = replace_1;}
        var replace_2 = get_value.value.replace(/^\s+|\s+$/g," ");
        text.value = replace_2;

}
function trim(str){
        var str = meu_form.cod_veiculo.value; 
        return str.replace(/^\s+|\s+$/g,"");
        trim(str);
        alert(trim(str));
	}
function trim(str){
        var placa = meu_form.placa.value; 
        return str.replace(/^\s+|\s+$/g,"");
	}*/



/*if (placa.search(/[^a-zA-Z]+/) === -1) {
     alert("Neste Campo Insira as 3 Primeiras  letras de A a Z !");
    }
 if (meu_form.placa.value == meu_form.iguais.value) 
        {
        alert("O Campo placa já estar cadastrado! ");
        meu_form.placa.focus();
        return(false);
        }*/
(function(){
  ('input[@name=placa_veiculo]').mask('aaa-9999');
});

function SomenteNumero(e){
    var tecla=(window.event)?event.keyCode:e.which;   
    if((tecla>47 && tecla<58)) return true;
    else{
    	if (tecla==8 || tecla==0) return true;
	else  return false;
    }
}
function verificar(){  
    
    var placa = meu_form.placa.value;  
    var ano_fabricacao = meu_form.ano_fabricacao.value;
    var ano_modelo = meu_form.ano_modelo.value;
    var cliente = meu_form.cliente.value;

    if (meu_form.ano_fabricacao.value.length<4) 
        {
        alert("O campo ano de fabricacao  deve conter 4 digitos!");
        meu_form.placa.focus();
        return(false);
        }
 
         if (meu_form.ano_modelo.value.length<4) 
        {
        alert("O campo ano modelo deve conter 4 digitos!");
        meu_form.ano_modelo.focus();
        return(false);
        }

     if ( cliente =='' || ano_fabricacao == '' || ano_modelo == '' || placa == '') {  
        alert('Preencha o campo em branco só o campo codigo que é automatico');  
        meu_form.placa.focus(); 
        return false;
     } else {
        document.forms["meu_form"].submit();
     } 
}
function validar() {  
    
    var nome = meu_form.nome.value;  
    var endereco = meu_form.endereco.value;
    var bairro = meu_form.bairro.value;
    var cep = meu_form.cep.value;
    
    if (meu_form.cep.value.length<7) 
        {
        alert("O campo cep deve conter 7 digitos!");
        meu_form.cep.focus();
        return(false);
        }
        /*     switch (nome)
            {
               case '': alert("Os campos estao em branco!");
               break;
               default:document.forms["meu_form"].submit();
            }
            
      
    if ( endereco == "" || bairro == "" || cep == "" || nome == "") {  
        alert('Preencha o campo em branco só o campo codigo que é automatico');  
        meu_form.nome.focus(); 
        return false;
     } else {
        document.forms["meu_form"].submit();
     }  
      */ 
     if ( endereco=='' || bairro == '' || cep == '' || nome == '') {  
        alert('Preencha o campo em branco só o campo codigo que é automatico');  
        meu_form.nome.focus(); 
        return false;
     } else {
        document.forms["meu_form"].submit();
     } 
}

