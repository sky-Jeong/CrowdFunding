/**
 * 
 */

	
var pathName = location.pathname;
pathName = pathName.substr(pathName.lastIndexOf("/",15)+1);

if(pathName.includes('main')){
	$(".funding--category").eq(0).css("border-bottom","3px solid #00c4c4");
	$(".funding--category").eq(0).css("box-sizing","border-box");
} else if(pathName.includes('policy')){
	$(".funding--category").eq(1).css("border-bottom","3px solid #00c4c4");
	$(".funding--category").eq(1).css("box-sizing","border-box");
} else if(pathName.includes('news')){
	$(".funding--category").eq(2).css("border-bottom","3px solid #00c4c4");
	$(".funding--category").eq(2).css("box-sizing","border-box");
} else if(pathName.includes('community')){
	$(".funding--category").eq(3).css("border-bottom","3px solid #00c4c4");
	$(".funding--category").eq(3).css("box-sizing","border-box");
} else if(pathName.includes('surporter')){
	$(".funding--category").eq(4).css("border-bottom","3px solid #00c4c4");
	$(".funding--category").eq(4).css("box-sizing","border-box");
} 