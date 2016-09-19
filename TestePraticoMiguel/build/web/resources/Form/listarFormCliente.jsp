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
       
        <center>
    <h1>LISTA DE CLIENTES </h1>
        <table border="0">
    
            <tr>
                <td>CODIGO</td>
                <td>NOME</td>
                <td>ENDERECO</td>
                <td>BAIRRO</td>
                <td>CEP</td>
                
            </tr>
     
       <!-- </table> -->
       <%
         int id;
         String nome;
         String endereco;
         String bairro;
         String cep;
         String action;
         
         Connection conn = Conexao.conectar();
        // if(conn != null)
         //out.println("Conexão efetuada com sucesso!");
         
         Statement  stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery("select * from clientes");
         
         while(rs.next()){
             id = rs.getInt("cod_cliente");
             nome = rs.getString("nome");
             endereco = rs.getString("endereco");
             bairro = rs.getString("bairro");
             cep = rs.getString("cep");     
       %>
       
       <tr>
           <td><%= id = rs.getInt("cod_cliente")%> </td> 
           <td><%=nome = rs.getString("nome")%></td>
           <td><%=endereco = rs.getString("endereco")%></td>
           <td><%=bairro = rs.getString("bairro")%></td>
           <td><%=cep = rs.getString("cep")%></td>
  
           <td> <a href="editarFormCliente.jsp?cod_cliente=<%=id%> &nome=<%=nome%> &endereco=<%=endereco%> &bairro=<%=bairro%> &cep=<%=cep%>"><img src="../Img/editar.png" height="15" width="15"/></a>
           
           |    <a href="excluirCliente.jsp?cod_cliente=<%=id%>&ac=rm"><img src="../Img/excluir.png" height="15" width="15"/></a>
           
           
           <!--   <a href="editarFormVeiculos.jsp?cod_cliente=<%=id%> &nome=<%=nome%>"><img src="../Img/veiculo.png" height="15" width="15"/></a> -->
           </td>
           
       </tr>
    <% }
         rs.close();
         stmt.close();
         conn.close();     
    %>
          
        </table>
    <br>  <br>     
    <!--  <a href="adicionarFormCliente.jsp">NOVO</a> -->
          </center>
    <div id="rodapeExp">
      <div id="rodape">
      <div id="texto_rodape">GR - gerenciadora de riscos - todos os direitos resevados</div>
      <div id="logo_rodape"><img src="../Img/log.jpg"/></div>
      </div>
   </div>
    </body>
</html>
