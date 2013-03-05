<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.caelum.agenda.dao.*, br.com.caelum.agenda.modelo.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
  </head>
  <body><center>
    <table border = "1" cellpadding="1" cellspacing="0" width="100" align="center">
      <% ContatoDAO  dao = new ContatoDAO();
      List<Contato> contatos = dao.getLista();
    
      for (Contato contato : contatos){
    	%>
    	  
        <tr>
          <td><%=contato.getNome() %></td>
          <td><%=contato.getEmail() %></td>
          <td><%=contato.getEndereco() %></td>
          <td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime()) %></td>    
        </tr>
        
        <%} %>
  </table></center>
  </body>
</html>