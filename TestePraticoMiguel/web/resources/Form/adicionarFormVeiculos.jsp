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
      
<script language=javascript>
     function validaPlaca(placa){  
         placa = placa.toUpperCase();  
         placaLen=placa.length;   
         letras="ABCDEFGHIJKLMNOPQRSTUWVXYZ";   
         numeros="1234567890"   
         for(i=0;i<=placaLen;i++)   {	  
             if (i<=2)	  {		 
             if(letras.indexOf(placa.charAt(i))==-1)		 
             {			
                 alert("Placa Inválida - formato XXX9999")			
                 document.formulario.placa.focus();		 
             }	  }	  else	  {		 
             if(numeros.indexOf(placa.charAt(i))==-1)		 {
                 alert("Placa Inválida - formato XXX9999")			
                 document.formulario.placa.focus();		 }	  }   }}
</script>
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
  
        <h1>CADASTRO DE VEICULOS</h1>
        <form  name="meu_form" action ="InserirVeiculos.jsp" method="post">
   
         <table>
              <p class="nome">
            <tr>
                <td><label> CODIGO </label></td>
                <td><label> PLACA </label></td>
                <td> <label>ANO DE FABRICACAO</label></td>
                <td> <label>ANO MODELO</label></td>
                <td> <label>CLIENTE</label></td>
            </tr>  
            <tr>
                <td> <input type="text"  name="cod_veiculo"  disabled> </td>
                <td> <input type="text"  name="placa"  onblur="validaPlaca(this.value)"> </td>
                <td> <input type="text"  name="ano_fabricacao"  onkeypress='return SomenteNumero(event)' > </td>
                <td> <input type="text"  name="ano_modelo"  onkeypress='return SomenteNumero(event)' > </td>
                <td> <input type="text"  name="cliente" onkeypress='return SomenteNumero(event)' > </td>
                <td> <input type="hidden"  name="ac" value="adicionar" > </td>
            </tr>
              </p>
         </table>
            <br>
       
          <p class="submit">
              
              
              
               <input type="button"  name="SALVAR"  value="SALVAR" onclick="verificar()" > </p>
         <!-- <a href="http://localhost:8084/TestePraticoMiguel/">VOLTAR</a> onclick="validar()"-->
        </form>
          <!-- <h1><a href="PesquisarPlaca.jsp">VER PLACA</a></h1> -->
        <br><br><br>
        
            
        </form>
        
    <div id="rodapeExp">
      <div id="rodape">
      <div id="texto_rodape">GR - gerenciadora de riscos - todos os direitos resevados</div>
      <div id="logo_rodape"><img src="../Img/log.jpg"/></div>
      </div>
   </div>
    </body>
</html>
