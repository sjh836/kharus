<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>천지개벽</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- css -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/bootstrap/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="resources/bootstrap/css/jcarousel.css" rel="stylesheet" />
<link href="resources/bootstrap/css/flexslider.css" rel="stylesheet" />
<link href="resources/bootstrap/css/style.css" rel="stylesheet" />

<!-- skin -->
<link href="resources/bootstrap/skins/default.css" rel="stylesheet" />

</head>
<body>
<div id="wrapper">
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><span>천지개벽</span> 커뮤니티</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">시문해석</a></li>
                        <li><a href="intro.jsp">사용방법</a></li>
                        <li><a href="record.do">전적분석</a></li>
                        <% if(session.getAttribute("country")==null) { %><li class="active"><a href="login.jsp">관리자 로그인</a></li><% } %>
                        <% if(session.getAttribute("country")!=null) { %><li><a href="#"><%= session.getAttribute("country")%> 관리자</a></li>
                        <li class="active"><a href="logout.do">Logout</a></li><% } %>
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<!-- end header -->
	<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<h1>사용방법</h1>
					<p>1. 시문을 그대로 복사붙여 넣기 하시면 됩니다.</p>
					<p>2. 한 글자 빼놓고 복사하거나, 첫줄이나 마지막줄에 공백(개행)이 있으면 안됩니다. 8개가 정확하게 맞춰져야 해석됩니다.</p>
					<p>3. 시문에 없는 문자는 없으므로 오류가 반환됩니다.</p>
					<p>4. 정숲이용자의 편의를 위하여 제작되었습니다.</p>
					<p>5. 카루스 서버와는 전혀 상관없는 별도의 서버이므로, 카루스 서버에 지장을 주지 않습니다.</p>
			<h1>사진설명</h1>
			<p>1. 정령의 숲에 입장합니다.</p>
			<img src="resources/bootstrap/img/1.JPG" alt="정령의 숲 입장"><br>
			<p>2. 바위에 적혀 있는 시문을 텍스트만 복사합니다.</p>
			<img src="resources/bootstrap/img/2.JPG" alt="정령의 숲 시문"><br>
			<p>3. 해석결과대로 정령석을 배치합니다.</p>
			<img src="resources/bootstrap/img/3.JPG" alt="정령의 숲 결과">
			</div>
		</div>
	</div>
	</section>

	<!-- start footer -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center">
				천지개벽 정보전산원
			</div>
		</div>
	</div>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/bootstrap/js/jquery.js"></script>
<script src="resources/bootstrap/js/jquery.easing.1.3.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/bootstrap/js/jquery.fancybox.pack.js"></script>
<script src="resources/bootstrap/js/jquery.fancybox-media.js"></script>
<script src="resources/bootstrap/js/google-code-prettify/prettify.js"></script>
<script src="resources/bootstrap/js/portfolio/jquery.quicksand.js"></script>
<script src="resources/bootstrap/js/portfolio/setting.js"></script>
<script src="resources/bootstrap/js/jquery.flexslider.js"></script>
<script src="resources/bootstrap/js/animate.js"></script>
<script src="resources/bootstrap/js/custom.js"></script>

</body>
</html>