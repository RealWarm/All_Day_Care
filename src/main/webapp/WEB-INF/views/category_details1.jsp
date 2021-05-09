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
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<!-- Bootstrap core JavaScript -->
  	<script src="/resources/vendor/jquery/jquery.min.js"></script>
  	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  	<!-- Custom styles for this template -->
  	<link href="/resources/css/shop-homepage.css" rel="stylesheet">
  	<link rel="stylesheet" href="/resources/css/notice.css">
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
          <a href="/category/greate?ct_num=100&page=1" class="list-group-item">의류</a>
          <a href="/category/greate?ct_num=200&page=1" class="list-group-item">가전제품</a>
          <a href="/category/greate?ct_num=300&page=1" class="list-group-item">도서/문구</a>
          <a href="/category/greate?ct_num=400&page=1" class="list-group-item">생활가구</a>
          <a href="/category/greate?ct_num=500&page=1" class="list-group-item">차량/오토바이</a>
          <a href="/category/greate?ct_num=2200&page=1" class="list-group-item">기타/특수</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->

	  <!-- center body -->      
      <div class="col-lg-9 ct_body">

        <div class="detail__header">
          <h2> ${CData.ct_main} 카테고리 페이지</h2>
          <hr>
        </div>

        <div class="row">

        	<c:forEach items="${list1}" var="list">
		      <div class="col-lg-3 col-md-6 mb-4">
		        <div class="card h-100">
		          <a href="/sale/detail?num=${list.sb_num}" class="a__pic">
		          	<img class="card-img-top two" src="/resources/upload_data/${list.sb_view}" alt="${list.sb_view}">
		          </a>          
		          <div class="card-body1">
		            <h7 class="card-title1">${list.sb_name}</h7>            
		            <hr>
		            <div class="price_address">
		              <h5 class="card-text1">${list.total_price} 원</h5>
		              <h5 class="card-text2">${list.trade_area}</h5>
		            </div>		            
		          </div>          
		        </div>
		      </div>
			</c:forEach>

        </div>
        <!-- /.row -->
        
        <div class="notice_bottom">
	      	<tr class="trnotice" >
	      	         	         
	          <c:if test="${pageMaker.prev}">
	          	<a href="/category/greate?ct_num=${CData.ct_num}&page=${pageMaker.startPage-1}">&laquo;</a>
	          </c:if> 
	          
	          <c:forEach begin="${pageMaker.startPage}" end = "${pageMaker.endPage}" var = "idx">          	
	           	<a href="/category/greate?ct_num=${CData.ct_num}&page=${idx}">${idx}</a>	          
	          </c:forEach>
	          
	          <c:if test = "${pageMaker.next && pageMaker.endPage > 0}">
	          	<a href="/category/greate?ct_num=${CData.ct_num}&page=${pageMaker.endPage+1}">&raquo;</a>
	          </c:if>
	                 
	        </tr>
        </div>

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <jsp:include page="footer.jsp" flush="false"/>

</body>
</html>