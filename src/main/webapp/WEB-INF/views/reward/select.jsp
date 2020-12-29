<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>${info.title}</title>
		
		<c:import url="../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		<link rel="stylesheet" href="/css/reward/second-navbar.css">
		
		<style type="text/css">

			.navbar-default{
				margin-bottom: 0px;
			}
			
			.contents-header{
				width: 100%;
			}

			.contents__div-header{
				width: 100%; height: 18rem;
				border: 1px solid silver;
				padding-top: 5rem;
			}
			
			.contents_category-name{
				text-align: center;
			}
			
			.contents_category-name span{
				color: #00c4c4;
				font-size: 1.5rem;
			}
			
			.contents_category-name h2{
				margin-top: 8px;
			}
			
			.contents-category{
				height: 5rem;
				border: 1px solid silver;
			}

			.second-navbar li{
				margin: 0px 0.3rem;
			}

			#menu{
				font-size: 1.45rem;
			}

		</style>
		
	</head>
	
	<body>
	
		<c:import url="../template/header.jsp"></c:import>
		
		<main>
		
			<div class="contents__div-header contents-header">
				<div class="contents_category-name">
					<span>${info.categoryVO.categoryName}</span>
					<h2>${info.title}</h2>
				</div>
			</div>
			
			<div class="container-fluid">
				<div class="main__div--menu-wrap">
					<ul class="nav navbar-nav second-navbar">
						<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/main" id="menu">스토리</a></li>
						<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/category" id="menu">반환.정책</a></li>
						<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/comingsoon" id="menu">새소식</a></li>
						<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/comingsoon" id="menu">커뮤니티</a></li>
						<li class="funding--category"><a href="${pageContext.request.contextPath}/funding/comingsoon" id="menu">서포터</a></li>
					</ul>
				</div>
			</div>
			
			
			<div class="container">
			
			</div>
		
		</main>
	
	</body>
	
	<script type="text/javascript">
	
		var pathName = location.pathname;
		pathName = pathName.substr(pathName.lastIndexOf("/",15)+1);

		alert(pathName);
		alert(pathName.includes('main'));
	
		if(pathName.includes('main')){
			$(".funding--category").eq(0).css("border-bottom","3px solid #00c4c4");
			$(".funding--category").eq(0).css("box-sizing","border-box");
		} 
		
	</script>
	
</html>