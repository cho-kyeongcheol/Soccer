<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../../include/header.jsp" %>
      
      
      <form role="form" action="/admin/member/write" method="POST">
      <div class="write_container">         
      <label>user_id</label> 
      <input type="text" name="user_id" placeholder="Enter id">
      <br>
                  
      <label>user_pw</label> 
      <input type="password" name="user_pw" placeholder="Enter password">
      <br>
      <label>user_name</label> 
      <input type="text" name="user_name" placeholder="Enter name">
      <br>
      <label>email</label> 
      <input type="text" name="email" placeholder="Enter name">
      
           <br>    
              
            <label>enabled</label> 
			<select name="enabled" class="form-control">
				<option value="0">false</option>
				<option value="1" selected>true</option>
			</select> 
			
			<br>
			
			<label>level</label> 
			<select name="levels" class="form-control">
				<option value="ROLE_USER">ROLE_USER</option>
				<option value="ROLE_ADMIN">ROLE_ADMIN</option>
			</select>

</div>

<button type="submit" class="btn btn-warning">Submit</button>
<a href="/admin/member/list" class="btn btn-primary">LIST ALL</a>
</form>





	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
