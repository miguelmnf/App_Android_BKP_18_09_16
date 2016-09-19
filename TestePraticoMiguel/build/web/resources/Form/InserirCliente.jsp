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
     <style type="text/css">
      @import url("../css/styles.css");
     </style>
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
         <h1>CLIENTE ADICIONADO COM SUCESSO </h1>
        <%
       
         if(request.getParameter("ac").equals("adicionar")){
           String nome = request.getParameter("nome");
           String endereco = request.getParameter("endereco");
           String bairro = request.getParameter("bairro");
           String cep = request.getParameter("cep");
           
           Connection conn = Conexao.conectar();
           if(conn != null)
            out.println("Conexão efetuada com sucesso!"); 
           
           String sql = "insert into Clientes(nome,endereco,bairro,cep)values(?,?,?,?)";
           PreparedStatement stmt = conn.prepareStatement(sql);
           stmt.setString(1,nome);
           stmt.setString(2,endereco);
           stmt.setString(3,bairro);
           stmt.setString(4,cep);
           stmt.executeUpdate();
           stmt.close();
           conn.close();
         }
        %>
        
    <div id="rodapeExp">
      <div id="rodape">
      <div id="texto_rodape">GR - gerenciadora de riscos - todos os direitos resevados</div>
      <div id="logo_rodape"><img src="../Img/log.jpg"/></div>
      </div>
   </div>
    </body>
</html>
