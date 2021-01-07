<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>크라우드펀딩 하디즈</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			.div__main-header > div{
				height: 100%;
				display: inline-block;
			}
		
			.div__main-header{
				width: 100%; height: 7rem;
				margin-top: -2rem;
				background-color: #A29584;
				color: white;
			}
		
			.div_back-story{
				padding: 2.2rem;
				font-weight: 200;
				font-size: 1.8rem;
				cursor: pointer;
				padding: 2.3rem;
				float: left;
			}
			
			.back-icon{
				margin-right: 1rem;
			}
			
			.div_title{
				min-width: 70%;
				text-align: center;	
				padding: 1.9rem;
			}
			
			.span_title{
				font-size: 2.3rem;
			}
			
			.span_projector{
				margin-left: 1rem;
				font-size: 1.8rem;
			}
			
			.container{
				border: 1px solid silver;
				padding: 2rem 10rem;
			}
		
		</style>
		
	</head>
	
	<body>
		
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
		
			<div class="div__main-header">
				
				<div class="div_back-story">
					<span class="span_back"><i class="glyphicon glyphicon-menu-left back-icon"></i> 스토리로 돌아가기</span>
				</div>
				
				<div class="div_title">
					<span class="span_title">[2만원대] 가성비 끝판왕 남여 공용 크로스백</span>
					<span class="span_projector">정하늘</span>
				</div>
				
			</div>
			
			<div class="container">	
				
				<div class="div_purchase-step">
					
					<div style="width: 50%; height: 10rem;background-image: url('https://www.wadiz.kr/resources/static/img/common/bg_gray_line.png');">
					
					</div>
					
				</div>
				
			</div>
		
		</main>
				
	</body>
	
</html>