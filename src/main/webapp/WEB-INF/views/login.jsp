<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>온종일돌봄</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/jpg" href="/resources/img/shopping.png">
     <!-- Bootstrap core CSS -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<!-- Bootstrap core JavaScript -->
  	<script src="/resources/vendor/jquery/jquery.min.js"></script>
  	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  	<!-- Custom styles for this template -->
    <link rel="stylesheet" href="/resources/css/style1.css">
</head>
<body>
	
	<jsp:include page="navbar.jsp" flush="false"/>

	<div class="membership-login-form">
        <!-- <h2 class="login-logo"><img src="/resources/img/kor_used1.PNG" alt="korea" width="400px" height="80px"></h2> -->
        <h2 class="login-logo"><a href="/"><img src="/resources/img/kor_used1.PNG" alt="korea" width="400px" height="80px"></a></h2>        
        <form action="/login_Post" method="post" accept-charset="UTF-8">
            <div class="login-form">
                <input type="text" id="id" name="userid" placeholder="ID" title="아이디 입력">
        		<input type="password" id="password" name="userpw" placeholder="PASSWORD" title="비밀번호 입력">
            </div>
            <div class="login-btn-area">
                <input type="submit" class="login-btn" value="로그인" title="로그인버튼">
            </div>
            <div class="login-lnk">
                <ul class="login-menu">
                    <li><a href="/member/confirm">회원가입</a></li>
                    <li><a href="/find/find_id">아이디 찾기</a></li>
                    <li><a href="/find/find_pw">비밀번호 찾기</a></li>
                </ul>
            </div>
        </form>
    </div>
    
    <jsp:include page="footer.jsp" flush="false"/>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    	<script src="/resources/js/login.js"></script>    	
</body>
</html>