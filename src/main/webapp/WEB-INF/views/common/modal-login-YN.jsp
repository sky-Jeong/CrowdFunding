<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" id="btn_modal"></button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
	
	<div class="modal-dialog">
	
	    <!-- Modal content-->
		<div class="modal-content">
			
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">로그인 필요</h4>
			</div>
			
			<div class="modal-body">
				<p>로그인이 필요합니다. 로그인하시겠습니까?</p>
			</div>
	      
			<div class="modal-footer">
				<button type="button" class="btn btn-default" id="btn_login-no" data-dismiss="modal">아니오</button>
				<button type="button" class="btn btn-default" id="btn_login-yes" data-dismiss="modal">로그인하기</button>
			</div>
	    
	    </div>

	</div>

</div>
		
<!-- Modal -->
<div id="commentModal" class="modal fade" role="dialog">
	
	<div class="modal-dialog">
	
	    <!-- Modal content-->
		<div class="modal-content">
			
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h3 class="modal-title" style="padding-left:15px;">글 남기기</h3>
			</div>
			
			<div class="modal-body">
			
				<div class="modal-body-header">
					<div>
						응원∙의견∙체험 리뷰를 남겨주세요.<br>
						메이커의 답변이 필요한 문의 글은 ‘메이커에게 문의하기’를 이용해야 답변을 받을 수 있습니다.
					</div>
				</div>
				
				<form action="/comu/comment?projectNum=${info.num}" method="post" id="comment-frm">
					
					<input type="hidden" name="step" value="0">
					
					<div class="div_comment-option">
					
						<div class="div_radio-option">
							<input class="comment-category" type="radio" name="category" value="C"><span class="option_name">응원</span>
							<span class="option_info">메이커를 응원하고 싶어요.</span>
						</div>
					
						<div class="div_radio-option">
							<input class="comment-category" type="radio" name="category" value="O"><span class="option_name">의견</span>
							<span class="option_info">프로젝트에 관한 의견을 남기고 싶어요.</span>
						</div>
						
						<div class="div_radio-option">
							<input class="comment-category" type="radio" name="category" value="R"><span class="option_name">체험 리뷰</span>
							<span class="option_info">오프라인 체험 리뷰를 남기고 싶어요.</span>
						</div>
					
					</div>
					
					<div>
					
						<textarea name="contents" id="comment-textarea" placeholder="메이커에게 응원∙의견∙체험 리뷰 메시지를 남겨주세요."></textarea>
						<div class="warning-info">
							<div>
								최근 메이커 또는 제3자에 대한 허위사실 유포, 비방 목적의 댓글로 인해 당사자간 법적분쟁이 발생한 사례가 증가하고 있습니다. 악의적 댓글 작성자는 명예훼손, 모욕 등으로 법적 책임을 부담하게 될 수 있다는 점을 유의하여 주시기 바랍니다.
							</div>
						</div>
						
					</div>
											      
					<div class="modal-footer">
						<button type="submit" class="btn btn-default" id="btn_comment-wrtie" data-dismiss="modal">등록</button>
					</div>
				
				</form>
				
			</div>
	    
	    </div>

	</div>

</div>