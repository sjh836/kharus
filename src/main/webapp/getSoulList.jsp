<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kharus.biz.soul.SoulVO" %>

<%
	// 세션에 저장된 글 목록을 꺼낸다.
	SoulVO soul0=(SoulVO)request.getAttribute("soul0");
	SoulVO soul1=(SoulVO)request.getAttribute("soul1");
	SoulVO soul2=(SoulVO)request.getAttribute("soul2");
	SoulVO soul3=(SoulVO)request.getAttribute("soul3");
	SoulVO soul4=(SoulVO)request.getAttribute("soul4");
	SoulVO soul5=(SoulVO)request.getAttribute("soul5");
	SoulVO soul6=(SoulVO)request.getAttribute("soul6");
	SoulVO soul7=(SoulVO)request.getAttribute("soul7");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>정령의 숲 족보</title>
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
					<table class="table table-bordered table-hover">
					<tr>
						<th class="col-xs-8">시문</th>
						<th class="col-xs-4">속성</th>
					</tr>
						<tr>
							<td align="left"><%= soul0.getPoetry() %></td>
							<td><%= soul0.getAttribute() %></td>
						</tr>
						<tr>
							<td align="left"><%= soul1.getPoetry() %></td>
							<td><%= soul1.getAttribute() %></td>
						</tr>
												<tr>
							<td align="left"><%= soul2.getPoetry() %></td>
							<td><%= soul2.getAttribute() %></td>
						</tr>
												<tr>
							<td align="left"><%= soul3.getPoetry() %></td>
							<td><%= soul3.getAttribute() %></td>
						</tr>
												<tr>
							<td align="left"><%= soul4.getPoetry() %></td>
							<td><%= soul4.getAttribute() %></td>
						</tr>
												<tr>
							<td align="left"><%= soul5.getPoetry() %></td>
							<td><%= soul5.getAttribute() %></td>
						</tr>
												<tr>
							<td align="left"><%= soul6.getPoetry() %></td>
							<td><%= soul6.getAttribute() %></td>
						</tr>
												<tr>
							<td align="left"><%= soul7.getPoetry() %></td>
							<td><%= soul7.getAttribute() %></td>
						</tr>
					</table>
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