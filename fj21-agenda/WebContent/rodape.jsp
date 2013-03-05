<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <jsp:useBean id="agora" class="java.util.Date" />
    
    

<hr />
  Copyright <fmt:formatDate value="${agora}" pattern="yyyy"/> - Todos os direitos reservados
</body>
</html>