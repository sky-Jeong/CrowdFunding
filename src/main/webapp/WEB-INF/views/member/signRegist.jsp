<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 회원가입</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
			.container{
				width: 30%;
				margin-top: 3rem;
			}
			.main__div--agree-wrap{
				margin-top: 2rem;
			}
			#main__chk--agreeSign{
				display: inline-block;
			}
			#main__span--agree{
				width: 88%;
				display: inline-block;
				float: right;
				cursor: pointer;
			}
			#check-wrap{
				display: inline-block;
			}
			#agree-contents{
				font-weight: 200;
			}
			#next-arrow{
				float: right;
				text-align: center;
				width: 6%; height: 6.32rem;
				display: inline-block;
				padding-top: 2rem;
				cursor: pointer;
			}
			.main__div--info-write{
				width: 100%;
				margin: 6rem 0px 2rem;
			}
			.input-group{
				width: 100%;
			}
			.write-area{
				width: 100%; height: 5rem;
				border-radius: 0px;
			}
			.write-area::placeholder{
				font-size: 1.5rem;
				font-weight: 150;
			}
			#btn__email-chk{
				height: 5rem;
				color: white;
				border-radius: 0px;
				border: none;
				background-color: #00B2B2;
			}
			.span__info{
				font-size: 1.2rem;
				font-weight: 230;
			}
			.div__info-block{
				margin: 2rem 0px;
			}
			#btn__sign-up{
				color: white;
				font-size: 1.8rem;
				font-weight: 150;
				border: none;
				border-radius: 3px;
				background-color: #00B2B2;
			}
		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
		
			<div class="container">
			
				<h2>회원가입</h2>
				
				<form action="./signRegist" method="post">
				
					<!-- sign up header -->
					<div class="main__div--agree-wrap">
					
						<div id="check-wrap">
							<input type="checkbox" id="main__chk--agreeSign" style="padding-right: 15px;">
							<label for="label--agreeSign"></label>
						</div>
						
						<div id="next-arrow">
							<i class="glyphicon glyphicon-menu-right"></i>
						</div>	
							
						<div id="main__span--agree">
							<div style="display: inline-block;">
								<span style="font-weight: bold; font-size: 1.5rem;">전체동의</span>
								<br>
								<span id="agree-contents">와디즈 서비스 이용약관(필수), 개인정보 수집ᆞ이용 동의(필수), 마케팅정보 수집동의(선택)</span>
							</div>
						</div>
						
					</div>
					<!-- fin: sign up header -->
					
					<!-- info write area -->
					<div class="main__div--info-write">
						
						<div class="div__info-block">
							<div class="input-group">
								<input type="text" id="userEmail" class="form-control write-area" placeholder="이메일 계정" required="required">
								<span class="input-group-btn">
									<!-- 인증번호 발송 후 내용은 재발송으로 바뀌며 배경은 흰색, border는 연한 회색임 -->
									<button class="btn btn-default" type="button" id="btn__email-chk" >인증하기</button>
								</span>
							</div>
							<div>
								<!-- 이메일 인증번호 발송 후 초록 글씨로 변함 -->
								<span id="span__email-info" class="span__info">위 이메일로 인증번호가 발송되었습니다.</span>
							</div>
							<div>
								<!-- 이벤트 -->
								<!-- 클릭 후 이탈한 경우 '아이디(이메일 계정)을 입력해주세요.' 빨간 글씨 안내 -->
								<!-- 이메일을 부정확하게 입력했을 경우 빨간 글씨로 정확하게 입력할 것 요구 -->
								<!-- 이메일 발송 후 -->
								<!-- 초록 글씨로 변하며 메일에 포함된 인증번호 6자리를 입력해주세요. 안내가 뜸 -->
								<span id="span__email-info" class="span__info">이메일 형식에 맞게 입력해주세요.</span>
							</div>
						</div>
						
						<!-- 인증번호 발송된 후 hidden에서 나와 보일 예정 -->
						<div class="div__info-block" id="div__confirm-area">
							<div class="input-group">
								<input type="text" id="userName" class="form-control write-area active-chk" placeholder="인증번호 입력">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button" id="btn__email-chk">인증확인</button>
								</span>
							</div>
						</div>
						
						<div class="div__info-block">
							<div class="input-group">
								<input type="text" id="userName" class="form-control write-area active-chk" placeholder="이름" required="required">
							</div>
							<div>
								<!-- 포커스 이벤트 -->
								<!-- 입력 안할시 빨간 글씨와 텍스트 박스 또한 빨간선으로 포커싱되며 입력 안내 -->
								<span id="span__id-info" class="span__info">이름을 입력해주세요.</span>
							</div>
						</div>
						
						<div class="div__info-block">
							<div class="input-group">
								<input type="password" id="userName" class="form-control write-area active-chk" placeholder="비밀번호 입력" required="required">
								<div>
									<!-- 포커스 이벤트 -->
									<!-- 입력 안할시 빨간 글씨와 텍스트 박스 또한 빨간선으로 포커싱되며 입력 안내 -->
									<span id="span__id-info" class="span__info">비밀번호를 입력해주세요.</span>
								</div>
							</div>
							<div class="input-group" style="margin-top: 0.5rem;">
								<input type="password" id="userName" class="form-control write-area active-chk" placeholder="비밀번호 확인" required="required">
								<div>
									<span id="span__pw-info" class="span__info">영문, 숫자, 특수문자 (!@#$%^&*+=-)를 조합한 8자 이상</span>
								</div>
								<div>
									<span id="span__pw-chk-info" class="span__info">확인을 위한 비밀번호를 정확히 입력해주세요.</span>
								</div>
							</div>
						</div>
						
					</div>
					<!-- fin: info write area -->
					
					<button type="submit" id="btn__sign-up" class="write-area">완료</button>
					
				</form>
				
			</div>
			
		</main>
		
		<script type="text/javascript">

			var agreeChk = true;

			$(".active-chk").attr("readonly",true);
			$("#div__confirm-area").css("display","none");

			$("#btn__email-chk").attr("disabled",true);
			$(".header__span--project").css("display","none");

			$("#main__span--agree").click(function(){
				setAgreeChk();
			});

			$("#userEmail").on("focus",function(){
				
			});

			$("#userEmail").on("change", function(){
				console.log($("#userEmail").val().length)
			});

			function setAgreeChk(){
				
				if(agreeChk){
					$("#main__chk--agreeSign").prop("checked",agreeChk);
					agreeChk = false;
				} else {
					$("#main__chk--agreeSign").prop("checked",agreeChk);
					agreeChk = true;
				}
				
			}
			
			
		</script>
		
	</body>
	
</html>