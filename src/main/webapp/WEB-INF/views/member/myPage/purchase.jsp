<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 - 나의 펀딩현황</title>
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			body{
				padding-bottom: 10rem;
				background-color: #F5F7FA;
			}
			
			.container{
				width: 60%;
				margin: 4rem auto;
			}
			
			.summary-header{
				color: #747474;
			}
			
			.summary-header div{
				margin: 1rem 0px;
			}
						
			.purchase-info{
				width: 100%;
				padding: 2rem;
				border: 1px solid #EAEAEA;
				background-color: white;
			}
			
			#funding-status{
				width: 0.8rem; height: 0.8rem;
				border-radius: 50%;
				background-color: #00c4c4;
				display: inline-block;
				margin-right: 0.5rem;
			}
			
			#funding-title{
				
				color: #747474;
				cursor: pointer;
				
				font-size: 1.8rem;
				font-weight: 650;
				text-decoration: underline;

			}
			
			.company-info{
				margin: 0.5rem 0px 3rem;
				color: #8C8C8C;
				font-weight: 300;
			}
			
			.company-info span{
				text-decoration: underline;
			}
		
		</style>
		
	</head>

	<body>

		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../../template/header.jsp"></c:import>

		<div class="container">	
			
			<div class="purchase-info">
				
				<div class="summary-header">
					<div id="categoy">
						${purchaseInfo.fundingVO.charDivisionStr} / ${purchaseInfo.fundingVO.categoryVO.categoryName}
					</div>
					<div>
						<div> <span id="funding-status"></span> ${purchaseInfo.fundingVO.fundingStatus}</div>
					</div>
				</div>
				
				<div class="funding-info-wrapper">
				
					<div>
						<a id="funding-title">${purchaseInfo.fundingVO.title}</a>
					</div>
					
					<div class="company-info">
						by <span>${purchaseInfo.fundingVO.makerVO.company}</span>
					</div>
					
					<table></table>
					
				</div>
			
			</div>
			
		</div>

	</body>

</html>