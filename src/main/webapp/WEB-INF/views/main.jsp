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
  	<link href="/resources/css/heroic-features.css" rel="stylesheet">
  	
</head>
<body>

	<jsp:include page="navbar.jsp" flush="false"/>

	  <!-- Page Content -->
	  <div class="container center">
	
	    <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
	      <ol class="carousel-indicators">
	        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
	        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
	      </ol>
	      <div class="carousel-inner" role="listbox">
	        <div class="carousel-item active">
	          <img class="d-block img-fluid" src="/resources/img/main_banner1_1200x350.png" alt="First slide">
	        </div>
	        <div class="carousel-item">
	          <img class="d-block img-fluid" src="/resources/img/main_banner2_1200x350.png" alt="Second slide">
	        </div>
	        <div class="carousel-item">
	          <img class="d-block img-fluid" src="/resources/img/main_banner3_1200x350.png" alt="Second slide">
	        </div>
	        <div class="carousel-item">
	          <img class="d-block img-fluid" src="/resources/img/main_banner4_1200x350.png" alt="Third slide">
	        </div>
	        <div class="carousel-item">
	          <img class="d-block img-fluid" src="/resources/img/main_banner11_1200x350.png" alt="Third slide">
	        </div>
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
		
		<!-- Page Features -->
	    <div class="row text-center">
			<c:forEach items="${mlist}" var="list" begin="0" end="10">
		      <div class="col-lg-3 col-md-6 mb-4">
		        <div class="card h-100">
		          <a href="/sale/detail?num=${list.sb_num}" class="a__pic">
		          	<img class="card-img-top ffix" src="/resources/upload_data/${list.sb_view}" alt="${list.sb_view}">
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
	  </div>
	  <!-- /.container -->

	<jsp:include page="footer.jsp" flush="false"/>

  

</body>
</body>
</html>