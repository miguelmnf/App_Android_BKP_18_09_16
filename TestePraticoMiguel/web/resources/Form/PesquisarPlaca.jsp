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
        <h1>VERIFICACAO DE PLACAS </h1>
      <%
       try{
         if(request.getParameter("ac").equals("adicionar")){
           String placa = request.getParameter("placa");

           Connection conn = Conexao.conectar();
           Statement  stmt = conn.createStatement();
           ResultSet rs = stmt.executeQuery("select placa from veiculos where placa = '"+placa+"'");
         
         if(rs.next()){
             placa = rs.getString("placa");
             rs.close();
             stmt.close();
             conn.close();  
         }
         if(placa == rs.getString("placa")){out.println("<script> alert('PLACA JA CADASTADA!');</script>");}else{ out.println("<script> alert('PLACA JA CADASTADA!');</script>"); }
         }
           }catch (Exception e){
            out.println("Erro: " + e.getMessage());
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
