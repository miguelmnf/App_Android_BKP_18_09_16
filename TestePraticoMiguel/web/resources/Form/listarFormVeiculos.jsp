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
    <h1>LISTA DE VEICULOS </h1>
        <table border="0">
    
            <tr>
                <td>CODIGO</td>
                <td>PLACA</td>
                <td>ANO FABRICACAO</td>
                <td>ANO MODELO</td>
                <td>CLIENTE</td>
                
            </tr>
     
       <!-- </table> -->
       <%
         int id;
         String placa;
         int ano_fabricacao;
         int ano_modelo;
         int cliente;
 
         
         Connection conn = Conexao.conectar();
        // if(conn != null)
         //out.println("Conexão efetuada com sucesso!");
         
         Statement  stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery("select * from veiculos");
         
         while(rs.next()){
             id = rs.getInt("cod_veiculo");
             placa = rs.getString("placa");
             ano_fabricacao = rs.getInt("ano_fabricacao");
             ano_modelo = rs.getInt("ano_modelo");
             cliente = rs.getInt("cliente");     
       %>
       
       <tr>
           <td><%= id = rs.getInt("cod_veiculo")%> </td> 
           <td><%=placa = rs.getString("placa")%></td>
           <td><%=ano_fabricacao = rs.getInt("ano_fabricacao")%></td>
           <td><%=ano_modelo = rs.getInt("ano_modelo")%></td>
           <td><%=cliente = rs.getInt("cliente")%></td>
  
           <td> <a href="editarFormVeiculos.jsp?cod_veiculo=<%=id%> &placa=<%=placa%> &ano_fabricacao=<%=ano_fabricacao%> &ano_modelo=<%=ano_modelo%> &cliente=<%=cliente%>"><img src="../Img/editar.png" height="15" width="15"/></a>
           
           |    <a href="excluirVeiculos.jsp?cod_veiculo=<%=id%>&ac=rm"><img src="../Img/excluir.png" height="15" width="15"/></a>
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
