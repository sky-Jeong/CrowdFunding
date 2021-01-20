<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<title>하디즈</title>
		<c:import url="./template/bootstrap.jsp"></c:import>

		<link rel="stylesheet" href="/css/common.css">
		<link rel="stylesheet" href="/css/reward/slideshow.css">
		
		<style type="text/css">
		
			.slide-image{
				margin-top: -2rem;
			}
		
		</style>

	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="./template/header.jsp"></c:import>
		
		<main>	
			
			<c:import url="./reward/common/slide.jsp"></c:import>
			
		</main>
		
	</body>
	
</html>