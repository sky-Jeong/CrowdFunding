<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 - 마이하디즈</title>
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			.container{
				border: 1px solid red;
				width: 68%;
				padding: 0px;
			}
			
			.left-wrapper{
				border: 1px solid silver;
				width: 30%;
				padding: 2rem;
			}
			
			#member-name{
				color: #5D5D5D;
				font-size: 1.8rem;
			}
			
			#member-name span{
				color: black !important;
				font-weight: bold;
			}
			
			#member-name i{
				font-weight: 300;
			}
		
		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../../template/header.jsp"></c:import>
		
		<div class="container">	
		
			<div class="contents-wrapper">
			
				<div class="left-wrapper">
				
					<div class="left-header">
						<div id="member-name">
							<span>sky</span>님 <i class="glyphicon glyphicon-menu-right" style="font-size: 1.4rem;"></i>
						</div>
						<div>
							서포터 ・ 개인 회원
						</div>
					</div>
					
					<div>
						<div>
							<ul class="menu-list">
								<li>서포터</li>
								<li>메이커</li>
							</ul>
						</div>
						<div>
							<button id="logout-btn">로그아웃</button>
						</div>
					</div>
				
				</div>
			
				<div class="rifght-wrapper">
				
				</div>
			
			</div>
			
		</div>
		
	</body>
	
	<script type="text/javascript">


	
	</script>
	
</html>