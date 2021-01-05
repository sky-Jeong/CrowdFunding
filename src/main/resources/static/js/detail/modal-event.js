/**
 * 
 */

function openLoginModal(){
	$(".btn-lg").eq(0).attr("data-target","#myModal");
	$(".btn-lg").eq(0).click();
}

$("#btn_login-yes").click(function(){
	location.href = "/member/login";
});