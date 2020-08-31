<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../include/header.jsp" %>

 <div id="jb-content">
 <form action="signup" name="login" method="post">
       <h2>회원가입</h2>        
<div class="row"><label>아이디</label><input type="text" name="user_id" id="id"></div>
<div class="row"><label>비밀번호</label><input type="password" name="user_pw" id="pw"></div>
<div class="row"><label>이름</label><input type="text" name="user_name" id="pw"></div>
<div class="row"><label>이메일</label><input type="text" name="email" id="pw"></div>
<div class="row"><label>핸드폰번호</label><input type="text" name="point" id="pw"></div>
<div class="row"><label>생년월일</label><input type="text" name="pw" id="pw"></div>
<div class="row"><label>enabled</label> 
		<select name="enabled">
			<option value="0">false</option>
			<option value="1">true</option>
		</select>  </div>
</form>
<button>회원가입</button>
</div>
     
      
      


</body>
</html>