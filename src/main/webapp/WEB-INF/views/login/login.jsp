<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../include/header.jsp" %>

 <div id="jb-content">
 <form action="login" name="login" method="post">
       <h2>로그인</h2>        
<div class="row"><label>아이디</label><input type="text" name="id" id="id"></div>
<div class="row"><label>비밀번호</label><input type="password" name="pw" id="pw"></div>
</form>
<button>로그인</button>
</div>
     
      
      


</body>
</html>