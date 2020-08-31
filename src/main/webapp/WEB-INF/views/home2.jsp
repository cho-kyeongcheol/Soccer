<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

<a href="/member/list"> 회원관리 </a>
<h1>Hello World</h1>
<h1>안녕하세요!</h1>
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
                      <td>${memberVO.user_name}</td>
                      <td>${memberVO.email}</td>
                      <td>${memberVO.enabled}</td>
                      <td>${memberVO.reg_date}</td>
                      <td>${memberVO.levels}</td>
                    </tr>                    
                    </c:forEach>
                  </tbody>

	</table>












<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
