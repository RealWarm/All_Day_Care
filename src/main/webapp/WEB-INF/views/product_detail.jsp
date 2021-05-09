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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/jpg" href="/resources/img/shopping.png">
    <!-- Bootstrap core CSS -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<!-- Bootstrap core JavaScript -->
  	<script src="/resources/vendor/jquery/jquery.min.js"></script>
  	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  	<!-- Custom styles for this template -->
  	<link href="/resources/css/shop-item.css" rel="stylesheet">
  	
</head>
<body>

  <jsp:include page="navbar.jsp" flush="false"/>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- left Side Bar -->
      <div class="col-lg-3">
        <h1 class="my-4">Category</h1>
        <div class="list-group">
          <a href="/category/greate?ct_num=100" class="list-group-item">의류</a>
          <a href="/category/greate?ct_num=200" class="list-group-item">가전제품</a>
          <a href="/category/greate?ct_num=300" class="list-group-item">도서/문구</a>
          <a href="/category/greate?ct_num=400" class="list-group-item">생활가구</a>
          <a href="/category/greate?ct_num=500" class="list-group-item">차량/오토바이</a>
          <a href="/category/greate?ct_num=2200" class="list-group-item">기타/특수</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
        

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          
          <div class="carousel-inner" role="listbox">
          		<div class="carousel-item active">
	              <img class="d-block img-fluid" src="/resources/upload_data/${top}" alt="First slide">
	            </div>
          	<c:forEach items="${imglist}" var="list" begin="1" end="3">
	            <div class="carousel-item">
	              <img class="d-block img-fluid" src="/resources/upload_data/${list.view_name}" alt="slide">
	            </div>
            </c:forEach>
            
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
		
		<!-- item detail -->
        <div class="card mt-4">          
          <div class="card-body">
            <h3 class="card-title">${detail.sb_name}</h3><br>            
             <ul>
              <li>
                <p class="detail_top"><span class="detail_in">가 격</span> : ${detail.total_price} 원 </p>
              </li>
              <li>
                <p class="detail_top"><span class="detail_in">거래방식</span> : ${detail.trade_shape} </p>
              </li>
              <li>
                <p class="detail_top"><span class="detail_in">거래지역</span> : ${detail.trade_area} </p>
              </li>
              <li>
                <p class="detail_top"><span class="detail_in">거래상황</span> : ${detail.trade_progress} </p>
              </li>
            </ul>
            <form class="book_markform" method="GET" action="/member/bookmark">
            	<input type="hidden" name="sb_num" value="${detail.sb_num}">
              	<button type="submit" class="btn btn-success">찜하기</button>
            </form>
            <hr>                       
            <pre class="card-text pre__line">${detail.sb_detail}</pre>
          </div>
        </div>
        <!-- /.card -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            ${detail.sb_writer}에게 상품문의 댓글
          </div>
          <div class="card-body">
          	<c:forEach items="${reply}" var="rlist" begin="0" end="10">
          		<p>${rlist.sb_detail}</p>
            	<small class="text-muted">Posted by ${rlist.sb_nickname} on <fmt:formatDate value="${rlist.rp_regdate}" pattern="yyyy.MM.dd"/></small>
            	<hr>
          	</c:forEach>
            
                 
          </div>
          
          <!-- 댓글달기 -->
          <div class="reply_body">
            <form class="reply_form" method="POST" action="/member/reply">
                <input type="hidden" name="sb_num" value="${detail.sb_num}">
                <textarea name="sb_detail" id="reply_form" placeholder="댓글을 입력하세요."></textarea>
                <button type="submit" class="btn btn-success">댓글등록</button>
            </form>            
          </div><!-- 댓글달기 -->
          
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->

  <jsp:include page="footer.jsp" flush="false"/>
</body>
</html>



<%-- <h4><fmt:formatDate value="${detail.sb_regdate}" pattern="yyyy.MM.dd"/></h4> --%>