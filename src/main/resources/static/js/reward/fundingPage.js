/**
 * 
 */

var page = 0;
var size = 10;

var categoryName = "전체보기";
var rewardPage = 0;
var categoryNum = 1;

var status = "";
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

getCategory(page);
getRewardList(categoryNum);

$("#status").on("change",function(){

	rewardPage=0;				
	status = $("#status").val();
	
	$("#reward-list").empty();
	getRewardList(categoryNum);
	
});

$("#btn__show-more").click(function(){
	setRewardPage();
})

function setRewardPage(){
	rewardPage++;
	getRewardList(categoryNum);
}

function getRewardList(categoryNum){

	$.ajax({
		url:"/funding/list",
		type:"get",
		data:{
			rewardPage:rewardPage,
			categoryNum:categoryNum,
			status:status
		},
		success:function(data){
			
			$("#reward-list").append(data);
			
			if($(".hasNextChk").eq(rewardPage).attr("title") == 'false'){
				$("#btn__show-more").css("visibility","hidden");
			} else {
				$("#btn__show-more").css("visibility","visible");
			}
			
		}
	});
	
}

function setPage(cal){
	if(cal == 'plus'){
		page++;
	} else if (cal == 'minus'){
		page--;
	}
	getCategory(page);
}

function getCategory(page){
	$.ajax({
		url:"/category/list",
		type:"post",
		data:{
			page:page,
			size:size
		},
		success:function(data){
			
			$("#category-wrap").empty();
			$("#category-wrap").append(data);
			
			$(".main__a--category").click(function(){
				
				rewardPage=0;
				status = "";
				$("#status").val(status);
				
				categoryNum = $(this).attr("title");
				categoryName = $(this).attr("categoryName");
				$("#main__div--categoryName").text(categoryName);
				
				$("#reward-list").empty();
				getRewardList(categoryNum);
				
			});
			
		}
		
	})
}