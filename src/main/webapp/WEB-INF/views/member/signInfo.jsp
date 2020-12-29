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
			.main__div{
				border: 1px solid black;
			}
			.main__div--wrap{
				width: 50%;
				padding: 15rem 0px 15rem;
				display: inline-block;
			}
			.main__div--image {
			    width: 50%; height: 60rem;
			    display: inline-block;
			    float: right;
			    margin-top: 5rem;
			    background-image: url(https://static.wadiz.kr/account/media/regist-intro-sky@2x.da18c903.jpg);
			    background-size: contain;
			    background-repeat: no-repeat;
			}
			.main__div--sign-up-wrap{
				margin-left: 50%;
			}
			.regist-title{
				margin-bottom: 2rem;
			}
			.regist-title p{
				color: #212121;
				font-size: 1.7rem;
				font-weight: 150;
			}
			.regist-social{
				text-align: center;
				/* border-bottom: 1px solid rgba(0,0,0,.06); */
				padding-bottom: 2rem;
				margin-bottom: 2rem;
			}
			#facebookJoinBtn{
				width: 100%; height: 4.5rem;
				font-weight: 200;
				color: white; border-radius: 3px;
				border: 1px solid #304d8a;
				background-color: #304d8a;
				margin-bottom: 1.5rem;
			}
			.snsJoinBtn{
				border: 1px solid black;
				border-radius: 50%;
				margin: 0px 0.5rem;
				padding: 1.2rem 1.7rem;
				background-color: #BDBDBD;
			}
			#emailJoinBtn{
				width: 100%; height: 4.5rem;
				font-weight: 200;
				color: #949494; border-radius: 3px;
				background-color: white;
				border: 1px solid #949494;
				margin-bottom: 1rem;
			}
			.bottom-message{
				text-align: center;
				font-size: 1.3rem;
				font-weight: 150;
			}

		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<div class="user-sign-container">
		
			<!-- main div wrap -->
			<div class="main__div--wrap">
				<div class="main__div--sign-up-wrap">
					<div class="regist-title">
						<h2>회원가입</h2>
						<p>
							와디즈 신규 회원가입하고<br>
							다양한 혜택을 만나보세요.
						</p>
					</div>
					<div class="regist-social">
						<button type="button" id="emailJoinBtn"><i class="glyphicon glyphicon-envelope"></i>&nbsp; 이메일로 가입</button>
						<button type="button" id="facebookJoinBtn">페이스북으로 가입</button>
						<button type="button" class="snsJoinBtn" id="appleJoinBtn">A</button>
						<button type="button" class="snsJoinBtn" id="kakaoJoinBtn">K</button>
						<button type="button" class="snsJoinBtn" id="naverJoinBtn">N</button>
						<button type="button" class="snsJoinBtn" id="googleJoinBtn">G</button>
					</div>
					<div class="bottom-message">
						<p>이미 와디즈 계정이 있나요?<a href="#" style="margin-left: 0.5rem;">로그인</a></p>
					</div>
				</div>
			</div>
			<!-- fin: main div wrap -->
			
			<div class="main__div--image">
			
			</div>
			
		</div>
		
		<script type="text/javascript">
			$(".header__span--project").css("display","none")
			$("#emailJoinBtn").click(function(){
				location.href="./signRegist"
			})
		</script>
		
	</body>
	
</html>