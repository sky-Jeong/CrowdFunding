<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>하디즈 나의 펀딩 - 크라우드 펀딩</title>
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			.container{
				width: 100%;
				padding: 0px;
			}

			.myreward-body{
				border: 1px solid #EAEAEA;
			}
			
			.contents-area{
				width: 70%;
				margin: 2.8rem auto 2.5rem;
			}
			
			#page-title{
				font-size: 3.3rem;
				font-weight: 700;
			}
		
		</style>
		
	</head>
	
	<body>
	
		<!-- ${pageContext.request.contextPath } -->
		<c:import url="../../template/header.jsp"></c:import>
		
		<div class="container">	
		
			<div class="myreward-header">
				<div class="contents-area">
					<div id="page-title">나의 펀딩</div>
				</div>
			</div>
			
			<div class="myreward-body">
			
				<div class="contents-area">
				
					<div>
						<select name="status">
							<option value="" selected="selected">전체</option>
							<option value="결제 예약">결제 예약</option>
							<option value="예약 취소">예약 취소</option>
						</select>
					</div>

					<table>
					
						<tr>
						
							<td>
								<div>
									<span>펀딩 / 반려동물</span>
									<span>2021.01.15 펀딩</span>
								</div>
								<div>
									뭘 좋아할지 몰라 다 준비했어 ! 6종 낚시대SET가 9900원 실화냥!
								</div>
								<div>
									by 심콩캣
								</div>
								<div>
									예약 취소
								</div>
							</td>
						
						</tr>
						
					</table>
				</div>
				
			</div>
			
		</div>
		
	</body>
	
</html>