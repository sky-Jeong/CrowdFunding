/**
 * 
 */

var page = 0;
var size = 10;

var categoryName = "전체보기";
var categoryNum = 1;

var status = "";

getCategory(page);
getRewardList(categoryNum);

$("#status").on("change",function(){

	rewardPage=0;				
	status = $("#status").val();
	
	$("#reward-list").empty();
	getRewardList(categoryNum);
	
});

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