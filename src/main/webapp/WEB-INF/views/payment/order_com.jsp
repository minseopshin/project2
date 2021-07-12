<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#order_com {width:1500px; text-align:center;}
	#order_com_title {padding-top:100px;}
	#order_com_text {display:inline-block; height:90px; width:1000px; padding-top:70px; text-align:center; border-top:3px solid #FF9436; border-bottom:3px solid #FF9436}
	.order_com_menu1 {display:inline-block; width:120px; height:40px; padding-top:20px; float:left; border:1px solid black}
	.order_com_menu2 {display:inline-block; width:600px; height:40px; padding-top:20px; float:left; border:1px solid black}
</style>
</head>
<body>
<div id="order_com">
	<div id="order_com_title"><h3>주문완료</h3></div>
	<div id="order_com_text">주문이 성공적으로 완료되었습니다.</div>
	<div style="text-align:center; display:inline-block; width:1100px;">
		<div style="width:800px; padding-top:30px; display:inline-block;">
			<div class="order_com_menu1">주문번호</div><div class="order_com_menu2">${pdto.order_num}</div>
			<div class="order_com_menu1">결제자</div><div class="order_com_menu2">${mdto.name}</div>
		<c:if test="${pdto.payment_method1 == 'card'}">
			<div class="order_com_menu1">결제수단</div><div class="order_com_menu2">신용카드</div>
		</c:if>
		<c:if test="${pdto.payment_method1 == 'kakao'}">
			<div class="order_com_menu1">결제수단</div><div class="order_com_menu2">카카오페이</div>
		</c:if>
		<c:if test="${pdto.payment_method1 == 'toss'}">
			<div class="order_com_menu1">결제수단</div><div class="order_com_menu2">토스</div>
		</c:if>
		<c:if test="${pdto.payment_method1 == 'mobile'}">
			<div class="order_com_menu1">결제수단</div><div class="order_com_menu2">휴대폰</div>
		</c:if>
		<c:if test="${pdto.payment_method1 == 'account'}">
			<div class="order_com_menu1">결제수단</div><div class="order_com_menu2">무통장입금</div>
			<div class="order_com_menu1">입금계좌</div>
			<c:if test="${pdto.payment_method2 == 'kb'}">
				<div class="order_com_menu2">국민 11111111111</div>
			</c:if>
			<c:if test="${pdto.payment_method2 == 'hana'}">
				<div class="order_com_menu2">하나 11111111111</div>
			</c:if>
			<c:if test="${pdto.payment_method2 == 'shinhan'}">
				<div class="order_com_menu2">신한 11111111111</div>
			</c:if>
			<c:if test="${pdto.payment_method2 == 'nh'}">
				<div class="order_com_menu2">농협 11111111111</div>
			</c:if>
			<div class="order_com_menu1">입금기한</div><div class="order_com_menu2">${payment_day}</div>
		</c:if>
			<div class="order_com_menu1">결제가격</div><div class="order_com_menu2">${pdto.price} 원</div>
		</div>
	</div>
	<div style="display:inline-block; width:1100px; padding-top:30px; padding-bottom:50px">
		<input type="button" value="주문상세보기" style="width:150px; height:50px; background:#FF9436; border:none"onclick="location='../payment/order_detail_detail?order_num=${pdto.order_num}&orderday=${pdto.orderday}'">
		<input type="button" value="메인페이지로" style="width:150px; height:50px; background:#FF9436; border:none"onclick="location='../main/main'">
		
	</div>
</div>
</body>
</html>