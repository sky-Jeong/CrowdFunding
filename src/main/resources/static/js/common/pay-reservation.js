/**
 * iamport pay reservation
 */
		
var IMP = window.IMP; // 생략해도 괜찮습니다.
IMP.init("imp35382026"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
  
// 정기결제 빌링키 발급
function payReservation(){

	var payDate = '${voList.payDate}';
	payDate = new Date(payDate).getTime();
	
	var buyer_name = $("#buyer-name").val();
	var buyer_tel = $("#buyer-tel").val();
	var buyer_addr = $("#doro-addr").val() + " " + $("#detail-addr").val();
	var buyer_postcode = $("#buyer-postcode").val();

	var randomNum = Math.floor( Math.random() * (10000 - 1) + 1 ) + 1;
	var merchant_uid = 'merchant_' + new Date().getTime();
	var customer_uid = '${login.memberNum}' + "_" + randomNum;
	
	// IMP.request_pay(param, callback) 호출
	IMP.request_pay({ // param
		
		pg: "jtnet",
	    pay_method: "card", // "card"만 지원됩니다
	    merchant_uid: merchant_uid, // 빌링키 발급용 주문번호
	    customer_uid: customer_uid, // 카드(빌링키)와 1:1로 대응하는 값
	    name: "최초인증결제",
	    amount: 0, // 0 으로 설정하여 빌링키 발급만 진행합니다.
	    buyer_email: '${login.email}',
	    buyer_name: buyer_name,
	    buyer_tel: buyer_tel,
	    buyer_addr: buyer_addr,
	    buyer_postcode: buyer_postcode
	    
		}, function (rsp) { // callback

	    	if (rsp.success) {
		    	
		    	$("#merchant_uid").val(merchant_uid);
		    	$("#customer_uid").val(customer_uid);

				$("#buy-frm").submit();
	      		
	    	} else {

				alert("빌링키 발급 실패");
	      		
	    	}
	    	
	});
	
}