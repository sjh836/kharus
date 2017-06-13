<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	if(session.getAttribute("country")==null)
	{
		throw new IllegalArgumentException("권한이 없습니다.");
	}
%>
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
					<form action="getHuntRecord.do" method="post">
					<table class="table table-bordered">
						<tr>
							<td align="center">국민명단</td>
							<td align="left"><textarea class="form-control" name="nickName" cols="40" rows="10"></textarea></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input class="btn btn-default" type="submit" value="전적분석" /></td>
						</tr>
					</table>
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