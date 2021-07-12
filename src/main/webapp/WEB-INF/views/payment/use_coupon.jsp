<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		var price = opener.$("#total_price1").text()
		$("#coupon4").text(price)
		$("#coupon5").text(0)
		$("#coupon6").text(price - 0)
		
		<c:forEach var="cdto" items="${clist}">
			var id = ${cdto.id}
			var dc = ${cdto.dc}
			<c:if test="${cdto.state == 1}">
				var dc_price = price * dc;
				$("#coupon_dc"+id).text(dc_price);
			</c:if>
			<c:if test="${cdto.state != 1}">
				$("#coupon_dc"+id).text(parseInt(dc));
			</c:if>
		</c:forEach>
		
		$("input:radio[name=coupon_chk]").change(function(){
			var chk_id = $("input:radio[name=coupon_chk]:checked").val()
			var chk_dc = $("#coupon_dc"+chk_id).text();
			var cou4 = $("#coupon4").text()
			$("#coupon5").text(chk_dc)
			$("#coupon6").text(cou4 - chk_dc)
		})
		
	});

	function close1()	{
		var chk_id2 = $("input:radio[name=coupon_chk]:checked").val()
		var text2 = $("#coupon_dc"+chk_id2).text()
		var text3 = $("#coupon6").text()
		var coupon_id = $("#coupon_id").val();
		opener.document.getElementById("coupon_id").value = coupon_id;
		opener.document.getElementById("coupon_con1").value = text2;
		opener.document.getElementById("coupon_con2").innerText = text2;
		opener.document.getElementById("total_p").value = text3;
		opener.document.getElementById("submit").value = text3+" 원 결제하기";
		opener.document.getElementById("submit_pay").value = text3+" 원 결제하기";
		opener.document.getElementById("total_price4").innerText = text3;
		
		window.close();
	}
</script>
<style>
	#coupon {width:580px;}
	.coupon1 {height:50px; border-bottom:1px solid black}
	.coupon2 {display:inline-block; float:left; width:140px; height:30px; padding-top:20px;}
	.coupon3 {display:inline-block; float:left; width:32.9%; padding-top:7px; height:20px;border:1px solid black}
</style>
</head>
<body>
	<div id="coupon">
		<div style="text-align:center"><h3>쿠폰</h3></div>
		<div class="coupon1" style="height:30px; text-align:center">
			<div class="coupon2" style="height:23px; width:432px; padding-top:7px;">쿠폰</div>
			<div class="coupon2" style="height:23px; padding-top:7px;">할인</div>
		</div>
		<div >
			<c:forEach var="cdto" items="${clist}">
			<div class="coupon1">
				<input type="hidden" value="${cdto.couponid}" id="coupon_id">
				<div class="coupon2" style="width:30px; text-align:right"><input type="radio" name="coupon_chk" value="${cdto.id}"></div>
				<div class="coupon2" style="width:390px; padding-left:10px">${cdto.name}</div>
				<div class="coupon2" id="coupon_dc${cdto.id}" style="text-align:center"></div>
			</div>
			</c:forEach>
			<div class="coupon1" style="text-align:center; padding-top:10px;">
				<div class="coupon3" id="coupon3">합계</div>
				<div class="coupon3">할인</div>
				<div class="coupon3">할인후 가격</div>
			</div>
			<div>
				<div class="coupon3" id="coupon4">합계</div>
				<div class="coupon3" id="coupon5">할인</div>
				<div class="coupon3" id="coupon6">할인후 가격</div>
			</div>
			<div style="text-align:center">
				<input type="button" value="적용하기" onclick="return close1()">	
			</div>
		</div>
	</div>
</body>
</html>