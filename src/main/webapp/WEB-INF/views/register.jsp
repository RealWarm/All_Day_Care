<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" 	prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" 	prefix="fmt"%>
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
    
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="/resources/css/join.css">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/common2.css">  
    <!-- Bootstrap core CSS -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
  	<!-- Bootstrap core JavaScript -->
  	<script src="/resources/vendor/jquery/jquery.min.js"></script>
  	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  	<script src="/resources/js/join.js"></script>
  	 
</head>
<body>	
    <jsp:include page="navbar.jsp" flush="false"/>
    <div class="main-join-wrap">
        <form class="join-form" action="/member/register" method="POST">
            <div class="join-title-main">
                <h2 class="join-title">회원가입</h2>
            </div>
            <!-- 입력양식 -->
            <div class="join-insert-wrap">
                <table class="join-table">                    
                    <colgroup>
                        <col style="width:20%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">
                                <label for="id">*아이디</label>
                            </th>
                            <td>
                                <input type="text" title="아이디" id="id" name="id" maxlength="12">
                                <span class="error-message" id="idMessage" role="alert" style="display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="password">*비밀번호</label></th>
                            <td>
                                <input type="password" title="비밀번호" id="password" name="password">
                                <span class="error-message" id="pwMessage" role="alert" style="display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="passwordCheck">*비밀번호 확인</label></th>
                            <td>
                                <input type="password" title="비밀번호 확인" id="passwordCheck" name="user-check-pw">
                                <span class="error-message" id="pwCheckMessage" role="alert"
                                    style="display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <th><label for="name">*이름</label></th>
                            <td>
                                <input type="text" title="이름" id="name" name="name">
                                <span class="error-message" id="nameMessage" role="alert" style="display:none"></span>
                            </td>
                        </tr>
                        <!-- 닉네임 -->
                        <tr>
                            <th><label for="nickname">*닉네임</label></th>
                            <td>
                                <input type="text" title="닉네임" id="nickname" name="nickname">
                                <span class="error-message" id="nicknameMessage" role="alert"
                                    style="display:none"></span>
                            </td>
                        </tr>
                        <!-- 기관명 -->
                        <tr>
                            <th><label for="org_name">*기관명</label></th>
                            <td>
                                <input type="text" title="닉네임" id="org_name" name="org_name">
                                <span class="error-message" id="org_nameMessage" role="alert"
                                    style="display:none"></span>
                            </td>
                        </tr>
                        <!-- 핸드폰 번호 -->
                        <tr>
                            <th><label for="phnum">*휴대폰</label></th>
                            <td>
                                <input type="text" title="닉네임" id="phnum" name="phnum">
                                <span class="error-message" id="phnumMessage" role="alert"
                                    style="display:none"></span>
                            </td>
                        </tr>
                        <!-- 이메일 -->
                        <tr>
                            <th scope="row"><label for="email">*이메일</label></th>
                            <td>
                                <input type="email" id="email" name="email">
                                <!-- <input type="button" value="인증" id="emailAuthentiCation"> -->
                                <span class="error-message" id="emailMessage" role="alert" style="display:none"></span>
                            </td>
                        </tr>
                        <!-- <tr>
                            <th scope="row"><label for="number">*인증번호</label></th>
                            <td>
                                <input type="text" id="CertiFicationNumber">
                                <input type="button" id="CertiFicationConfirm" value="확인">
                                <span class="error-message" id="CertiFicationMessage" role="alert"
                                    style="display:none"></span>
                            </td>
                        </tr> -->
                    </tbody>
                </table>
            </div> <!-- 입력양식 -->
            <div class="join-button-wrap">
                <button type="submit" class="join-button join-submit">회원가입</button>
                <input type="reset" value="취소" class="join-button">
            </div>
        </form>
    </div>
    <jsp:include page="footer.jsp" flush="false"/>


</body>
</html>