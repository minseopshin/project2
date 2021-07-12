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
		var basket_total = 0
		<c:forEach var="bdto" items="${list}">
		$(".basket_num_${bdto.id}").change(function(){
			var basket_num = $(".basket_num_${bdto.id}").val();
			var basket_price = ${bdto.price};
			var tt_price = basket_num*basket_price
		});
		</c:forEach>
		
		<c:forEach var="bdto" items="${list}">
			var bdto_id = ${bdto.id};
			var bdto_price = ${bdto.price};
			var bdto_num = ${bdto.num};
			var t_price = bdto_num * bdto_price;
			$(".t_price_"+bdto_id).text(t_price);
			basket_total = basket_total+t_price;
		</c:forEach>
		$("#basket_price_total").text(basket_total+" 원")
	});
	function basket_delete(id)	{
		location="basket_delete?id="+id;
		//alert(id)
	}
	function deleteall()	{
		location="basket_delete_all"
	}
	function selectall()	{
		$("input:checkbox[name=basket_check]").prop("checked",true);
	}
	function selectnot()	{
		$("input:checkbox[name=basket_check]").prop("checked",false);
	}
	function basket_payment_check()	{
		if($("input:checkbox[name=basket_check]").is(":checked"))	{
			return true
		}
		else {
			alert("결제하실 상품을 선택해주세요")
			return false
		}
	}
	function basket_num_p(id)	{
		var basket_num = $("#basket_num_"+id).text()
		if (basket_num == 1)	{
			var basket_num1 = 1;
		}
		else	{
			var basket_num1 = basket_num -1;
		}
		$("#basket_num_"+id).text(basket_num1)
		location="basket_num?id="+id+"&num="+basket_num1
	}
	function basket_num_m(id)	{
		var basket_num = parseInt($("#basket_num_"+id).text())
		if (basket_num == 20)	{
			var basket_num1 = 20;
		}
		else	{
			var basket_num1 = basket_num +1;
		}
		$("#basket_num_"+id).text(basket_num1)
		location="basket_num?id="+id+"&num="+basket_num1
	}
</script>
<style>
	#shopping_basket {width:1500px; text-align:center;}
	#basket1 {border-top:1px solid black; border-bottom:1px solid black; height:40px; padding-top:20px; width:1100px;  display:inline-block;}
	#basket2 {border-bottom:1px solid black; height:120px; padding-top:0px; width:1100px; display:inline-block;}
	.basket_top {display:inline-block;}
	.basket_delete {text-decoration:none; color:black}
	.basket1 {display:inline-block; float:left; }
	.basket2 {display:inline-block; height:60px; float:left; padding-top:50px;}
	#basket_price1 {width:1060px; display:inline-block; text-align:right; padding-right:40px; padding-top:10px}
	#basket_payment {height:60px; padding-top:40px;}
</style>
</head>
<body>
<div id="shopping_basket">
	<div style="height:80px; padding-top:100px"><h3>장바구니</h3></div>
	<div style="width:1100px; display:inline-block;">
	<div class="basket_top" style="float:left">
		<input type="button" value="전체선택" onclick="selectall()">
		<input type="button" value="전체해제" onclick="selectnot()">
	</div>
	<div class="basket_top" style="float:right"><input type="button" value="장바구니 비우기" onclick="deleteall()"></div>
	</div>
	<form method="post" action="payment?a=aa">
	<div id="basket1">
		<div class="basket1" style="width:770px;">상품</div>
		<div class="basket1" style="width:140px;">수량</div>
		<div class="basket1" style="width:90px;">개당 가격</div>
		<div class="basket1" style="width:90px; padding-left:5px">가격</div>
	</div>
	<c:forEach var="bdto" items="${list}">
	<input type="hidden" value="${bdto.id}" class="basket_id">
	<div id="basket2">
		<div class="basket2" style="width:70px"><a href="#" class="basket_delete" onclick="basket_delete(${bdto.id})">x</a></div>
		<div class="basket2" style="3width:20px">
			<input type="checkbox" value="${bdto.id}" name="basket_check">
		</div>
		<div class="basket2"style="width:200px; padding-top:10px; height:100px;"><img src="${bdto.prd_img}" style="width:100px; height:100px"></div>
		<div class="basket2"style="width:480px">${bdto.prd_name}</div>
		<div class="basket2" style="width:140px;">
			<input type="button" value="-" onclick="basket_num_p(${bdto.id})">
			<span id="basket_num_${bdto.id}">${bdto.num}</span>
			<input type="button" value="+" onclick="basket_num_m(${bdto.id})">
		</div>
		<div class="basket2" id="price_${bdto.id}" style="width:60px; padding-left:10px">${bdto.price}</div>
		<div class="basket2" style="">원</div>
		<div class="basket2" style="width:60px; padding-left:22px"><span class="t_price_${bdto.id}"></span></div>
		<div class="basket2" style="">원</div>
	</div>
	</c:forEach>
	
	<div id="basket_price1"><span>합 계</span> : <span id="basket_price_total"> 0 </span></div>
	<div id="basket_payment"><input type="submit" value="결제하기"onclick="return basket_payment_check()"></div>
	</form>
</div>
</body>
</html>