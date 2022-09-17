<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


	<!-- begin search-banner -->
	<div class="search-banner has-bg">
		<!-- begin bg-cover -->
		<div class="bg-cover" data-paroller="true" data-paroller-factor="0.5" data-paroller-factor-xs="0.01" style="background-image: url(../assets/img/cover/cover-1.jpg)"></div>
		<!-- end bg-cover -->
		<!-- begin container -->
		<div class="container" >
			<div>
				<h5 class="fs-14px mb-10px">오늘의 메뉴는?</h5>
				<ul class="popular-tags">
					<li><a href="#"><i class="fa fa-circle"></i> 피자</a></li>
					<li><a href="javascript:changeMarker('통닭');"><i class="fa fa-circle"></i> 치킨</a></li>
					<li><a href="javascript:changeMarker('한식');"><i class="fa fa-circle"></i> 한식</a></li>
					<li><a href="javascript:changeMarker('중국식');"><i class="fa fa-circle"></i> 중식</a></li>
					<li><a href="javascript:changeMarker('횟집');"><i class="fa fa-circle"></i> 회</a></li>
					<li><a href="javascript:changeMarker('제과점영업');"><i class="fa fa-circle"></i> 제과</a></li>
					<li><a href="#"><i class="fa fa-circle"></i> Template</a></li>
				</ul>
				
			</div>
			
		</div>
			<div id="map" style="width:1000px; height: 400px; margin: auto; margin-top: 40px;"></div>

		
		<!-- end container -->
	</div>
	<!-- end search-banner -->



	<!-- begin content -->
	<div class="content">
		<button onclick="location.href='/geocoding'">지오코딩</button>	
		<!-- begin container -->
		<div class="container">
			<!-- begin card-forum -->
			<div class="card card-forum mb-3">
				<!-- begin card-header -->
				<div class="card-header fw-bold">Official Management District</div>
				<!-- end card-header -->
				<!-- begin forum-list -->
				<ul class="forum-list">
					<li>
						<!-- begin media -->
						<div class="media">
							<img src="../assets/img/icon/icon-gold-note.png" alt="" />
						</div> <!-- end media --> <!-- begin info-container -->
						<div class="info-container">
							<div class="info">
								<h4 class="title">
									<a id="rstName"href="category_list.html">중랑 맛집</a>
								</h4>
								<p id="rstAddr"></p>
										<div class="sl__item__input">
											<input size="50px" type="text" placeholder="댓글 달기..." id="storyCommentInput-${image.id}" />
											<button type="button" onClick="addComment(${image.id})">게시</button>
										</div>
							</div>
							
							<div class="latest-post">
								
							</div>
						</div> <!-- end info-container -->
					</li>
					<li>
						<!-- begin media -->
						<div class="media">
							<img src="../assets/img/icon/icon-cone.png" alt="" />
						</div> <!-- end media --> <!-- begin info-container -->
						<div class="info-container">
							<div class="info">
								<h4 class="title">
									<a href="category_list.html">Bug / Suggestion</a>
								</h4>
								<p class="desc">Template development proposals, content-related complaints and bug submission.</p>
							</div>
							<div class="total-count">
								<span class="total-post">1,293</span> <span class="divider">/</span> <span class="total-comment">9,291</span>
							</div>
							<div class="latest-post">
								<h4 class="title">
									<a href="category_list.html">Migrate from jQuery 1.8.x to jQuery 2.0.x</a>
								</h4>
								<p class="time">
									Yesterday 10:49pm <a href="category_list.html" class="user">admin</a>
								</p>
							</div>
						</div> <!-- end info-container -->
					</li>
				</ul>
				<!-- end forum-list -->
			</div>
			<!-- end card-forum -->
			<!-- begin card-forum -->
			<div class="card card-forum mb-3">
				<!-- begin card-header -->
				<div class="card-header fw-bold">General Bootstrap Discussion</div>
				<!-- end card-header -->
				<!-- begin forum-list -->
				<ul class="forum-list">
					<li>
						<!-- begin media -->
						<div class="media">
							<img src="../assets/img/icon/icon-chat-bubble.png" alt="" />
						</div> <!-- end media --> <!-- begin info-container -->
						<div class="info-container">
							<div class="info">
								<h4 class="title">
									<a href="category_list.html">CSS</a>
								</h4>
								<p class="desc">The latest official news, events , announcements, updates and other information released .</p>
							</div>
							<div class="total-count">
								<span class="total-post">1,293</span> <span class="divider">/</span> <span class="total-comment">9,291</span>
							</div>
							<div class="latest-post">
								<h4 class="title">
									<a href="category_list.html">Migrate from jQuery 1.8.x to jQuery 2.0.x</a>
								</h4>
								<p class="time">
									Yesterday 10:49pm <a href="category_list.html" class="user">admin</a>
								</p>
							</div>
						</div> <!-- end info-container -->
					</li>
					<li>
						<!-- begin media -->
						<div class="media">
							<img src="../assets/img/icon/icon-chat-bubble.png" alt="" />
						</div> <!-- end media --> <!-- begin info-container -->
						<div class="info-container">
							<div class="info">
								<h4 class="title">
									<a href="category_list.html">Javascript / jQuery</a>
								</h4>
								<p class="desc">Template introduction, installation, and integration in different framework.</p>
							</div>
							<div class="total-count">
								<span class="total-post">1,293</span> <span class="divider">/</span> <span class="total-comment">9,291</span>
							</div>
							<div class="latest-post">
								<h4 class="title">
									<a href="category_list.html">Migrate from jQuery 1.8.x to jQuery 2.0.x</a>
								</h4>
								<p class="time">
									Yesterday 10:49pm <a href="category_list.html" class="user">admin</a>
								</p>
							</div>
						</div> <!-- end info-container -->
					</li>
					<li>
						<!-- begin media -->
						<div class="media">
							<img src="../assets/img/icon/icon-chat-bubble.png" alt="" />
						</div> <!-- end media --> <!-- begin info-container -->
						<div class="info-container">
							<div class="info">
								<h4 class="title">
									<a href="category_list.html">Twitter Bootstrap</a>
								</h4>
								<p class="desc">Template development proposals, content-related complaints and bug submission.</p>
							</div>
							<div class="total-count">
								<span class="total-post">1,293</span> <span class="divider">/</span> <span class="total-comment">9,291</span>
							</div>
							<div class="latest-post">
								<h4 class="title">
									<a href="category_list.html">Migrate from jQuery 1.8.x to jQuery 2.0.x</a>
								</h4>
								<p class="time">
									Yesterday 10:49pm <a href="category_list.html" class="user">admin</a>
								</p>
							</div>
						</div> <!-- end info-container -->
					</li>
				</ul>
				<!-- end forum-list -->
			</div>
			<!-- end card-forum -->
			<!-- begin card-forum -->
			<div class="card card-forum mb-3">
				<!-- begin card-header -->
				<div class="card-header fw-bold">Mobile Apps Discussion</div>
				<!-- end card-header -->
				<!-- begin forum-list -->
				<ul class="forum-list">
					<li>
						<!-- begin media -->
						<div class="media">
							<img src="../assets/img/icon/icon-discussion-grey.png" alt="" />
						</div> <!-- end media --> <!-- begin info-container -->
						<div class="info-container">
							<div class="info">
								<h4 class="title">
									<a href="category_list.html">Android</a>
								</h4>
								<p class="desc">Template development proposals, content-related complaints and bug submission.</p>
							</div>
							<div class="total-count">
								<span class="total-post">1,293</span> <span class="divider">/</span> <span class="total-comment">9,291</span>
							</div>
							<div class="latest-post">
								<h4 class="title">
									<a href="category_list.html">Migrate from jQuery 1.8.x to jQuery 2.0.x</a>
								</h4>
								<p class="time">
									Yesterday 10:49pm <a href="category_list.html" class="user">admin</a>
								</p>
							</div>
						</div> <!-- end info-container -->
					</li>
					<li>
						<!-- begin media -->
						<div class="media">
							<img src="../assets/img/icon/icon-discussion-grey.png" alt="" />
						</div> <!-- end media --> <!-- begin info-container -->
						<div class="info-container">
							<div class="info">
								<h4 class="title">
									<a href="category_list.html">iOS</a>
								</h4>
								<p class="desc">Template development proposals, content-related complaints and bug submission.</p>
							</div>
							<div class="total-count">
								<span class="total-post">1,293</span> <span class="divider">/</span> <span class="total-comment">9,291</span>
							</div>
							<div class="latest-post">
								<h4 class="title">
									<a href="category_list.html">Migrate from jQuery 1.8.x to jQuery 2.0.x</a>
								</h4>
								<p class="time">
									Yesterday 10:49pm <a href="category_list.html" class="user">admin</a>
								</p>
							</div>
						</div> <!-- end info-container -->
					</li>
				</ul>
				<!-- end forum-list -->
			</div>
			<!-- end card-forum -->
		</div>
		<!-- end container -->
	</div>
	<!-- end content -->



	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=vkfmpgwlm0"></script>
	<script src="../assets/js/map.js"></script>

