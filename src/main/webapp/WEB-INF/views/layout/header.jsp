<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Color Admin | Support Forum Front End Theme</title>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<!-- ================== BEGIN core-css ================== -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
<link href="../assets/css/forum/vendor.min.css" rel="stylesheet" />
<link href="../assets/css/forum/app.min.css" rel="stylesheet" />
<!-- ================== END core-css ================== -->
</head>
<body>

	<!-- principalId 담아두는 곳 -->
	<input type="hidden" id="principalId" value="${principal.user.id }" />

	<!-- begin #header -->
	<div id="header" class="header navbar navbar-default navbar-fixed-top navbar-expand-lg">
		<!-- begin container -->
		<div class="container">
			<!-- begin navbar-brand -->
			<a href="/" class="navbar-brand"> <span class="brand-logo"></span> <span class="brand-text"> 
			<p><span style= "font-size: 150%">메</span><span style= "font-size: 30%">뉴</span><span style= "font-size: 150%">추</span><span style= "font-size: 30%">천</span></p> </span>
			</a>
			<!-- end navbar-brand -->
			<!-- begin navbar-toggle -->
			<button type="button" class="navbar-toggle collapsed" data-bs-toggle="collapse" data-bs-target="#header-navbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<!-- end navbar-toggle -->
			<!-- begin #header-navbar -->
			<div class="collapse navbar-collapse" id="header-navbar">
				<ul class="nav navbar-nav navbar-end">
					<li>
						<form class="navbar-form">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="맛집 검색..!" />
								<button type="submit" class="btn btn-search">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</form>
					</li>
					<c:choose>
						<c:when test="${empty principal.user.id}">
							<li><a href="/auth/signin">로그인</a></li>
							<li><a href="/auth/signup">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#">내 정보</a></li>
						</c:otherwise>
						</c:choose>
					

				</ul>
			</div>
			<!-- end #header-navbar -->
		</div>
		<!-- end container -->
	</div>
	<!-- end #header -->