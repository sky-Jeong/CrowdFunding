/**
 * 
 */
var show = false;

$(".maker-info-show").click(function(){

	if(show == false){
		$(".maker-info__wrapper").css("display","none");
		$("#menu-icon").attr("class","glyphicon glyphicon-menu-down");
		show = true;
	} else {
		$(".maker-info__wrapper").css("display","grid");
		$("#menu-icon").attr("class","glyphicon glyphicon-menu-up");
		show = false;
	}
	
});

$(".reward-info").click(function(){
	if(login == ''){
		openLoginModal();
	} else {
		var productNum = $(this).attr("title");
		location.href = "/purchase/reward/step1/" + projectNum + "?productNum="+productNum;
	}
});

$(".reward-info").on("mouseover", function(){
	$(this).css("border","solid 3px #00c4c4");
	$(this).css("border-boxsizing"," border-box");
});

$(".reward-info").on("mouseleave", function(){
	$(this).css("border","1px solid #E0E0E0");
});		

$("#share_btn").click(function(){
	copyURL("http://localhost/funding/detail/main/"+projectNum);
});

function copyURL(url){
	
	var tmp = document.createElement("textarea");
	document.body.appendChild(tmp);

	tmp.value = url;
	tmp.select();
	
	document.execCommand("copy");
	document.body.removeChild(tmp);
	
	alert("URL이 복사되었습니다.");
	
}

 
$("#funding_btn").click(function(){
		
	if(login == ''){
		openLoginModal();
	} else {
		location.href = "/purchase/reward/step1/" + projectNum;
	}
});

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
	