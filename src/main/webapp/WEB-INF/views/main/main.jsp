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
		setInterval(function(){
			$(".img").eq(0).insertAfter($(".img").eq(6));
		},2000);
		$(window).load(function(){
			var color =['red','blue','green']
			var num1 = Math.floor(Math.random()*color.length);
			var num2 = Math.floor(Math.random()*color.length);
			$("#recom1").css("background",color[num1])
			$("#recom2").css("background",color[num2])
		
		});
	});
</script>
<style>
	#second {width:1500px; align:center; padding-top:20px}
	#second #second_img {width:1300px; height:600px; overflow:hidden; margin:auto; padding-top:20px;}
	#second img {width:1300px; height:600px;}
	#second .img_1 {width:180px; height:250px;}
	#second .img_2 {width:280px; height:250px;}
	#second #recom1 {width:250px; height:320px; display:inline-block; float:left; }
	#second #recom2 {width:250px; height:320px; display:inline-block; float:left; }
	#second .recom3 {display:inline-block; padding-top:110px; width:200px}
	#second .recom4 {display:inline-block; padding-top:140px}
	.abc {display:inline-block; float:left; padding-top:20px;height:40px;width:460px; text-align:left; padding-left:60px; font-size:30px;}
</style>
</head>
<body>

<div id="second">
	<div id="second_img">
		<img src="../resources/img/main/slide1.jpg" class="img"><img src="../resources/img/main/slide2.jpg" class="img"><img src="../resources/img/main/slide3.jpg" class="img"><img src="../resources/img/main/slide4.jpg" class="img"><img src="../resources/img/main/slide5.jpg" class="img"><img src="../resources/img/main/slide6.jpg" class="img"><img src="../resources/img/main/slide7.jpg" class="img">
	</div>
	<hr>
	<div style="text-align:center; padding-bottom:40px">
		<div style="font-size:30px; padding:30px">신상품</div>
		<c:forEach var="pdto1" items="${list1}">
			<div style="display:inline-block; margin:auto; text-align:center;">
			<a href="../product/readnum?id=${pdto1.id}&chk=1&fb=0">
				<img src="${pdto1.prd_img}" class="img_1"> 
			</a> <hr>
				<div style="width:200px; height:50px;">
					<a href="../product/readnum?id=${pdto1.id}&chk=1&fb=0">${pdto1.prd_name}</a>
				</div>
				<span>${pdto1.price} 원</span>
			</div> 
		</c:forEach>
	</div>
	<hr>
	<div style="text-align:center; padding-bottom:40px">
		<div style="font-size:30px; padding:30px">현재인기</div>
		<c:forEach var="pdto2" items="${list2}">
		<div style="display:inline-block; margin:auto; text-align:center;">
		<a href="../product/readnum?id=${pdto2.id}&chk=1&fb=0">
			<img src="${pdto2.prd_img}" class="img_1"> 
		</a> <hr>
		<div style="width:200px; height:50px;">
			<a href="../product/readnum?id=${pdto2.id}&chk=1&fb=0">${pdto2.prd_name}</a>
		</div>
		<span>${pdto2.price} 원</span>
		</div> 
		</c:forEach>
	</div>
	<hr>
	<div style="text-align:center; padding-bottom:40px">
		<div style="font-size:30px; padding:30px">운영자추천</div>
		<div style="width:1350px; display:inline-block; text-align:center;">
		<div style="width:1110px; display:inline-block; height:60px;border-bottom:3px solid #FF9436">
			<div class="abc" >${a2}</div>
			<div class="abc" style=" text-align:right; padding-right:50px; padding-top:35px; font-size:15px; height:25px"><a href='../product/plist2?category1=${a1}&category2=${a2}'>더보기 ></a></div>
		</div>
		<div>
		<c:forEach var="pdto3" items="${list3}">
			<div style="display:inline-block; text-align:center; padding-top:30px;">
			<a href="../product/readnum?id=${pdto3.id}&chk=1&fb=0">
				<img src="${pdto3.prd_img}" class="img_1">
			</a>  <hr>
			
			 <div style="width:200px; height:50px;">
			 	<a href="../product/readnum?id=${pdto3.id}&chk=1&fb=0">${pdto3.prd_name}</a>
			 </div>
			<span>${pdto3.price}</span>
			</div> 
		</c:forEach>
		</div>
		</div>
	</div>
	<hr>
	<div style="text-align:center; padding-bottom:40px">
		<div style="font-size:30px; padding:30px">운영자추천</div>
		<div style="width:1110px; display:inline-block; height:60px;border-bottom:3px solid #FF9436">
			<div class="abc" >${b2}</div>
			<div class="abc" style=" text-align:right; padding-right:50px; padding-top:35px; font-size:15px; height:25px"> <a href='../product/plist2?category1=${b1}&category2=${b2}'>더보기 ></a></div>
		</div>
		<div style="width:1350px; display:inline-block; text-align:center;">
		<c:forEach var="pdto4" items="${list4}">
			<div style="display:inline-block; text-align:center; padding-top:30px;">
			<a href="../product/readnum?id=${pdto4.id}&chk=1&fb=0">
				<img src="${pdto4.prd_img}" class="img_1"> 
			</a> <hr>
			 <div style="width:200px; height:50px;">
			 	<a href="../product/readnum?id=${pdto4.id}&chk=1&fb=0">${pdto4.prd_name}</a>
			 </div>
			<span>${pdto4.price }</span>
			</div> 
		</c:forEach>
		
		</div>
	</div>
	<hr>
	
	<div style="text-align:center; padding-bottom:40px">
		<div style="font-size:30px; padding:30px">쿠폰</div>
		<c:forEach var="edto" items="${list5}">
		<div style="display:inline-block; margin:auto; text-align:center;">
		<a href="../event/coupon">
			<img src="../resources/event/${edto.coupon_img}" class="img_2"> 
		</a> <hr>
			<span> <a href="../event/coupon">${edto.name }</a></span> 
		</div> 
		</c:forEach>
	</div>
	<hr>
	<div style="text-align:center; padding-bottom:40px">
		<div style="font-size:30px; padding:30px">이벤트</div>
		<div style="display:inline-block; margin:auto; text-align:center;">
			<a href="../event/firstbuy">
				<img src="../resources/event/11.png" style="width:330px; height:280px">
			</a>
		</div> 
		<div style="display:inline-block; margin:auto; text-align:center;">
			<a href="../event/coupon">
				<img src="../resources/event/22.png" style="width:330px; height:280px">
			</a>
		</div>
	</div>
	
</div>
</body>
</html>