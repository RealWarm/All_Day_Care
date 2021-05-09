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
            <p class="findid_title">아이디 찾기</p>
        </div>
        <div class="find_id_input_wrap">
            <form action="/find/find_id" method="POST">
                <div class="find-form">                    
                    <input type="text" placeholder="이름" id="insertId" name="name"> <br>                    
                    <input type="email" placeholder="메일을 입력해주세요." 
                            id="insertEmail" name="email">
                </div>
                <div class="find-btn">
                    <input type="submit" class="find-btn" value="확인">
                </div>
            </form>
        </div>
        <div id="findLoginpw" class="find_another">
            	혹시 비밀번호를 찾으시나요? <a href="/find/find_pw" class="link_find">비밀번호 찾기</a>
        </div>
    </div>	
	<jsp:include page="footer.jsp" flush="false"/>

</body>
<script>

    $(document).ready(function () {

        var nameReg = /^[가-힣]+$/;
        var emailReg = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

        $(".find-btn").on('click', function (event) {
            
            // 이름이 빈칸이면 경고
            if($("#insertId").val()==""){
                alert("이름을 입력해주세요.");
                $("#insertId").focus();
                $("#insertId").val("");
                return false;
            }//if

            // 이름이 형식에 맞지않으면 경고 >> reset
            if(!nameReg.test($("#insertId").val())){
                alert("이름의 형식에 맞게 입력해주세요");
                $("#insertId").focus();
                $("#insertId").val("");
                return false;
            }//if

            // 이메일이 빈칸이라면 경고            
            if($("#insertEmail").val()==""){
                alert("이메일을 입력해주세요.");
                $("#insertEmail").focus();
                $("#insertEmail").val("");
                return false;
            }//if

            // 이메일이 형식에 맞지않으면 경고
            if(!emailReg.test($("#insertEmail").val())){
                alert("이메일 형식에 맞게 입력해주세요.");
                $("#insertEmail").focus();
                $("#insertEmail").val("");
                return false;
            }//if



        }); //submit

    });//document

</script>

</html>