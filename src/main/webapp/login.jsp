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
			<div class="col-md-8 col-md-offset-2">
				<h4>관리자로그인 페이지</h4>
                
                <form action="login.do" method="post" role="form" class="contactForm">
                    <div class="form-group">
                    	<label for="id" class="control-label col-xs-2">아이디</label>
                    	<div class="col-xs-10">
                        	<input type="text" name="id" class="form-control" id="id" placeholder="아이디를 입력해주세요" />
                        </div>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                  	    <label for="password" class="control-label col-xs-2">비밀번호</label>
                  	    <div class="col-xs-10">
                       		<input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요" />
                        </div>
                        <div class="validation"></div>
                    </div>
                    <div class="clearfix">
					</div>
                    <center><button type="submit" class="btn btn-theme">로그인</button></center>
                </form>
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