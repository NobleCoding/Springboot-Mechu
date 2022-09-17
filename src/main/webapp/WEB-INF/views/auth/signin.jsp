<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- div 따로 만들어서 css 맞출것!! -->
<div class="search-banner has-bg">
	<div class="container">
	<div class="modal-info">
		<div class="modal2">
			<h2>NNOVIE</h2>
			<form class="login__input" action="/auth/signin" method="post">
				<input class="input" type="text" placeholder="아이디" name="username">
				<input class="input" type="password" placeholder="비밀번호" name="password">
				<button>로그인 하기</button>
			</form>
			<div>
				비밀번호가 기억이 안나요!
				<button onclick="location.href='/logout'">비밀번호찾기</button>
			</div>
			<div>
				계정이 없으신가요?
				<button onclick="popup('.signup')">회원 가입</button>
			</div>
			<h1>회원가입 이요</h1>
			<button onclick="closePopup('.modal-info','#html')">취소</button>
		</div>
	</div>
	</div>
</div>