<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>${info.title}</title>
		
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		<link rel="stylesheet" href="/css/reward/second-navbar.css">
		<link rel="stylesheet" href="/css/detail/select.css">
		<link rel="stylesheet" href="/css/detail/modal-css.css">
		
		<style type="text/css">
			
			.comu_header-wrapper{
				margin-bottom: 2rem;
			}
			
			.comu_header {
			    font-size: 2rem;
			    font-weight: bold;
			}
			
			#coumu_reply-count{
				color: #00b2b2;
				margin-left: 0.5rem;
			}
			
			#comu_sub-header{
				color: #8C8C8C;
				font-size: 1.4rem;
			}
			
			#btn-write{
			
				width: 60%; height: 5.5rem;
			
				color: white;
				font-size: 1.76rem;
				font-weight: 200;
			
				background-color: #00b2b2;
				border: none;
				border-radius: 3px;
			
			}
			
			.div_btn-wrapper{
				padding-bottom: 2rem;
				margin-bottom: 2rem;
				border-bottom: 1px solid #BDBDBD;
			}
			
			.comment-header{
				margin-bottom: 1rem;
			}
			
			#comment-writer{
				font-size: 1.4rem;
				font-weight: bold;
			}
			
			#comment-summary{
				color: #949494;
				margin-left: 0.5rem;
				font-size: 1.3rem;
			}
			
			#comment-contents{
				font-size: 1.6rem;
				font-weight: 200;
				margin: 2rem 0px;
			}
			
			.btn_comment-reply{
				width: 5rem; height: 3.3rem;
				font-size: 1.3rem;
				background-color: #F6F6F6;
				border: 1px solid #EAEAEA;
				border-radius: 2px;
			}
			
			.div_reply-area{
				width: 100%;
				padding: 2rem;
				display: none;
				background-color: #F6F6F6;
			}
			
			.div_reply-txt-area{
				width: 100%;
				background-color: #F6F6F6;
			}
			
			.reply-txt{
				width: 100%; height: 4.2rem;
				resize: none;
				border: 1px solid #D5D5D5;
				padding: 0.5rem;
			}
			
			.reply-txt::placeholder{
				font-size: 1.5rem;
				font-weight: 200;
			}
			
			.reply-enter{
				border-radius: 0px;
			}
			
			.reply-btn{
				cursor: pointer;
			}
			

		</style>
		
	</head>
	
	<body>
	
		<c:import url="../../template/header.jsp"></c:import>
		
		<main>
	
			<c:import url="../common/select-second-navbar.jsp"></c:import>
			<div class="container">
							
				<div class="contents-area left-contents">
					
					<div class="comu_header-wrapper">
						<div style="margin-bottom: 0.5rem;">
							<span class="comu_header">응원 • 의견 • 체험리뷰</span>
							<span class="comu_header" id="coumu_reply-count">${count}</span>
						</div>
						<p><span id="comu_sub-header">펀딩 종료 전에 남긴 글입니다.</span></p>
					</div>
					
					<div class="div_btn-wrapper">
						<button id="btn-write">글 남기기</button>
					</div>
					
					<div class="div_comment-area">
						
						<!-- comment area -->
						<div class="div_comment-supporter">
							
							<div class="div_comment-list">
							
							</div>
							
						</div>
						
					</div>	
				
				</div>
				
				<div class="contents-area right-contents">
					<c:import url="./common/detail_right_contents.jsp"></c:import>
				</div>
				
			</div>
		
		</main>

		<c:import url="../../common/modal-login-YN.jsp"></c:import>
		
	</body>
	
	<script type="text/javascript" src="/js/detail/modal-event.js"></script>
	<script type="text/javascript" src="/js/detail/select.js"></script>
	<script type="text/javascript" src="/js/detail/detail_right_contents.js"></script>
	<script type="text/javascript" src="/js/detail/project-like.js"></script>
		
	<script type="text/javascript">

		var like = '${like}';
		var projectNum = '${info.num}';
		var login = '${login.memberName}';
	
		likeChk(like);

		var writeNum = 0;
		var login = '${login.memberName}';
	
		var projectNum = location.href;
		var index = projectNum.lastIndexOf("/") + 1;
		projectNum = projectNum.substr(index);

		getCommentList(projectNum);

		$("#btn-write").click(function(){
			
			if(login == ''){
				openLoginModal();
			} else if(login != ''){
				$(".btn-lg").eq(0).attr("data-target","#commentModal");
				$(".btn-lg").eq(0).click();
			}
			
		});

		$(".div_radio-option").click(function(){

			categoryCssInit();
			
			var index = $(this).index();
			commentCataegoryChk(index);
			
		});
		
		$("#comment-textarea").on("focus", function(){
			$("#comment-textarea").css("border","1px solid #00b2b2");
		});

		$("#btn_comment-wrtie").click(function(){
			$("#comment-frm").submit();
		});

		function commentCataegoryChk(index){
			$(".comment-category").eq(index).prop("checked", true);
			$(".div_radio-option").eq(index).css("border","2px solid #6799FF");
		}

		function categoryCssInit(){
			$(".div_radio-option").css("border","1px solid #EAEAEA");
		}
		
		function getCommentList(projectNum){

			$.ajax({
				url:"/comu/list",
				type:"get",
				data:{
					tmpNum:projectNum
				},
				success: function(data){

					$(".div_comment-list").empty();
					$(".div_comment-list").append(data);

					$(".btn_comment-reply").click(function() {
						writeNum = $(this).attr("title");
						replyShow(writeNum);
					});
					
				}
				
			});
			
		}
		
		// commet의 댓글을 보여주는 함수
		function replyShow(writeNum){

			var replyClassName = ".reply-" + writeNum;
			var show = $(replyClassName).css("display");

			if(show == 'none'){
				
				$(replyClassName).css("display","block");
				getReplyList(writeNum, replyClassName);

				show = true;
				
			} else {

				$(replyClassName).css("display","none");
				show = false;						

			}
			
		}

		function getReplyList(writeNum, replyClassName){

			$.ajax({
				url:"/comu/reply",
				type:"get",
				data:{
					writeNum:writeNum
				},
				success: function(data){

					$(replyClassName).empty();
					$(replyClassName).append(data);

					$(".reply-txt").on( "focus" ,function(){

						if(login == ''){
							openLoginModal();
							$(this).attr("readonly", true);
						} else if (login != ''){
							$(this).css("height","8.2rem");
							$(this).attr("readonly", false);
						}
						
					});
					
					$(".reply-txt").on( "focusout" ,function(){
						$(this).css("height", "4.2rem");
					});

					$(".reply-btn").click(function(){

						var index = $(this).attr("title");
						index = "#reply-" + index;

						var replyTxt = $(index).val().length;
						
						if(replyTxt <= 1){
							alert("댓글을 두 글자 이상 입력해주세요.");
						} else {
							$("#hidden_funding-num").val(projectNum);
							$("#reply-frm").submit();
						}
						
					});
					
				}
			});
			
		}
	
	</script>

</html>