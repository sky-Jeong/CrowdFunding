<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<title>하디즈 로그인</title>
		
		<c:import url="../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			/* #00c4c4 */
			a{
				text-decoration: none;
			}
			a:hover{
				text-decoration: none;
			}
		
			.container{
				width: 30%;
				margin-top: 5rem;
			}
			
			#main__form-frm{
				margin-top: 2rem;
			}
			
			.main__login-txt{
				width: 100%; height: 55px;
				margin: 0.5rem 0px;
				display: inline-block;
			}
			
			.main__login-txt::placeholder{
				font-size: 1.6rem;
				font-weight: 150;
			}
			
			.main__div-fnc-area{
				margin: 1rem 0px;
			}
			
			.span-id-pw{
				color:#8C8C8C;
			}
			
			.btn__for-login-btn{
				width: 100%; height: 48px;
				border: none; border-radius: 3px;
				color: white;
				font-size: 1.6rem;
				font-weight: 200;
				margin: 0.2rem 0px;
			}
			
			#login-btn{
				background-color: #00c4c4;
			}
			
			#facebook-btn{
				background-color: #304d8a;
				margin-bottom: 2.5rem;
			}
			
			.regist-social{
				text-align: center;
				/* border-bottom: 1px solid rgba(0,0,0,.06); */
			}
			
			.snsJoinBtn{
				border: 1px solid black;
				border-radius: 50%;
				margin: 0px 0.5rem;
				padding: 1.2rem 1.7rem;
				background-color: #BDBDBD;
			}
			
			#join-btn-area{
				font-size: 1.3rem;
				text-align: center;
				padding: 2rem 0px;
			}
			
			#main__a-join{
				margin-left: 2rem;
				color: #00c4c4;
			}
			
			#main__a-join:hover{
				text-decoration: underline;
			}
			
		</style>
		
	</head>
	
	<body>
	
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
		
			<div class="container">
				
				<h2>로그인</h2>
				
				<form action="${pageContext.request.contextPath}/member/login" id="main__form-frm" method="post">
				
					<input class="main__login-txt" id="id-txt" type="text" placeholder="이메일 아이디" name="email" value="${cookie.remember.value}">
					<input class="main__login-txt" id="pw-txt" type="password" name="password" placeholder="비밀번호(영문,숫자,특수문자 포함 8자 이상)">
					
					<div class="main__div-fnc-area">
					
						<div style="display: inline-block; cursor: pointer;" id="id-save">
							<input type="checkbox" id="id-save-check" name="save">
							<span class="span-id-pw">아이디 저장</span>
						</div>
						
						<div style="display: inline-block; cursor: pointer; float: right;">
							<a>
								<span class="span-id-pw">아이디/비밀번호 찾기</span>
								<i class="glyphicon glyphicon-chevron-right span-id-pw"></i>
							</a>
						</div>
						
					</div>
					
					<div style="margin: 2rem 0px 0px;">
						<button class="btn__for-login-btn" id="login-btn" type="submit">로그인</button>
						<hr>
					</div>
					
				</form>
				
				<div class="regist-social">
					<button class="btn__for-login-btn" id="facebook-btn" type="button">페이스북 로그인</button>
					<button type="button" class="snsJoinBtn" id="appleJoinBtn">A</button>
					<button type="button" class="snsJoinBtn" id="kakaoJoinBtn">K</button>
					<button type="button" class="snsJoinBtn" id="naverJoinBtn">N</button>
					<button type="button" class="snsJoinBtn" id="googleJoinBtn">G</button>
				</div>
				
				<div id="join-btn-area">
					<span class="span-id-pw">아직 하디즈 계정이 없나요?</span>
					<a href="./sign" id="main__a-join">회원가입</a>
				</div>
				
			</div>
			
		</main>
	
	</body>
	
	<script type="text/javascript">

		var idSave = false;
	
		$("#id-save").click(function(){
			idSaveFnc();
		});

		function idSaveFnc(){

			if(idSave){
				idSave = false;
			} else {
				idSave = true;
			}

			$("#id-save-check").prop("checked", idSave);
			
		}

	</script>
	
</html>