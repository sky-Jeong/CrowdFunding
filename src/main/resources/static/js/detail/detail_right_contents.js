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
	var productNum = $(this).attr("title");
	alert("상품번호: " + productNum+ ", 주문 페이지로 이동될 예정입니다.");
	//location.href = "";
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