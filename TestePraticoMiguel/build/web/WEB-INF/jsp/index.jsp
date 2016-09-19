<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*, controle.Conexao" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> GERENCIADORA DE RISCO </title>
      <link href="resources/css/styles.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
     <div id="topoExp">
      <div id="topo">
       <div id="logo"> <img src="resources/Img/logo.jpg" /> </div>
       <div id="menu">
           <ul>
           <li><a href="http://localhost:8084/TestePraticoMiguel/">INICIO</a></li>
           <li><a href="resources/Form/adicionarFormCliente.jsp">CADASTRAR CLIENTE</a>
              <ul>
               <li><a href="resources/Form/listarFormCliente.jsp">LISTAR CLIENTES</a></li>                               
              </ul>
           </li>
           <li><a href="resources/Form/adicionarFormVeiculos.jsp">CADASTRAR VEICULO</a>
              <ul>
                <li><a href="resources/Form/listarFormVeiculos.jsp">LISTAR VEICULOS</a></li>                                
              </ul>
           </li>
           
         </ul>
       </div>
      </div>
   </div>
        <center>
<img src="resources/Img/fundo.jpg"/>
        </center>
        <%
          Connection conn = Conexao.conectar();
           
         // testa se a conexão foi efetuada com sucesso
         if(conn != null)
            out.println("Conexão efetuada com sucesso!"); 
         
           // Statement stm = conn.createStatement();  
            //stm.executeUpdate("INSERT INTO clientes VALUES (1,'Miguel','Rua: Raimundo Aristides,Nº 409 - Fortaleza-Ce','Conjunto Esperanca','60762795')");
            //stm.executeUpdate("Insert into clientes(nome,endereco,bairro,cep) Values ('Miguel','Rua: Raimundo Aristides,Nº 409 - Fortaleza-Ce','Conjunto Esperanca','60762795')");
           // conn.close();
           // out.println("Cliente Inserido com sucesso!");
        %> 
      <div id="rodapeExp">
      <div id="rodape">
      <div id="texto_rodape">GR - gerenciadora de riscos - todos os direitos resevados</div>
      <div id="logo_rodape"><img src="resources/Img/log.jpg"/></div>
      </div>
   </div>
    </body>
</html>
