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
				width: 68%;
				padding: 0px;
				margin-top: 5rem;
			}
			
			/* Left wrapper */
			.left-wrapper{
				width: 25%;
				padding: 2rem;
				float: left;
			}
			
			.left-header{
				text-align: center;
				padding: 2rem 0px 3rem;
				margin-bottom: 2rem;
				border-bottom: 1px solid #EAEAEA;
			}
			
			#member-name{
				color: #5D5D5D;
				font-size: 1.7rem;
			}
			
			#member-name span{
				color: black !important;
				font-weight: bold;
			}
			
			#member-name i{
				font-weight: 300;
			}
			
			.left-header div:nth-child(2){
				color: #A6A6A6;
				font-size: 1.2rem;
				font-weight: 300;
			}
			
			.ul-stlye{
				padding: 0px;
				list-style: none;
			}
			
			.menu-list li{
				padding: 1rem;
				border-radius: 5px;
				cursor: pointer;
			}
			
			.menu-list li:hover{
				color: #00c4c4;
				box-shadow: 5px 5px 5px #EAEAEA;
			}
			
			#activate{
				color: #00c4c4;
				box-shadow: 5px 5px 5px #EAEAEA;
			}
			/* Fin: left wrapper */
			
			.right-wrapper{
				width: 75%;
				float: left;
				padding: 2rem 0px 15rem 3rem;
				border-left: 1px solid #EAEAEA;
			}
			
			/* right wrapper: supporter */	
			.funding-summary{
				margin-bottom: 4rem;
			}
			
			.funding-cards{
			
				width: 100%;
			
				display: table;
				padding: 2rem 0px;
				
				border: 1px solid #D5D5D5;
				border-radius: 8px;
				
				text-align: center;
				box-shadow: 1px 1px 3px 2px #EAEAEA;
			
			}
			
			.funding-cards li{
				width: 28%;
				display:inline-table;
				margin: 0px 1rem;
				padding: 1.2rem 0px;
				cursor: pointer;
			}
			
			.funding-cards li:nth-child(2){
				width: 33%;
				margin: 0px;
				border-left: 1px solid #D5D5D5;
				border-right: 1px solid #D5D5D5;
			}

			a:hover{
				text-decoration: none;
			}
			
			.funding-cards li a{
				color: #353535;
			}			
			
			.card-title{
				display: block;
				margin: 0.5rem 0px;
			}
			
			.title-count{
				font-size: 1.6rem;
				font-weight: 300;
			}
			
			.title-count b{
				font-size: 2.5rem;
			}
			
			.funding-summary-title{
				
				padding-left: 0.5rem;
				margin-bottom: 1.3rem;	
			
				font-size: 1.75rem;
				font-weight: 700;
			
			}
			
			.message-icon{
				color: #5D5D5D;
			}
			
			.info-wrapper{
				width: 100%;
				margin: 2.5rem 0px 1rem;
			}
			
			.info-contents{
	
				display: inline-block;
			
				width: 50%;
				padding: 1.5rem 1rem;
				
				border-top: 1px solid #EAEAEA;
				border-bottom: 1px solid #EAEAEA;
				
				cursor: pointer;

			}
			
			.info-contents:nth-child(1), .info-contents:nth-child(3){
				float: left;
			}
			
			.info-contents:nth-child(3), .info-contents:nth-child(4){
				border-top: none;
			}
			
			.info-contents *{
				font-size: 1.6rem;
				font-weight: 300;
			}
			
			.contents-span{
				display: inline-block;
			}
			
			.contents-span:nth-child(2){
				float: right;
				color: #EAEAEA;
			}
			
			#info-title{
				margin-left: 1.5rem;
			}
			
			.info-wrapper:nth-child(2){
				margin: 1rem 0px;
			}
			/* fin: right wrapper: supporter */
		
			/* right wrapper : maker */
			
			.maker-category{
				width: 100%;
				display: table;
				margin: 0px;
			}
			
			.maker-category li{
			
				margin: 0px 1rem;
				padding: 1rem 2rem;
				
				text-align: center;
				
				font-size: 1.5rem;
				
				display: inline-table;
				border: 1px solid red;
			}
			
			.member-category_wrapper{
				border-bottom: 1px solid #EAEAEA;
			}
			
			/* fin: right wrapper : maker */
		
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
							<span>sky</span> 님 <i class="glyphicon glyphicon-menu-right" style="font-size: 1.4rem;"></i>
						</div>
						<div>
							서포터 ・ 개인 회원
						</div>
					</div>
					
					<div>
						<div>
							<ul class="ul-stlye menu-list">
								<li class="member-select" data-index="0">서포터</li>
								<li class="member-select" data-index="1">메이커</li>
							</ul>
						</div>
					</div>
				
				</div>
			
				<div class="right-wrapper">
				
					<div class="member-contents contents-0">
						<%-- <c:import url="./right/right-supporter.jsp"></c:import> --%>
					</div>
				
					<!-- maker 영역 -->
					<div class="member-contents contents-1">
					
						<div class="funding-summary">
							
							<div class="member-category_wrapper">
								<ul class="ul-stlye maker-category">
									<li>펀딩하기</li>
									<li>투자하기</li>
								</ul>
							</div>
						
						</div>
						
					</div>
					<!-- fin: maker -->
				
				</div>
			
			</div>
			
		</div>
		
	</body>
	
	<script type="text/javascript">

/* 		var dataIndex = 0;
		memberSelectCss();

		$(".member-select").click(function(){
			dataIndex = $(this).attr("data-index");
			memberSelectCss()
		});

		function memberSelectCss(){
			
		    $(".member-select").each(function(){
			    
				var index = $(this).attr("data-index");
	
				if (index == dataIndex){
					$(this).attr("id","activate");
					rightContents(index);
				} else {
					$(this).attr("id","");
				}
				
		    });

		}

		function rightContents(index){
			$(".member-contents").css("display","none");
			$(".contents-" + index).css("display","block");		
		} */
	    
	</script>
	
</html>