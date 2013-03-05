<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDAO"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:import url="cabecalho.jsp" />
    <center><table border="1px" width="200" cellpadding="1" cellspacing="1">
      <tr><th>Nome</th><th>Email</th><th>Endereço</th><th>Data de Nascimento</th></tr>
      <c:forEach var="contato" items="${dao.lista}" varStatus="id">
       <tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff'}">
	        <td>${contato.nome}</td>
	        
	        <td>
	          <c:choose>
	            <c:when test="${not empty contato.email}">
	              <a href="mailto:${contato.email}">${contato.email}</a>
	            </c:when>
	            <c:otherwise>
	              E-mail não informado.
	            </c:otherwise>
	            </c:choose>
	       </td>
	        <td>${contato.endereco}</td>
	        <td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
	   </tr>     
      </c:forEach>
    </table></center>
<c:import url="rodape.jsp" />