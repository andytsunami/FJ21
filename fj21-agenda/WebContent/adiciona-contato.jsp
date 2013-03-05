<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:import url="cabecalho.jsp"/>
    <form action="adicionaContato" method="post">
      Nome:  <input type="text" name="nome"/><br/>
      E-mail:  <input type="text" name="email"/><br />
      Endereço:  <input type="text" name="endereco"/><br/>
      Data Nascimento:  <caelum:campoData id="dataNascimento" /> <br />
      
      <input type="submit" value="Gravar" />
    
    </form>

<c:import url="rodape.jsp"/>