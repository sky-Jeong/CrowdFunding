/**
 * 
 */

/*
	상단 카테고리 강조
*/
var pathName = location.pathname;
pathName = pathName.substr(pathName.lastIndexOf("/")+1);

if(pathName == 'main'){
	$(".funding--category").eq(0).css("font-weight","bold");
	$(".funding--category").eq(0).css("border-bottom","3px solid #212121");
	$(".funding--category").eq(0).css("box-sizing","border-box");
	$(".funding--category").eq(0).children("#menu").css("color","#212121");
} else if (pathName == 'category'){
	$(".funding--category").eq(1).css("font-weight","bold");
	$(".funding--category").eq(1).css("border-bottom","3px solid #212121");
	$(".funding--category").eq(1).css("box-sizing","border-box");
	$(".funding--category").eq(1).children("#menu").css("color","#212121");
} else if (pathName == 'comingsoon'){
	$(".funding--category").eq(2).css("font-weight","bold");
	$(".funding--category").eq(2).css("border-bottom","3px solid #212121");
	$(".funding--category").eq(2).css("box-sizing","border-box");
	$(".funding--category").eq(2).children("#menu").css("color","#212121");
}

/**
	페이지 설정
*/
var rewardPage = 0;
$("#btn__show-more").click(function(){
	setRewardPage();
})

function setRewardPage(){
	rewardPage++;
	getRewardList(categoryNum);
}