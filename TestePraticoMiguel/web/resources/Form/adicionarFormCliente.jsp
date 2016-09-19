<%-- 
    Document   : adicionarFormCliente
    Created on : 16/12/2015, 00:48:24
    Author     : Administrador
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*, controle.Conexao" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title> GERENCIADORA DE RISCO </title>
     <link href="css/styles.css" rel="/stylesheet" type="text/css"/>  
     <!-- <link rel="stylesheet" href="<c:url value='/teste/teste.css'" /> --> 
     <script src="../JavaScript/JavaScript2.js"></script>
     <style type="text/css">
      @import url("../css/styles.css");
      @import url("../css/FormularioEstilo.css");
     </style>
      <script type="text/javascript">
       @import url("../JavaScript/JavaScript2.js");
      </script>
      
 <!--<script language="javascript" type="text/javascript">
function validar() {  
    var nome = meu_form.nome.value;  
    var endereco = meu_form.endereco.value;
    var bairro = meu_form.bairro.value;
    var cep = meu_form.cep.value;
    if (nome == "") {  
        alert('Preencha o campo em branco só o campo codigo que é automatico');  
        meu_form.nome.focus(); 
        return false;
     } else {
        document.forms["meu_form"].submit();
     }  
}
</script>  -->
    </head>

    <body>
     <div id="topoExp">
      <div id="topo">
       <div id="logo"> <img src="../Img/logo.jpg" /> </div>
       <div id="menu">
            <ul>
           <li><a href="http://localhost:8084/TestePraticoMiguel/">INICIO</a></li>
           <li><a href="adicionarFormCliente.jsp">CADASTRAR CLIENTE</a>
              <ul>
               <li><a href="listarFormCliente.jsp">LISTAR CLIENTES</a></li>                               
              </ul>
           </li>
           <li><a href="adicionarFormVeiculos.jsp">CADASTRAR VEICULOS</a>
              <ul>
                <li><a href="listarFormVeiculos.jsp">LISTAR VEICULOS</a></li>                                
              </ul>
           </li>
           
         </ul>
       </div>
      </div>
   </div>
        <h1>CADASTRO DE CLIENTE</h1>
        <form  name="meu_form" action ="InserirCliente.jsp" method="post">
         <table>
              <p class="nome">
            <tr>
                <td><label> CODIGO </label></td>
                <td><label> NOME </label></td>
                <td> <label>ENDERECO</label></td>
                <td> <label>BAIRRO</label></td>
                <td> <label>CEP</label></td>
            </tr>
             
            <tr>
                <td> <input type="text"  name="cod_cliente"  disabled> </td>
                <td> <input type="text"  name="nome"  > </td>
                <td> <input type="text"  name="endereco"  > </td>
                <td> <input type="text"  name="bairro"  > </td>
                <td> <input type="text"  name="cep" onkeypress='return SomenteNumero(event)' ></td>
                <td> <input type="hidden"  name="ac" value="adicionar" > </td>
            </tr>
              </p>
         </table>
            <br>
          <p class="submit">
              <input type="button"  name="SALVAR"  value="CADASTRAR" onclick="validar()"> </p>
         <!-- <a href="http://localhost:8084/TestePraticoMiguel/">VOLTAR</a> -->
        </form>
        <br><br><br>
        
    <div id="rodapeExp">
      <div id="rodape">
      <div id="texto_rodape">GR - gerenciadora de riscos - todos os direitos resevados</div>
      <div id="logo_rodape"><img src="../Img/log.jpg"/></div>
      </div>
   </div>
    </body>
</html>
