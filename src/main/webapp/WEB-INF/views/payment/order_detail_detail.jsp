<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(function(){
		var a = 0;
		<c:forEach var="pdto" items="${plist}">
			var num = ${pdto.num};
			var price = ${pdto.p};
			var tt = num * price;
			a = a + tt
		</c:forEach>
		$("#detail7").text(a)
		<c:if test="${pdto.couponid == '0'}">
			$("#detail9").text("0");
		</c:if>
		<c:if test="${pdto.couponid != '0'}">
			var coupon_p = ${pdto.dc}
			var c_state = ${pdto.state}
			var prd_p = $("#detail7").text()
			if(c_state == 1)	{
				var dc_p = prd_p * coupon_p;
				$("#detail9").text(dc_p);		
			}
			else	{
				$("#detail9").text(coupon_p);
			}
		</c:if>
	});
</script>
<style>
	#order_detail_detail {width:1500px; text-align:center}
	#order_detail_detail .detail1 {display:inline-block; float:left; width:150px; height:20px; padding-top:30px}
	#order_detail_detail .detail2 {display:inline-block; float:left; width:218px; height:25px; padding-top:10px}
	#order_detail_detail .detail3 {display:inline-block; float:left; width:218px; height:45px; padding-top:35px; padding-bottom:5px}
	#order_detail_detail .detail4 {display:inline-block; float:left; width:548px;}
	#order_detail_detail .detail5 {display:inline-block; text-align:center; width:548px; padding-top:20px; height:40px; background:#FF9436; }
	#order_detail_detail .detail6 {display:inline-block; text-align:right; width:538px; padding-top:15px; height:30px; padding-right:10px;}
	#order_detail_detail .detail7 {display:inline-block; text-align:right; width: 310px; }
	#order_detail_detail .detail8 {display:inline-block; text-align:right; }
	#order_detail_detail .detail9 {display:inline-block; text-align:right; width:120px;}
	#order_detail_detail .detail0 {display:inline-block; text-align:right; }
	#order_detail_detail .detail10 {display:inline-block; text-align:right; width:180px;}
</style>
</head>

<body>
	<div id="order_detail_detail">
		<div style="padding-top:100px;"><h3>????????????</h3></div>
		<div style="text-align:center; display:inline-block; padding-bottom:50px">
			<div style="display:inline-block; border-bottom:3px solid #FF9436; width:1100px;">
				<div class="detail1" style="font-size:30px; width:600px; padding-top:20px; height:30px; text-align:left;">${orderday}</div>
				<div class="detail1" style="width:240px;">???????????? : ${order_num}</div>
					<c:if test="${pdto.state == 0}">
						<div class="detail1" style=" width:240px; text-align:center;">???????????? : ?????? ???</div>
					</c:if>
					<c:if test="${pdto.state == 1}">
						<div class="detail1" style=" width:240px; text-align:center;">???????????? : ?????? ??????</div>
					</c:if>
					<c:if test="${pdto.state == 2}">
						<div class="detail1" style=" width:240px; text-align:center;">???????????? : ?????? ??????</div>
					</c:if>
					<c:if test="${pdto.state == 3}">
						<div class="detail1" style=" width:240px; text-align:center;">???????????? : ?????? ??????</div>
					</c:if>
					<c:if test="${pdto.state == 4}">
						<div class="detail1" style=" width:240px; text-align:center;">???????????? : ?????? ???</div>
					</c:if>
					<c:if test="${pdto.state == 5}">
						<div class="detail1" style=" width:240px; text-align:center;">???????????? : ?????? ??????</div>
					</c:if>
				</div>
			</div>
			<div style="display:inline-block; width:1100px; text-align:center; border-bottom:1px solid black;">
				<div class="detail2">????????????</div>
				<div class="detail2" style="width:590px">????????????</div>
				<div class="detail2" style="width:100px">??????</div>
				<div class="detail2" style="width:180px">????????????</div>
				
			</div>
			<div style="padding-bottom:30px;">
			<c:forEach var="pdto" items="${plist}">
					<div style="width:1100px; text-align:center;display:inline-block;border-bottom:1px solid black;" >
						<div class="detail3" style="padding-top:0px; height:80px"><img src="${pdto.prd_img}" style="width:80px; height:80px"></div>
						<div class="detail3" style="width:590px">${pdto.prd_name}</div>
						<div class="detail3" style="width:100px">${pdto.num}</div>
						<div class="detail3" style="width:180px">${pdto.p}</div>
					</div>
			</c:forEach>
			</div>
			<div style="width:1100px; display:inline-block; text-align:right; border-bottom:1px solid black;">
			
				<div class="detail4" style="border-right:1px solid black">
					<div class="detail5">?????? ??????</div>
					<c:if test="${pdto.payment_method1 == 'card'}">
					<div class="detail6">
						<div class="detail7">?????? ?????? : </div>
						<div class="detail9" style="padding-right:10px; width:170px">????????????</div>
					</div>
					<div class="detail6">
						<div class="detail7">?????? : </div>
						<c:if test="${pdto.payment_method2 == 'kb'}">
							<div class="detail9" style="padding-right:10px; width:170px">??????</div>
						</c:if>
						<c:if test="${pdto.payment_method2 == 'shinhan'}">
							<div class="detail9" style="padding-right:10px; width:170px">??????</div>
						</c:if>
						<c:if test="${pdto.payment_method2 == 'hana'}">
							<div class="detail9" style="padding-right:10px; width:170px">??????</div>
						</c:if>
						<c:if test="${pdto.payment_method2 == 'nh'}">
							<div class="detail9" style="padding-right:10px; width:170px">??????</div>
						</c:if>
					</div>
					<div class="detail6">
						<div class="detail7">?????? : </div>
							<c:if test="${pdto.payment_method3 == '3m'}">
								<div class="detail9" style="padding-right:10px; width:170px">3?????? </div>
							</c:if>
							<c:if test="${pdto.payment_method3 == '6m'}">
								<div class="detail9" style="padding-right:10px; width:170px">6?????? </div>
							</c:if>
							<c:if test="${pdto.payment_method3 == '0m'}">
								<div class="detail9" style="padding-right:10px; width:170px">?????????</div>
							</c:if>
					</div>
					</c:if>
					<c:if test="${pdto.payment_method1 == 'account'}">
						<div class="detail6">
							<div class="detail7">?????? ?????? : </div>
							<div class="detail9" style="padding-right:10px; width:170px">???????????????</div>
						</div>
						<div class="detail6">
							<div class="detail7">???????????? : </div>
							<c:if test="${pdto.payment_method2 == 'kb'}">
								<div class="detail9" style="padding-right:10px; width:170px">??????</div>
							</c:if>
							<c:if test="${pdto.payment_method2 == 'shinhan'}">
								<div class="detail9" style="padding-right:10px; width:170px">??????</div>
							</c:if>
							<c:if test="${pdto.payment_method2 == 'hana'}">
								<div class="detail9" style="padding-right:10px; width:170px">??????</div>
							</c:if>
							<c:if test="${pdto.payment_method2 == 'nh'}">
								<div class="detail9" style="padding-right:10px; width:170px">??????</div>
							</c:if>
						</div>
						<div class="detail6">
							<div class="detail7">?????? ?????? : </div>
							<c:if test="${pdto.payment_method2 == 'kb'}">
								<div class="detail9" style="padding-right:10px; width:170px">11111111111</div>
							</c:if>
							<c:if test="${pdto.payment_method2 == 'shinhan'}">
								<div class="detail9" style="padding-right:10px; width:170px">11111111111</div>
							</c:if>
							<c:if test="${pdto.payment_method2 == 'hana'}">
								<div class="detail9" style="padding-right:10px; width:170px">11111111111</div>
							</c:if>
							<c:if test="${pdto.payment_method2 == 'nh'}">
								<div class="detail9" style="padding-right:10px; width:170px">11111111111</div>
							</c:if>
							<div class="detail9" style="padding-right:10px; width:170px"></div>
						</div>
					</c:if>
					<c:if test="${pdto.payment_method1 == 'kakao'}">
						<div class="detail6">
							<div class="detail7">?????? ?????? : </div>
							<div class="detail9" style="padding-right:10px; width:170px">???????????????</div>
						</div>
						<div class="detail6">
							<div class="detail7"> </div>
							<div class="detail9" style="padding-right:10px; width:170px"></div>
						</div>
						<div class="detail6">
							<div class="detail7"> </div>
							<div class="detail9" style="padding-right:10px; width:170px"></div>
						</div>
					</c:if>
						<c:if test="${pdto.payment_method1 == 'toss'}">
						<div class="detail6">
							<div class="detail7">?????? ?????? : </div>
							<div class="detail9" style="padding-right:10px; width:170px">??????</div>
						</div>
						<div class="detail6">
							<div class="detail7"> </div>
							<div class="detail9" style="padding-right:10px; width:170px"></div>
						</div>
						<div class="detail6">
							<div class="detail7"> </div>
							<div class="detail9" style="padding-right:10px; width:170px"></div>
						</div>
					</c:if>
					<c:if test="${pdto.payment_method1 == 'mobile'}">
						<div class="detail6">
							<div class="detail7">?????? ?????? : </div>
							<div class="detail9" style="padding-right:10px; width:170px">?????????</div>
						</div>
						<div class="detail6">
							<div class="detail7">????????? : </div>
							<c:if test="${pdto.payment_method2 == 'skt'}">
								<div class="detail9" style="padding-right:10px; width:170px">SKT</div>
							</c:if>
							<c:if test="${pdto.payment_method2 == 'kt'}">
								<div class="detail9" style="padding-right:10px; width:170px">KT</div>
							</c:if>
							<c:if test="${pdto.payment_method2 == 'hello'}">
								<div class="detail9" style="padding-right:10px; width:170px">???????????????</div>
							</c:if>
						</div>
						<div class="detail6">
							<div class="detail7"> </div>
							<div class="detail9" style="padding-right:10px; width:170px"></div>
						</div>
					</c:if>
					
					<div class="detail6">
						<div class="detail7">???????????? ?????? : </div>
						<c:if test="${pdto.couponid == '0'}">
							<div class="detail9" style="padding-right:10px; width:170px">???????????? ??????</div>
						</c:if>
						
						<c:if test="${pdto.couponid != '0'}">
							<div class="detail9" style="padding-right:10px; width:170px">${pdto.couponid}</div>
						</c:if>
					</div>
				</div>
				<div class="detail4">
					<div class="detail5">??????</div>
					<div class="detail6">
						<div class="detail7">?????? ?????? : </div>
						<div class="detail10">
							<div class="detail9" id="detail7"></div>
							<div class="detail0">???</div>
						</div>
					</div>
					<div class="detail6">
						<div class="detail7">???????????? : </div>
						<div class="detail10">
							<div class="detail9" id="detail9"></div>
							<div class="detail0">???</div>
						</div>
					</div>
					<div class="detail6">
						<div class="detail7">??????????????? : </div>
						<div class="detail10">
							<div class="detail9">0</div>
							<div class="detail0">???</div>
						</div>
					</div>
					<div class="detail6">
						<div class="detail7">???????????? : </div>
						<div class="detail10">
							<div class="detail9">${pdto.price}</div>
							<div class="detail0">???</div>
						</div>
					</div>
				</div>
			</div>
			<div style="padding-top:30px">
				<input type="button" value="????????????" onclick="location='order_detail'" style="width:200px; height:50px; background:#FF9436; border:none;cursor:pointer">
			</div>
		</div>
</body>
</html>