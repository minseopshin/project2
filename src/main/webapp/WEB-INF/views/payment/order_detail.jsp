<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#order_detail {width:1500px; text-align:center}
	#order_detail .detail1 {display:inline-block; float:left; width:150px; height:30px;}
	#order_detail .detail2 {display:inline-block; float:left; width:218px; height:25px; padding-top:10px}
	#order_detail .detail3 {display:inline-block; float:left; width:218px; height:45px; padding-top:35px; padding-bottom:5px}
</style>
</head>

<body>
	<div id="order_detail">
		<div style="padding-top:100px"><h3>주문내역</h3></div>
		<div style="text-align:center; display:inline-block">
		<c:forEach var="pdto1" items="${plist1}">
			<div style="display:inline-block; border-bottom:3px solid #FF9436; width:1100px;">
				<div class="detail1" style="font-size:30px; width:792px; padding-top:20px; text-align:left">${pdto1.orderday}</div>
				<div class="detail1" style="font-size:10px; padding-top:33px; height:15px; text-align:right;">주문번호 : ${pdto1.order_num }</div>
				<div class="detail1" style="font-size:13px; padding-top:30px; text-align:center; height:20px;"><a href="order_detail_detail?order_num=${pdto1.order_num}&orderday=${pdto1.orderday}">상세정보 > </a></div>
			</div>
			<div style="display:inline-block; width:1100px; text-align:center; border-bottom:1px solid black;">
				<div class="detail2">상품사진</div>
				<div class="detail2" style="width:490px">상품이름</div>
				<div class="detail2" style="width:80px">개수</div>
				<div class="detail2" style="width:165px">상품가격</div>
				<div class="detail2" style="width:135px">주문현황</div>
			</div>
			
			<c:forEach var="pdto2" items="${plist2}">
				<c:if test="${pdto1.orderday == pdto2.orderday and pdto1.order_num == pdto2.order_num}">
					<div style="width:1100px; text-align:center;display:inline-block;border-bottom:1px solid black;" >
						<div class="detail3" style="padding-top:0px; height:80px"><img src="${pdto2.prd_img}" style="width:80px; height:80px"></div>
						<div class="detail3" style="width:490px">${pdto2.prd_name }</div>
						<div class="detail3" style="width:80px">${pdto2.num}</div>
						<div class="detail3" style="width:165px">${pdto2.p}</div>
						<c:if test="${pdto2.state == 0}">
							<div class="detail3" style="width:135px">입금 전</div>
						</c:if>
						<c:if test="${pdto2.state == 1}">
							<div class="detail3" style="width:135px">임금 완료</div>
						</c:if>
						<c:if test="${pdto2.state == 2}">
							<div class="detail3" style="width:135px">발송 준비</div>
						</c:if>
						<c:if test="${pdto2.state == 3}">
							<div class="detail3" style="width:135px">발송 완료</div>
						</c:if>
						<c:if test="${pdto2.state == 4}">
							<div class="detail3" style="width:135px">배송 중</div>
						</c:if>
						<c:if test="${pdto2.state == 5}">
							<div class="detail3" style="width:135px">배송 완료</div>
						</c:if>
					</div>
				</c:if>
			</c:forEach>
		</c:forEach>	
		</div>
		<div style="height:30px; padding-top:20px">
			<c:if test="${pagestart != 1}">
				<a href="order_detail?page=${pagestart-1}"> << </a>
			</c:if>
			<c:if test="${page != 1}">
				<a href="order_detail?page=${page-1}"> < </a>
			</c:if>
			<c:forEach var="i" begin="${pagestart}" end="${pageend}">
				<c:if test="${page == i}">
					<span style="color:red">${i}</span>
				</c:if>
				<c:if test="${page != i}">
					<a href="order_detail?page=${i}">${i}</a>
				</c:if>
			</c:forEach>
			<c:if test="${page != pagecnt}">
				<a href="order_detail?page=${page+1}"> > </a>
			</c:if>
			<c:if test="${page != pagecnt}">
				<a href="order_detail?page=${pageend +1}"> >></a>
			</c:if>
		</div>
	</div>
</body>
</html>