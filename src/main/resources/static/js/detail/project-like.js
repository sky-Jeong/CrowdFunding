/**
 * 프로젝트 좋아요 누를 경우 발생하는 이벤트 
 */

$("#like_btn").click(function(){
	
	if(login == ''){
		openLoginModal();
	} else {
		if(like == 'true'){
			setLike(projectNum, -1);
		} else {
			setLike(projectNum, +1);
		}
	}
	
});

function likeChk(like){
	if(like == 'true'){
		$("#heart-icon").css("color","#FF5A5A");
	} else {
		$("#heart-icon").css("color","#DCDCDC");
	}
	
}

function setLike(projectNum, plus){
	
	$.ajax({
		url:"/like/save",
		type:"get",
		data:{
			projectNum:projectNum,
			like:plus
		},
		success:function(data){
			alert(data);
			location.reload();
		}
	})
	
}
	