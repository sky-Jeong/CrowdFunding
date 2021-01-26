<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		
		<meta charset="UTF-8">
		<title>와디즈 메이커 스튜디오</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		
		<style type="text/css">
		
			.container{
				width: 65%;
				padding: 4rem 0px;
			}
			
			.logo-wrapper{
				text-align: center;
				margin-bottom: 4rem;
			}
			
			.nsc-icon{
				color: #F15F5F;
				margin-left: 0.3rem;
				font-size: 1.8rem;
			}
			
			.input-wrapper{
				margin-bottom: 3rem;
				font-weight: 300;
			}
			
			.input-title{
				color: #212121;
				font-size: 1.7rem;
				margin-bottom: 0.3rem;
			}
			
			.input-des{
				color: #A6A6A6;
				font-size: 1.3rem;
			}
			
			.input-contents{
				width: 100%; height: 4rem;
				padding: 0.2rem 1.7rem;
				margin-top: 1rem;
				font-size: 1.6rem;
			}
			
			.dropdown-margin{
				margin-top: 1rem;
			}
		
			.Dropdown_dropdown__31dpZ.wz.dropdown.outline {
			    margin-bottom: 0;
			    height: auto;
			    line-height: 24px;
			}
			
			.FormFieldDropdown_field__2lkkF.field .FormFieldDropdown_dropdown__bxZmv {
			    margin-top: 8px;
			}
			
			.wz.dropdown.block {
			    width: 100%;
			    box-sizing: border-box;
			}
			
			.wz.dropdown.outline {
			    border: 1px solid rgba(0,0,0,.15);
			    background-color: #fff;
			    padding: 0 16px;
			    line-height: 46px;
			}
			
			.field .wz.dropdown {
			    height: 48px;
			    line-height: 48px;
			}
			
			.wz.dropdown {
			    display: inline-block;
			    position: relative;
			}
			
			.wz.dropdown.block select {
			    width: 100%;
			}
			
			.wz.dropdown.outline select {
			    padding: 0 36px 0 16px;
			}
			
			.wz.dropdown.outline > select {
			    padding-right: 32px;
			    padding-left: 16px;
			}
			
			.wz.dropdown select {
			    margin: 0;
			    outline: none;
			    border: 0;
			    background: none;
			    padding: 0 20px 0 0;
			    height: 100%;
			    line-height: inherit;
			    -webkit-appearance: none;
			}
			
			.wz.dropdown > select, .wz.dropdown > span {
			    padding-right: 20px;
			    line-height: 24px;
			    color: rgba(0,0,0,.87);
			    font-size: 1.6rem;
			}
			
			.Dropdown_dropdown__31dpZ select {
			    position: absolute;
			    top: 0;
			    bottom: 0;
			    left: 0;
			    opacity: 0;
			    width: 100%;
			}
			
			.Dropdown_dropdown__31dpZ .Dropdown_value__35Inl {
			    display: block;
			    z-index: 1;
			    background-color: #fff;
			    padding: 11px 8px 11px 0;
			    min-height: 24px;
			    font-weight: 400;
			    pointer-events: none;
			}
			
			.bd-guide-color, .maker-info{
				color: #8C8C8C;
			}
			
			.maker-info{
				background-color: #F6F6F6;
			}
			
			.input-txt:focus {
				outline: none;
				border: 1px solid #00c4c4;
			}
			
			#start-btn{
			
				color: white;
			
				width: 25%;
				padding: 1rem;

				border: 1px solid #00c4c4;
				border-radius: 3px;
				background-color: #00c4c4;
				
				font-size: 1.6rem;
				font-weight: 300;

			}
			
			.btn-area{
				margin-top: 4rem;
				text-align: center;
			}
			
			a{
				color: black;
				text-decoration: none;
			}
			
			a:hover{
				color: black;
				text-decoration: none;
			}
			
		</style>
		
	</head>
	
	<body>

		<div class="container">	
			
			<div class="logo-wrapper">
				<h2><a href="${pageContext.request.contextPath}/">Hadiz</a></h2>
			</div>
			
			<div class="reward-input-body">
			
				<form action="" method="post">
				
					<!-- maker에 들어갈 내용 -->
					<div class="input-wrapper">
						<div class="input-title">메이커(기업)명<i class="nsc-icon">*</i></div>
						<div class="input-des">법인사업자는 법인등기부상 법인명 / 개인 사업자는 주민등록상 성명 또는 상호 / 개인은 주민등록상 성명을 입력하세요.</div>
						<input type="text" name="company" class="input-contents input-txt" id="maker-company" required="required">
					</div>
					
					<!-- maker에 들어갈 내용 -->
					<div class="input-wrapper">
					
						<div class="input-title">개인 ・ 사업자 구분<i class="nsc-icon">*</i></div>
						
						<div class="wz dropdown outline block FormFieldDropdown_dropdown__bxZmv Dropdown_dropdown__31dpZ">
							<div class="Dropdown_value__35Inl Dropdown_placeholder__3Wobx bd-guide-color" aria-hidden="true">
								사업자 구분 선택
								<span style="display: inline-block; float: right;"><i class="glyphicon glyphicon-menu-down"></i></span>
							</div>
							<select name="businessDivision">
								<option value="" disabled="disabled">사업자 구분 선택</option>
								<option value="개인">개인</option>
								<option value="개인 사업자">개인 사업자</option>
								<option value="법인 사업자">법인 사업자</option>
							</select>
						</div>
						
					</div>
					
					<!-- funding에 들어갈 내용 -->
					<div class="input-wrapper">
					
						<div class="input-title">카테고리<i class="nsc-icon">*</i></div>
						<div class="input-des">서포터들이 관심 가질만한 카테고리를 1개만 선택하세요.</div>
						
						<div class="wz dropdown outline block FormFieldDropdown_dropdown__bxZmv Dropdown_dropdown__31dpZ dropdown-margin">
							<div class="Dropdown_value__35Inl Dropdown_placeholder__3Wobx bd-guide-color" aria-hidden="true">
								카테고리 선택
								<span style="display: inline-block; float: right;"><i class="glyphicon glyphicon-menu-down"></i></span>
							</div>
							<select name="categoryNum">
								<option value="" disabled="disabled">카테고리 선택</option>
								
								<c:forEach items="${category}" var="vo">
									<option value="${vo.categoryNum}">${vo.categoryName}</option>
								</c:forEach>
								
							</select>
						</div>
						
					</div>
				
					<!-- 관리자 정보 확인 내용 -->
					<div class="input-wrapper">
						<div class="input-title">관리자 명<i class="nsc-icon">*</i></div>
						<input type="text" class="input-contents maker-info" id="maker-name" value="${login.memberName}"
								readonly="readonly" required="required">
					</div>
					
					<div class="input-wrapper">
						<div class="input-title">관리자 이메일<i class="nsc-icon">*</i></div>
						<input type="text" class="input-contents maker-info" id="maker-email" value="${login.email}"
								readonly="readonly" required="required">
						<div class="input-des" style="margin-top:0.5rem;">관리자명과 이메일 주소는 로그인 아이디와 연동되어 있으므로 변경을 원할 경우 회원 정보 설정에서 변경하세요.</div>
					</div>
					<!-- fin: 관리자 정보 확인 -->
					
					<!-- maker에 들어갈 내용 -->
					<div class="input-wrapper">
						<div class="input-title">관리자 휴대폰 번호<i class="nsc-icon">*</i></div>
						<input type="text" class="input-contents input-txt" id="maker-tel" value="${login.phone}"
								required="required">
						<div class="input-des" style="margin-top:0.5rem;">관리자 휴대폰 번호는 변경이 가능합니다.</div>
					</div>
					
					<div class="btn-area">
						<button type="button" id="start-btn">시작하기</button>
					</div>
					
				</form>
			
			</div>
		
		</div>
		
	</body>
	
	<script type="text/javascript">

		telFormat();
	
		$("#maker-tel").on("keyup", function(){
			telFormat();
		});

		function telFormat(){
			$("#maker-tel").val( $("#maker-tel").val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );	
		}
	
		$("#start-btn").click(function(){
			alert("펀딩 등록 추가 작업 요망 작업 예정");
		});

	</script>
	
</html>