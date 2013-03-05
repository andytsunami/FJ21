<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags"  prefix="caelum"%>
<c:import url="cabecalho.jsp"/>
  <h2>Formulario para alteração de contatos</h2><br />
  <form action="mvc" method="post">
    Id:  <input type="text" name="id"/><br />
    Nome: <input type="text" name="nome"/><br />
    E-mail: <input type="text" name="email"/><br />
    Endereço: <input type="text" name="endereco"/><br />
    Data de Nascimento: <caelum:campoData id="dataNascimento" />
    
              <input type="hidden" name="logica" value="AlteraContatoLogic"/>
              <input type="submit" value="Enviar"/>

  </form>



<c:import url="rodape.jsp"/>