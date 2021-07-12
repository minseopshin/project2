<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(function(){
		$("#cardpay").click(function(){
			$("#account").css("display",'none')
			$("#mobile").css("display",'none')
			$("#card").css("display",'block')
			$("#card").css("height",'80px')
			$("#payment_method").css("height",'320px')
			
		});
		$("#accountpay").click(function(){
			$("#card").css("display",'none')
			$("#mobile").css("display",'none')
			$("#account").css("display",'block')
			$("#account").css("height",'80px')
			$("#payment_method").css("height",'320px')
		});
		$("#kakaopay").click(function(){
			$("#card").css("display",'none')
			$("#account").css("display",'none')
			$("#mobile").css("display",'none')
			$("#payment_method").css("height",'200px')
		});
		$("#tosspay").click(function(){
			$("#card").css("display",'none')
			$("#account").css("display",'none')
			$("#mobile").css("display",'none')
			$("#payment_method").css("height",'200px')
		});
		$("#mobilepay").click(function(){
			$("#card").css("display",'none')
			$("#account").css("display",'none')
			$("#mobile").css("display",'block')
			$("#mobile").css("height",'80px')
			$("#payment_method").css("height",'320px')
		});
		
		var price_total=0
		<c:forEach var="pdto" items="${plist}">
			var i = ${pdto.id}
			var price = $("#price_"+i).text();
			var num = $("#num_"+i).text();
			var a= price*num
			$(".total_price_"+i).text(a)
		price_total = price_total+a
		</c:forEach>
		$(".total_price1").text(price_total)
		$("#total_price1").text(price_total)
		
		
		var coupon = $(".coupon").text();
		var point = $(".point").text();
		$(".total_price").val(price_total-coupon-point);
		$(".total_price2").text(price_total-coupon-point);
		$(".total_price2").val(price_total-coupon-point);
		$(".total_price3").val(price_total-coupon-point+" 원 결제하기");
		
		
		$(window).scroll(function(){
			var top = $(window).scrollTop( )+100;
			$("#scroll").css("top",top);
			if (top >= 1950)	{
				$("#scroll").css("top",1950);
			}
			else if (top <=470)	{
				$("#scroll").css("top",470);
			}
		});
		$("input:radio[name=addr_select]").change(function(){
			var radio_val = $("input:radio[name=addr_select]:checked").val()
			 
			if(radio_val=="0"){
				$("#ship_2_name").text("${mdto.name}");				
				$("#ship_2_phone").text("${mdto.phone}");
				var addr = "${mdto.addr1}${mdto.addr2}${mdto.addr3}";
				$("#ship_2_addr").text(addr);
			}
			else	{
				var chk = new XMLHttpRequest();
				chk.open("get","addr_list_chk?id="+radio_val);
				chk.send();
				chk.onreadystatechange=function()	{
					if(chk.readyState == 4)	{
						var text = decodeURI(chk.responseText)
						var detail_list = text.split('/')
						var name = detail_list[0]
						var phone = detail_list[1]
						var addr1 = detail_list[2]
						var addr2 = detail_list[3]
						var addr3 = detail_list[4]
						var addr = addr1+" "+addr2+" "+addr3;
						$("#ship_2_name").text(name);
						$("#ship_2_phone").text(phone);
						$("#ship_2_addr").text(addr);
					}
				}
			}
		
			
		});
		
	});
	function submit2()	{
		if ($("input:radio[name=pay]").is(":checked"))	{
			if($("input:radio[name=pay]:checked").val() == 'card')	{
				if($("select[name=method2_card]").val() == '0')	{
					alert("카드를 선택해주세요.")
					return false
				}
				else	{
					if ($("#checkbox").is(":checked"))	{
						return true
					}
					else	{
						alert("개인정보 수집/제공 동의해주세요")
						return false
					}
				}	
			}
			if($("input:radio[name=pay]:checked").val() == 'mobile')	{
				if($("select[name=method2_mobile]").val() == '0')	{
					alert("통신사를 선택해주세요.")
					return false
				}
				else	{
					if ($("#checkbox").is(":checked"))	{
						return true
					}
					else	{
						alert("개인정보 수집/제공 동의해주세요")
						return false
					}
				}				
			}
			if($("input:radio[name=pay]:checked").val() == 'account')	{
				if($("select[name=method2_account]").val() == '0')	{
					alert("은행를 선택해주세요.")
					return false
				}
				else	{
					if ($("#checkbox").is(":checked"))	{
						return true
					}
					else	{
						alert("개인정보 수집/제공 동의해주세요")
						return false
					}
				}				
			}
			if($("input:radio[name=pay]:checked").val() == 'kakao')	{
					if ($("#checkbox").is(":checked"))	{
						return true
					}
					else	{
						alert("개인정보 수집/제공 동의해주세요")
						return false
					}
			}
			if($("input:radio[name=pay]:checked").val() == 'toss')	{
				if ($("#checkbox").is(":checked"))	{
					return true
				}
				else	{
					alert("개인정보 수집/제공 동의해주세요")
					return false
				}
			}		
		}
		else	{
			alert("결제수단을 선택해주세요")
			return false
		}
	}
	function addr2()	{
		window.open("../addr/register_addr","주소등록","width=815px, height=500")
	}
	function coupon1()	{
		window.open("use_coupon","쿠폰사용","width=600, height=500")
	}
</script>
<style>
	#payment {width:1500px; padding-top:100px;}
	#payment #title {text-align:center; height:100px}
	#payment .payment_name {font-size:25px; padding-bottom:8px;border-bottom:3px solid #FF9436; width:1100px}
	#payment .order_1 {display:inline-block; width:230px; float:left; height:60px; padding-top:40px; }
	#payment .order_2 {display:inline-block; width:280px; float:left; height:30px; padding-top:10px; }
	#payment .order_3 {display:inline-block; width:15px; float:left; height:30px; padding-top:10px;}
	#payment #order_prd1 {width:1100px; height:40px;border-bottom:1px solid black; text-align:center}
	#payment #order_prd2 {width:1100px; height:100px;border-bottom:1px solid black; text-align:center}
	#payment .info {height:45px; width:1100px; border-bottom:1px solid gray; }
	#payment .pay {width:218px; display:inline-block; padding-top:18px; padding-bottom:15px; float:left;text-align:center;}
	#payment #card {text-align:center; display:none; padding-top:50px; height:70px; width:1100px; border-bottom: 1px solid #EDEDED}
	#payment #account {text-align:center; display:none; padding-top:50px; height:70px; width:1100px; border-bottom: 1px solid black}
	#payment #mobile {text-align:center;  display:none; padding-top:50px; height:70px; width:1100px; border-bottom: 1px solid black}
	#payment #submit_pay {text-align:center; width:500px; height:70px; background:#FF9436; border:none}
	#payment .ship_1 {float:left; width:700px; height:30px; padding-left:20px; padding-top:15px;}
	#payment .ship_2 {float:left; text-align:center; width:200px; height:30px; padding-top:15px; }
	#payment .ship_3 {height:30px; padding-top:15px; width:890px; padding-left:10px}
	#payment .ship_select {padding-top:20px}
	#payment .addr_select {padding-right:20px}
	#payment #infor {padding-right:50px; display:inline-block;}
	#payment .use_coupon {display:inline-block;  height:35px; float:left; padding-top:20px;}
	#payment #payment_coupon {width:1100px; height:250px}
	#payment .pay_detail_info {display:inline-block;}
	#scroll { position:absolute;left:1130px; top:500px; width:360px; border:1px solid gray; text-align:center;}
	#scroll .price_total{float:right; padding-right:10px;}
	#scroll .coupon{float:right; padding-right:10px;}
	#scroll .point{float:right; padding-right:10px;}
	#scroll .scroll_prd {display:inline-block; float:left; height:18px;}
	#scroll .scroll_price1 {height:30px; width:360px; text-align:right; }
	#scroll .scroll_price2 {display:inline-block; width:220px; float:left;padding-top:5px;}
	#scroll .scroll_price3 {display:inline-block; width:10px; float:left; padding-top:5px;}
	#scroll .scroll_price4 {display:inline-block; width:100px; float:left; padding-top:5px;}
	#scroll .scroll_price5 {display:inline-block; width:25px; float:left; text-align:center; padding-top:5px;}
	#scroll .scroll_price6 {display:inline-block; width:70px; float:left; padding-top:5px; border:1px solid black}
	#scroll #submit {padding:10px 20px; text-decoration: none; margin: 4px 2px;  cursor: pointer; display: inline-block;background:#FF9436; border:none}
</style>
</head>
<body>
	<form method="post" id="payment_form" action="payment_ok">
	<input type="hidden" value="" class="total_price" name="total_price" id="total_p">
	<c:forEach var="pdto" items="${plist}">
		<input type="hidden" value="${pdto.id}" name="pid">
		<c:if test="${num == 0 }">	
			<input type="hidden" value="${pdto.num}" name="pnum">
		</c:if>
		<c:if test="${num != 0 }">	
			<input type="hidden" value="${num}" name="pnum">
		</c:if>
	</c:forEach>
	<div id="payment">
		<div id="title"><h3>결제</h3><hr></div>
		<div class="payment_name">주문상품</div>
		<div id="order_prd1">
			<div class="order_2" style="width:772px;">상품</div>
			<div class="order_2" style="width:102px;">수량</div>
			<div class="order_2" style="width:102px;">개당 가격</div>
			<div class="order_2" style="width:102px;">가격</div>
		</div>
		<c:forEach var="pdto" items="${plist}">
		<div id="order_prd2">
			<div class="order_1" style="width:200px; height:90px; padding-top:10px;"><img src="${pdto.prd_img}" style="width:80px; height:80px"></div>
			<div class="order_1" style="width:570px">${pdto.prd_name}</div>
			<c:if test="${num != 0 }">	
				<div class="order_1" id="num_${pdto.id}" style="width:102px">${num}</div>
			</c:if>
			<c:if test="${num == 0 }">	
				<div class="order_1" id="num_${pdto.id}" style="width:102px">${pdto.num}</div>
			</c:if>
			<div class="order_1" id="price_${pdto.id}" style="width:60px; padding-left:15px">${pdto.price}</div>
			<div class="order_1" style="width:25px;text-align:left">원</div>
			<div class="order_1" id="price_${pdto.id}" style="width:60px; padding-left:15px"><span class="total_price_${pdto.id}"></span></div>
			<div class="order_1" style="width:25px; text-align:left">원</div>
		</div>
		</c:forEach>
		<div style="text-align:right; height:100px;width:1100px; padding-top:15px;">
			<div class="order_3" style="width:930px">합 계</div>
			<div class="order_3">:</div> 
			<div class="order_3" style="width:92px; padding-right:5px"><span id="total_price1">price</span></div>
			<div class="order_3" style="width:50px; text-align:left">원</div>
		</div>
		<div style="height:320px;">
			<div class="payment_name">결제자정보</div>
			<div class="info"><div class="ship_2">이름</div><div class="ship_1">${mdto.name}</div></div>
			<div class="info"><div class="ship_2">휴대폰</div><div class="ship_1">${mdto.phone}</div></div>
			<div class="info"><div class="ship_2">이메일</div><div class="ship_1">${mdto.email}</div></div>
		</div>
		<div style="height:390px;">
			<div class="payment_name">배송지정보</div>
			<div style="border-bottom:1px solid #EDEDED; width:1100px; height:100px">
				<div class="ship_2" style="padding-top:37px; height:55px; ">배송지선택</div>
				<div style="display:inline-block; height:110px">
					<div class="ship_3" style="border-bottom:1px solid #EDEDED;">
						<input type="radio" value="0" name="addr_select" class="addr_select" checked>기본배송지
					</div>
					<div class="ship_3">
						<c:forEach var="adto" items="${alist}">
						<div style="display:inline-block;">
							<input type="radio" value="${adto.id}" name="addr_select" class="addr_select"> 
							<span>${adto.name}</span>
							&nbsp; &nbsp;
						</div>
						</c:forEach>
						<input type="button" value="배송지등록" onclick="addr2()">
					</div>
				</div>
			</div>
			<div class="info"><div class="ship_2">이름</div><div class="ship_1" id="ship_2_name">${mdto.name}</div></div>
			<div class="info"><div class="ship_2">휴대폰</div><div class="ship_1" id="ship_2_phone">${mdto.phone}</div></div>
			<div class="info"><div class="ship_2">주소</div><div class="ship_1" id="ship_2_addr">${mdto.addr1} ${mdto.addr2} ${mdto.addr3}</div></div>
		</div>
		<div id="payment_coupon">
			<div class="payment_name">할인</div>
			<div style="height:100px; width:1100px; border-bottom:1px solid black">
				<div style="width:1060px; padding:10px 20px; border-bottom: 1px solid gray">쿠폰할인</div>
				<div>
					<input type="hidden" value="0" name="coupon_id" id="coupon_id">
					<div class="use_coupon" style="width:200px; text-align:right;">상품/주문쿠폰</div>
					<div class="use_coupon" style="width:220px; text-align:center"><input type="text" value="0" id="coupon_con1" style="width:170px; text-align:right" disabled="disabled"> 원 </div> 
					<div class="use_coupon" style="widht:100px; padding-right:10px"><input type="button" value="쿠폰사용" onclick="coupon1()"> </div>
					<div class="use_coupon" style="width:300px">(보유 :<span> ${coupon_cnt}장</span>)</div> 
				</div>
			</div>
		</div>
		<div id="payment_method" style="height:200px">
			<div class="payment_name">결제수단</div>
			<div style="width:1100px; height:50px; border-bottom:1px solid black">
				<div class="pay"><input type="radio" value="card" name="pay" id="cardpay">신용카드</div>
				<div class="pay"><input type="radio" value="account" name="pay" id="accountpay">무통장입금</div>
				<div class="pay"><input type="radio" value="kakao" name="pay" id="kakaopay">카카오페이</div>
				<div class="pay"><input type="radio" value="toss" name="pay" id="tosspay">토스</div>
				<div class="pay"><input type="radio" value="mobile" name="pay" id="mobilepay">휴대폰</div>
			</div>
			<div>
			<div id="card">
				<div class="pay_detail_info">카드선택</div>
				<div class="pay_detail_info" style="width:100px; text-align:left; padding-left:5px">
					<select name="method2_card">
						<option value="0">선택</option>
						<option value="kb">국민</option>
						<option value="shinhan">신한</option>
						<option value="hana">하나</option>
					</select>
				</div>
				<div class="pay_detail_info" style="width:100px; text-align:right; padding-right:5px">할부기간</div>
				<div class="pay_detail_info">
					<select name="method3_card">
						<option value="0m">일시불</option>
						<option value="3m">3개월</option>
						<option value="6m">6개월</option>
					</select>
				</div>
			</div>
			<div id="account">
				<div class="pay_detail_info">은행</div>
				<div class="pay_detail_info">
					<select name="method2_account">
						<option value="0">선택</option>
						<option value="kb">국민은행</option>
						<option value="shinhan">신한은행</option>
						<option value="hana">하나은행</option>
						<option value="nh">농협</option>
					</select>
				</div>
			</div>
			<div id="mobile">
				<div class="pay_detail_info">통신사</div>
				<div class="pay_detail_info">
					<select name="method2_mobile">
						<option value="0">선택</option>				
						<option value="skt">SKT</option>
						<option value="kt">KT</option>
						<option value="hello">헬로모바일</option>
					</select>
				</div>
			</div>
		</div>
		</div>
		<div style="height:180px;">
			<div class="payment_name">개인정보 수집/제공</div>
			<div id="infor">
				<div style="padding-top:20px; padding-left:50px; font-size:18px;">
					<input type="checkbox" value="infor" id="checkbox">개인정보 수집/제공
				</div>
				<div style="padding-left:90px; padding-top:10px; font-size:13px;" >개인정보 수집 이용 및 처리 동의</div>
				<div style="padding-left:90px; padding-top:10px; font-size:13px;" >결제대행 서비스 약관 동의</div>
			</div>
		</div>
		<hr>
		<div style="text-align:center; padding-top:30px; padding-bottom:50px;">
			<input type="submit" id="submit_pay" class="total_price3" value="결제하기" onclick="return submit2()">
		</div>
	</div>
	<div id="scroll"> 
		<div style="height:50px; padding-top:3px; background:#FF9436; border-bottom:1px solid black"><h5>결제정보</h5></div>
		<div style="text-align:left">
			<div style="padding-bottom:8px; padding-top:5px">
				<div style="padding-left:8px">상품</div> 
				<c:forEach var="pdto" items="${plist}">
				<div style="padding:2px 2px; height:20px"> 
					<div class="scroll_prd" style="width:280px; text-align:right; padding-left:7px; overflow:hidden"> ${pdto.prd_name} </div>
					<div class="scroll_prd" style="padding-right:10px;">...</div> 
					<div class="scroll_prd" style="width:10px; text-align:center padding-left:5px"> ${pdto.num} </div> 
					<div class="scroll_prd" style="padding-left:5px">개</div>
				</div>
				</c:forEach>
				<div class="scroll_price1" style="padding-top:10px;">
				<div class="scroll_price2">총 상품가격</div><div class="scroll_price3"> : </div>
				<div class="scroll_price4"><span class="total_price1"> 0 </span></div>
				<div class="scroll_price5">원</div>
			</div>
			</div>
			<hr>
			<div class="scroll_price1">
				<div class="scroll_price2">쿠폰할인</div><div class="scroll_price3"> : </div>
				<div class="scroll_price4" id="coupon_con2">0</div>
				<div class="scroll_price5">원</div>
			</div>
			<div class="scroll_price1">
				<div class="scroll_price2">포인트사용</div><div class="scroll_price3"> : </div>
				<div class="scroll_price4">0</div>
				<div class="scroll_price5">원</div> 
			</div>
		</div>
		<hr>
		<div style="height:30px; padding-bottom:10px">
			<div class="scroll_price2" style="text-align:right">결제금액</div>
			<div class="scroll_price3" >:</div> 
			<div class="scroll_price4" style="text-align:right"><span class="total_price2" id="total_price4"></span></div> 
			<div class="scroll_price5">원</div>
		</div>
		<div><input type="submit" id="submit" class="total_price3" value="결제하기" onclick="return submit2()"></div>
	 </div>
	</form>
</body>
</html>