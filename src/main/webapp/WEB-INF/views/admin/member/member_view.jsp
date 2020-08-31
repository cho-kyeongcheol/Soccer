<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../../include/header.jsp" %>
	
	<div class="list_container"> 
	<form role="form" action="/admin/member/delete" method="post">
	
	
	<label>user_id</label> <br> ${memberVO.user_id}
	<br>
	<label>user_name</label> <br> ${memberVO.user_name}
	<br>
	<label>email</label> <br> ${memberVO.email}
	<br>
	<label>enabled</label> <br> ${memberVO.enabled}
	<br>
	<label>level</label> <br> ${memberVO.levels}
	<br>
	
	<button type="submit" class="btn btn-danger">DELETE</button>
	<a href="/admin/member/list" class="btn btn-primary">LIST ALL</a>
			
	<input type="hidden" name="user_id" value="${memberVO.user_id}">
	
</form>



	<P>The time on the server is ${serverTime}.</P>
	</div>
</body>
</html>
