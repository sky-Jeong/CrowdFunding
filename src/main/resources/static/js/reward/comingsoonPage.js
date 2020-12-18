/**
 * 
 */

var categoryNum = 0;
getRewardList();

function getRewardList(){

	$.ajax({
		url:"/funding/comingsoon/list",
		type:"get",
		data:{
			rewardPage:rewardPage
		},
		success:function(data){
			
			$("#comingsoon-list").append(data);
			
			if($(".hasNextChk").eq(rewardPage).attr("title") == 'false'){
				$("#btn__show-more").css("visibility","hidden");
			} else {
				$("#btn__show-more").css("visibility","visible");
			}
			
		}
	});
	
}