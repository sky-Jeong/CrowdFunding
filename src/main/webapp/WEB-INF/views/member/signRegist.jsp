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
				border: 1px solid green;
			}
			#main__chk--agreeSign{
				display: inline-block;
			}
			#main__span--agree{
				width: 85%;
				display: inline-block;
				float: right;
			}
			#check-wrap{
				display: inline-block;
			}
			#agree-contents{
				font-weight: 140;
			}
			#next-arrow{
				float: right;
				text-align: center;
				width: 6%; height: 6.32rem;
				display: inline-block;
				padding-top: 2rem;
			}
		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
		
			<div class="container">
			
				<h2>회원가입</h2>
				
				<form action="">
				
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
					
					<div>
						<input id="userEmail">
					</div>
					
				</form>
				
			</div>
			
		</main>
			
	</body>
	
</html>