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
    <link rel="stylesheet" href="/resources/css/join_result.css">
    <link rel="stylesheet" href="/resources/css/join.css">
    <link rel="stylesheet" href="/resources/css/reset.css">
</head>
<body>
	<div class="join_result_wrap">
        <div class="join_result">
            <img src="/resources/img/task-complete.png">
            <div class="join_result_main">에러가 발생했네요!</div>
            <div class="join_result_sub">[<strong>형식에 맞는 정상적 접근을 부탁드립니다.</strong>] </div>
        </div>
        <div class="welcom_msg">
            <p>죄송합니다! 최대한 빠른시간내에 처리 할 수 있도록 하겠습니다.</p>            
            <p>다시한번 <strong>접근 시도</strong>를 부탁드립니다.<br>
            <p>반복되는 접속 실패시 문의를 해주시면 신속히 처리해드리겠습니다!</p>
            
            <br>
            <br>
            <br>
		                나라중고장터에서는 고객님께 보다 나은 서비스를 제공하기 위해 항상 노력하고 있습니다.<br>
		                앞으로도 많은 관심 부탁드립니다.
            </p>
        </div>
    </div>
    <div class="join-button-wrap">
        <a href="/" class="join-button join-submit">홈으로</a>        
    </div>
</body>
</html>