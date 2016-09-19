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
        <h1>ATULIZAR DADOS DOS CLIENTES</h1>
        <form name="meu_form" action ="AtualizarVeiculos.jsp" method="post">
         <table>
              <p class="nome">
            <tr>
                <td><label>  CODIGO  </label> </td>
                <td> <label> PLACA  </label> </td>
                <td> <label> ANO FABRICACAO </label> </td>
                <td> <label> ANO MODELO </label> </td>
                <td> <label> CLIENTE </label> </td>
            </tr>
            <tr>
                <td> <input type="text"  onkeypress='return SomenteNumero(event)' name="cod_veiculo" value="<%=request.getParameter("cod_veiculo")%>"> </td>
                <td> <input type="text"  name="placa"  value="<%=request.getParameter("placa")%>" disabled> </td>
                <td> <input type="text" onkeypress='return SomenteNumero(event)' name="ano_fabricacao"  value="<%=request.getParameter("ano_fabricacao")%>"> </td>
                <td> <input type="text" onkeypress='return SomenteNumero(event)' name="ano_modelo" value="<%=request.getParameter("ano_modelo")%>" > </td>
                <td> <input type="text" onkeypress='return SomenteNumero(event)' name="cliente" value="<%=request.getParameter("cliente")%>" ></td>
                <td> <input type="hidden"  name="ac" value="atualizar" > </td>
            </tr>
              </p>
         </table>
          <br>
          <p class="submit">
          <input type="button"  name="ATUALIZAR" value="ATUALIZAR" onclick="verificar()" > </p>
         <!-- <a href="http://localhost:8084/TestePraticoMiguel/">VOLTAR</a> onkeyup="javascript:Trim();"-->
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
