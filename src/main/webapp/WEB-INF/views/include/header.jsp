<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>액철이 축구교실</title>
<style>


.list_container {
width: 100%;
height: 400px;
padding: 120px 10px 10px 10px;
}


.write_container {
width: 100%;
height: 200px;
padding: 120px 10px 10px 10px;
}



.header {
padding : 10px 10px 10px 10px ;
}

.header .head {
padding : 10px 10px 0px 10px ;
list-style : none;
float: right;
text-decoration : none;
}

.header .head li {
float : left;
padding:13px 30px 10px 20px; 
color : red;
font-weight : bold;
text-decoration : none;
font-size: 21px;


}

.logo {
float:right;
}
.logo a {
font-size:26px;
color:#3f51b5;
font-weight:normal;
}

header .header h1 a {
    display: block;
    width: 100px;
    height: 120px;
    overflow: hidden;
    float: right;
    text-indent: -9999px;
    background: url(/resources/resource/img/logo.png) no-repeat;
    position: absolute;
    top : 10px;
}

.header .login {
padding : 10px 10px 0px 10px ;
float: right;
}

.header .login li {
padding:10px 10px 10px 10px; 
color : blue;
font-size: 20px;
list-style: none;
}
.main {
padding : 40px 10px 10px 10px;
width : 100%;
height : 900px;
}

.mall {
width :98%;
height : 130px;
padding : 15px 10px 0px 20px;
}

 #jb-content {
        width: 580px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        text-align: center;
      }
      
.row {
padding : 10px 10px 15px 10px;
}



@media (max-width: 1350px) and (min-width: 851px){
.main {
    width: 100%;
    height: 680px;
    background-size: cover !important; 
}
.header .head {
padding : 10px 10px 0px 10px ;
list-style : none;
float: right;
text-decoration : none;
}

.header .head li {
padding:13px 20px 10px 20px; 
color : red;
font-weight : bold;
text-decoration : none;
font-size: 21px;
}

.header .login {
padding : 10px 10px 0px 10px ;
float: right;
}

.header .login li {
padding:10px 10px 10px 10px; 
color : green;
font-size: 20px;
list-style: none;
}



 #jb-content {
        width: 580px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        text-align: center;
      }
}



@media all and (max-width: 850px){
.main{
    width: 100%;
    height: 267px;
    background-size: cover !important;
}
.header .head {
padding : 10px 10px 0px 10px ;
list-style : none;

}

.header .head li {
padding:13px 10px 10px 20px; 
color : red;
font-weight : bold;
text-decoration : none;
font-size: 15px;
}

.header .login {
padding : 10px 10px 0px 10px ;
float: right;
}

.header .login li {
padding:10px 10px 10px 10px; 
color : blue;
font-size: 20px;
list-style: none;
}

 #jb-content {
        width: 580px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        text-align: center;
      }

}
</style>

<style type="text/css">
 a:link { color: red; text-decoration: none;}
 a:visited { color: red; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
</style>
<style>
 #jb-content {
        width: 580px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        text-align: center;
      }
      
</style>


</head>
<body>

 <header>

<nav class="header">
 
  <h1>
<a href="/">액철이 홈페이지</a>
</h1>
 
 <ul class="login">
 <li>
  <a href="/login/login">login</a>
 </li>
 <li>
  <a href="/login/signup">sign up</a>
 </li>
  <li>
  <a href="/admin/member/list">admin</a>
 </li>
 </ul>
 

 <ul class="head">
 <li>
 <a href="/list/news">News</a>
 </li>
 <li>
<a href="/list/team">Team</a>
 </li>
 <li>
<a href="/list/match">Match</a>
 </li>
 <li>
<a href="/list/kfatv">KFA TV</a>
 </li>
 <li>
<a href="/list/ticket">Ticket</a>
 </li>
 <li>
<a href="/list/history">History</a>
 </li>
 <li>
 <a href="/list/community">Community</a>
 </li>
 </ul>
</nav>

</header>