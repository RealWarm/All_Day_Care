<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Navigation -->
  
  <script src="https://kit.fontawesome.com/5271ab50ad.js" crossorigin="anonymous"></script>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/">
      	<!-- <i class="fas fa-shopping-cart" style="color:pink; font-size:20px"/> -->
      	<i class="fas fa-baby" style="color:pink; font-size:20px"></i>
      	온종일돌봄
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
        	<c:choose>
        		<c:when test="${empty login}">
        			<li class="nav-item active">
			            <a class="nav-link" href="/">Home
			              <span class="sr-only">(current)</span>
			            </a>
		          	</li>        			
        			<li class="nav-item">
		            	<a class="nav-link" href="/category/greate?ct_num=100">카테고리</a>
		          	</li>		          	
		          	<li class="nav-item">
		            	<a class="nav-link" href="/login">로그인</a>
		          	</li>
		          	<li class="nav-item">
		            	<a class="nav-link" href="/member/confirm">회원가입</a>
		          	</li>
        		</c:when>
        		<c:otherwise>
        			<li class="nav-item active">
			            <a class="nav-link" href="/">Home
			              <span class="sr-only">(current)</span>
			            </a>
		          	</li>
		          	<li class="nav-item">
		            	<a class="nav-link" href="/sale/saleregist">판매등록</a>
		          	</li>
		          	<li class="nav-item">
		            	<!-- <a class="nav-link" href="/sale/category">카테고리</a> -->
		            	<a class="nav-link" href="/category/greate?ct_num=100&page=1">카테고리</a>
		          	</li>
		          	<li class="nav-item">
		            	<a class="nav-link" href="/member/mypage">${login.nickname}님 안녕하세요!</a>
		          	</li>
		          	<li class="nav-item">
			            <a class="nav-link" href="/logout">로그아웃</a>
			        </li>
        		</c:otherwise>
        	</c:choose>
          </ul>                  
      </div>
    </div>
  </nav>