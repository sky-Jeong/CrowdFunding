/**
 * purchase 단계별 상단 동그라미 표기를 위한 이벤트 
 */

var url = location.href;

if(url.includes('step1')){
	$(".ol_step").children('li').eq(0).attr("class","activate");
} else if (url.includes('step2')){
	$(".ol_step").children('li').eq(1).attr("class","activate");
} else if (url.includes('step3')){
	$(".ol_step").children('li').eq(2).attr("class","activate");
}