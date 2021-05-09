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
	<title>나라중고장터</title>
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
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/find_id.css">
</head>
<body>

	<jsp:include page="navbar.jsp" flush="false"/>
	<div class="main-findid-wrap">
        <div class="findid-title-main">
            <p class="findid_title">회원탈퇴</p>
        </div>
        <div class="find_id_input_wrap">
            <form action="/info/withdrawal" method="POST">
                <div class="find-form">                    
                    <input type="text" placeholder="이름을 입력해주세요" id="insertId" name="name"> <br>                    
                    <input type="password" placeholder="비밀번호를 입력해주세요." 
                            id="insertEmail" name="password">
                </div>
                <div class="find-btn">
                    <input type="submit" class="find-btn" value="확인">
                </div>
            </form>
        </div>        
    </div>
	<jsp:include page="footer.jsp" flush="false"/>

</body>
<script>

	$(document).ready(function () {
	
	    var nameReg = /^[가-힣]+$/;
	    var emailReg = /^[a-zA-Z0-9]{6,10}$/;
	
	    $(".find-btn").on('click', function (event) {
	        
	        // 아이디가 빈칸이면 경고
	        if($("#insertId").val()==""){
	            alert("이름을 입력해주세요.");
	            $("#insertId").focus();
	            $("#insertId").val("");
	            return false;
	        }//if
	
	        // 아이디가 형식에 맞지않으면 경고 >> reset
	        if(!nameReg.test($("#insertId").val())){
	            alert("이름의 형식에 맞게 입력해주세요");
	            $("#insertId").focus();
	            $("#insertId").val("");
	            return false;
	        }//if
	
	        // 이메일이 빈칸이라면 경고            
	        if($("#insertEmail").val()==""){
	            alert("비밀번호를 입력해주세요.");
	            $("#insertEmail").focus();
	            $("#insertEmail").val("");
	            return false;
	        }//if
	
	        // 이메일이 형식에 맞지않으면 경고
	        if(!emailReg.test($("#insertEmail").val())){
	            alert("비밀번호를 형식에 맞게 입력해주세요.");
	            $("#insertEmail").focus();
	            $("#insertEmail").val("");
	            return false;
	        }//if
	
	
	
	    }); //submit
	
	});//document

</script>

</html>