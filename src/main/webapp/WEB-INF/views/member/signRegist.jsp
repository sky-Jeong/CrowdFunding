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
				background-color: #00c4c4;
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
				background-color: #00c4c4;
			}
		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
		
			<div class="container">
			
				<h2>회원가입</h2>
				
				<form action="./signRegist" method="post" id="sign-up-frm">
				
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
								<input name="email" type="text" id="userEmail" class="form-control write-area" placeholder="이메일 계정" required="required">
								<span class="input-group-btn">
									<!-- 인증번호 발송 후 내용은 재발송으로 바뀌며 배경은 흰색, border는 연한 회색임 -->
									<button class="btn btn-default" type="button" id="btn__email-chk" >인증하기</button>
								</span>
							</div>
							<div>
								<!-- 이메일 인증번호 발송 후 초록 글씨로 변함 -->
								<span id="span__email-info" class="span__info span__email-info">위 이메일로 인증번호가 발송됩니다.</span>
							</div>
							<div>
								<!-- 이벤트 -->
								<!-- 클릭 후 이탈한 경우 '아이디(이메일 계정)을 입력해주세요.' 빨간 글씨 안내 -->
								<!-- 이메일을 부정확하게 입력했을 경우 빨간 글씨로 정확하게 입력할 것 요구 -->
								<!-- 이메일 발송 후 -->
								<!-- 초록 글씨로 변하며 메일에 포함된 인증번호 6자리를 입력해주세요. 안내가 뜸 -->
								<span id="span__email-info" class="span__info span__email-info"></span>
							</div>
						</div>
						
						<!-- 인증번호 발송된 후 hidden에서 나와 보일 예정 -->
						<div class="div__info-block" id="div__confirm-area">
							<div class="input-group">
								<input type="text" id="userConfirm" class="form-control write-area active-chk" placeholder="인증번호 입력">
								<span class="input-group-btn">
									<button class="btn btn-default btn__email-chk-confirm" type="button" id="btn__email-chk">인증확인</button>
								</span>
							</div>
						</div>
						
						<div class="div__info-block">
							<div class="input-group">
								<input name="memberName" type="text" id="userName" class="form-control write-area active-chk" placeholder="이름" required="required">
							</div>
							<div>
								<!-- 포커스 이벤트 -->
								<!-- 입력 안할시 빨간 글씨와 텍스트 박스 또한 빨간선으로 포커싱되며 입력 안내 -->
								<span id="span__id-info" class="span__info"></span>
							</div>
						</div>
						
						<div class="div__info-block">
							<div class="input-group">
								<input name="password" type="password" id="userPw" class="form-control write-area active-chk" placeholder="비밀번호 입력" required="required">
								<div>
									<!-- 포커스 이벤트 -->
									<!-- 입력 안할시 빨간 글씨와 텍스트 박스 또한 빨간선으로 포커싱되며 입력 안내 -->
									<span id="span__pw-info" class="span__info span__pw-info"></span>
								</div>
							</div>
							<div class="input-group" style="margin-top: 0.5rem;">
								<input type="password" id="userPwChk" class="form-control write-area active-chk" placeholder="비밀번호 확인" required="required">
								<div>
									<span id="span__pw-info" class="span__info">영문, 숫자, 특수문자 (!@#$%^&*+=-)를 조합한 8자 이상</span>
								</div>
								<div>
									<span id="span__pw-chk-info" class="span__info span__pw-info"></span>
								</div>
							</div>
						</div>
						
					</div>
					<!-- fin: info write area -->
					
					<button type="button" id="btn__sign-up" class="write-area">완료</button>
					
				</form>
				
			</div>
			
		</main>
		
		<script type="text/javascript">

			var agreeChk = true;
			var emailForm = false;

			var totalAgreeChk = false;
			var emailChk = false;
			var nameChk = false;
			var pwChk = false;

			// 초기 셋팅 -----------------------------------------------------
			$(".active-chk").attr("readonly",true);
			$("#div__confirm-area").css("display","none");

			$("#btn__sign-up").attr("disabled",true);
			$("#btn__email-chk").attr("disabled",true);
			$(".header__span--project").css("display","none");
			//--------------------------------------------------------------

			// 가입 --------------------------------------------------------
			$("#btn__sign-up").click(function(){
				
				var signUpChk = totalChk();

				if(signUpChk == true){

					var continueChk = beforeChk();
					if (continueChk == 'success'){
						$("#sign-up-frm").submit();
					}
					
				} else {
					alert("공란이 없어야하며, 전체동의는 필수입니다.");
				}
				
			});

			// 이메일 검증 완료여부 확인
			function beforeChk(){

				var chkNum = $("#userConfirm").attr("title");
				$.ajax({
					url:"../email/confirmChk",
					type:"post",
					async:false,
					data:{
						chkNum:chkNum
					},
					success: function(data){
						chkNum = data.trim();
					}
				});
				return chkNum;
				
			}
			
			//--------------------------------------------------------------
			
			// 전체동의 체크 기능------------------------------------------------
			$("#main__span--agree").click(function(){
				setAgreeChk();
				totalChk();
			});
			//---------------------------------------------------------------
			
			// 이름 유효성 검사 -------------------------------------------------
			$("#userName").on("keyup", function(){
				
				var nameTxtLength = $("#userName").val().length;
				
				if(nameTxtLength < 2){
					$("#span__id-info").css("color","#FF5A5A");
					$("#span__id-info").text("이름을 입력해주세요.");
					nameChk = false;
				} else{
					$("#span__id-info").text("");
					nameChk = true;
				}

				totalChk();
				
			});
			//---------------------------------------------------------------
			
			// 비밀번호 유효성 검사 ----------------------------------------------
			$("#userPw").on("keyup", function(){
				var pwTxt = $("#userPw").val();
				pwChk = false;
				pwTxtChkFun(pwTxt);
			});

			$("#userPwChk").on("keyup", function(){

				var pwTxt = $("#userPw").val();
				var pwTxtChk = $("#userPwChk").val();
				
				if( pwTxt == pwTxtChk ){
					pwChk = true;
					$(".span__pw-info").eq(1).text("");
				} else {
					pwChk = false;
					$(".span__pw-info").eq(1).css("color","#FF5A5A");
					$(".span__pw-info").eq(1).text("확인을 위한 비밀번호를 정확히 입력해주세요.");
				}
				
				totalChk();
				
			});
			
			function pwTxtChkFun(pwTxt){
	
				var strChk = /[a-zA-Z]/;
				var numberChk = /[0-9]/;
				var emoChk = /[!@#$%^&*+=-]/;

				if(	!strChk.test(pwTxt)	|| !emoChk.test(pwTxt) || !numberChk.test(pwTxt) || pwTxt.length < 8){
					pwChk = false;
					$(".span__pw-info").eq(0).css("color","#FF5A5A");
					$(".span__pw-info").eq(0).text("비밀번호 형식이 맞지 않습니다.");
				} else {
					pwChk = true;
					$(".span__pw-info").eq(0).text("");
				}

			}
			//---------------------------------------------------------------
			
			// 전체 유효성 검사 통과 여부 -----------------------------------------
			function totalChk(){
				
				var totalChk = totalAgreeChk * nameChk * pwChk * emailChk;

				if(totalChk == 1){
					$("#btn__sign-up").attr("disabled",false);
					return true;
				} else {
					$("#btn__sign-up").attr("disabled",true);
					return false;
				}	
				
			}
			//---------------------------------------------------------------
			
			// 이메일 인증번호 확인 ----------------------------------------------
			$(".btn__email-chk-confirm").click(function(){

				var chkNum = $("#userConfirm").attr("title");
				var confirmNum = $("#userConfirm").val();
				
				var result = getEmailConfirm(chkNum, confirmNum);
				if(result == 'success'){
					
					emailChk = true;
					
					alert("인증을 성공하였습니다.");
					
					$(".active-chk").attr("readonly",false);
					$("#div__confirm-area").css("display","none");
					updateEmailConfirm();
					
				} else {
					emailChk = false;
					alert("인증번호가 다릅니다.");
				}
				
				totalChk();
				
			});

			function updateEmailConfirm(){

				var email = $("#userEmail").val();
				var confirmChk = "Y";
				var chkNum = $("#userConfirm").attr("title");

 				$.ajax({
					type:"post",
					url:"../email/emailChk",
					data:{
						chkNum:chkNum,
						email:email,
						confirmChk:confirmChk
					}
				});
				
			}

			function getEmailConfirm(chkNum, confirmNum){

				var result;
				$.ajax({
					type:"post",
					url:"/email/check",
					async:false,
					data:{
						chkNum:chkNum,
						confirmNum:confirmNum
					},
					success: function(data){
						result = data.trim();
					}
				});
				return result;
				
			}
			//---------------------------------------------------------------

			// 이메일 인증번호 발송 ----------------------------------------------
			$("#btn__email-chk").click(function(){

				var email = $("#userEmail").val();
				var result = getMemberEmailChk(email);
				console.log(result);

				if(result == 'success'){
					setEmailConfirm(email);
				} else {
					alert("이미 가입된 메일입니다.");
				}
				
			});

			// 이메일 유효성 검사
			function getMemberEmailChk(email){
				
				var result;
				
				$.ajax({
					type:"post",
					url:"./memberChk",
					async:false,
					data:{
						email:email
					},
					success:function(data){
						result = data.trim();
					}
				});
				
				return result;
			}

			function setEmailConfirm(email){

				alert("인증번호가 발송되었습니다.");
				var btnTxt = $("#btn__email-chk").text();

				if(btnTxt == '인증하기'){
					
					$("#btn__email-chk").text("재발송");
					showEmailConfirmDiv();
					
					$.ajax({
						type:"post",
						url:"../email/emailChk",
						data:{
							email:email
						},
						success:function(data){
							var chkNum = data.trim();
							$("#userConfirm").attr("title",chkNum);
						}
					});
					
				} else {

					var titleNum = $("#userConfirm").attr("title");
					showEmailConfirmDiv();
					
					$.ajax({
						type:"post",
						url:"../email/emailChk",
						data:{
							chkNum:titleNum,
							email:email
						},
						success:function(data){
							var chkNum = data.trim();
							$("#userConfirm").attr("title",chkNum);
						}
					});

				}

				
			}

			function showEmailConfirmDiv(){

				$("#userConfirm").attr("readonly",false);
				$(".span__email-info").css("color","#41AF39");
				$("#div__confirm-area").css("display","-webkit-box");

				$(".span__info").eq(1).text("인증번호가 발송되었습니다.");
				$(".span__info").eq(0).text("위 이메일로 인증번호가 발송되었습니다.");
				
			}
			//-----------------------------------------------------------------
			
			// 입력칸 접근 후 입력하지 않고 나갈 경우 입력 안내를 위한 cs 적용
			$("#userEmail").on("focus", function(){
				
				var email_leng = $("#userEmail").val();
				
				if(email_leng == ''){
					setEmailChk();
				} else {
					$("#userEmail").css("border","1px solid #ccc");
					$("#btn__email-chk").css("border","none");
				}
				
			});

			// 타이핑할 때마다 유효성 검사 진행
			$("#userEmail").on("keyup", function(){
				
				var email_leng = $("#userEmail").val();
				
				if(email_leng != ''){
					$("#userEmail").css("border","1px solid #ccc");
					$("#btn__email-chk").css("border","none");
					emailForm = getEmailChk(email_leng);

					// 이메일 형식이 맞을 경우 버튼 클릭이 가능하도록 함
					if(emailForm){
						$("#btn__email-chk").attr("disabled",false);
					}
					
				} else {
					setEmailChk();
					$("#btn__email-chk").attr("disabled",true);
				}
				
			});

			$("#userEmail").on("change", function(){
				var email_leng = $("#userEmail").val();
				if(email_leng == ''){
					$("#btn__email-chk").attr("disabled",true);
				}
			});

			function setEmailChk(){
				$("#btn__email-chk").css("border","1px solid #FF5A5A");
				$("#userEmail").css("border","1px solid #FF5A5A");
				$(".span__info").eq(1).css("color","#FF5A5A");
				$(".span__info").eq(1).text("아이디(이메일 계정)를 입력해주세요.");
			}

			// 이메일 유효성 검사
			function getEmailChk(enter_email){

				// 이메일 형식 영어+숫자@알파벳+숫자.알파벳+숫자 형식
				var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

				// 위 형식 검사
				if(exptext.test(enter_email)==false){	
					$(".span__info").eq(1).css("color","#FF5A5A");
					$(".span__info").eq(1).text("이메일을 정확히 입력해주세요.");
					return false;
				} else {
					$(".span__info").eq(1).text("");
					return true;
				}
				 
			}

			// 전체동의 체크 기능
			function setAgreeChk(){
				
				if(agreeChk){
					$("#main__chk--agreeSign").prop("checked",agreeChk);
					totalAgreeChk = true;
					agreeChk = false;
				} else {
					$("#main__chk--agreeSign").prop("checked",agreeChk);
					totalAgreeChk = false;
					agreeChk = true;
				}

				totalChk();
				
			}
			
			
		</script>
		
	</body>
	
</html>