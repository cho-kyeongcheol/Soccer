<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../../include/header.jsp" %>
	
	<div class="list_container"> 
	<table>
                  <thead>
                    <tr>
                      <th>user_id</th>
                      <th>user_name[point]</th>
                      <th>email</th>
                      <th>use</th>
                      <th>REGDATE</th>
                      <th>level</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${memberList}" var="memberVO" varStatus="status">
                    <tr>
                      <td>${memberVO.user_id}</td>
                     <td><a href="/admin/member/view?user_id=${memberVO.user_id}">${memberVO.user_name}</a></td> 
                      <td>${memberVO.email}</td>
                      <td>${memberVO.enabled}</td>
                      <td>${memberVO.reg_date}</td>
                      <td>${memberVO.levels}</td>
                    </tr>                    
                    </c:forEach>
                  </tbody>

	</table>
	
	<a href="/admin/member/write"">CREATE</a>


</div>




	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
