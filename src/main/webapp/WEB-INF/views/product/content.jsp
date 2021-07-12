<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
	.tot
	{
		padding-top:50px;
		display:flex;
		align:center;
		width:1500px;
		padding-left:400px;
		height:600px;
	}
	.price
	{
		display:inline-block;
		height:350px;
	}
	#right
	{
		display:flex;
		height:600px;
		padding-left:30px;
		
	}
	.prdimg
	{
		display:inline-block;
		
	}
	.refrigerator_banner img
	{
		padding-top:15px;
	}
	.info
	{
		
		display:inline-block;
		width:550px;
		text-align:left;
		height:500px;
	}
	.info p
	{
		font-size:25px;
		
	}
	.btn
	{
		display:inline-block;
		width:530px;
		height:70px;
		text-align:center;
	}
	.sell_prc
	{
		display:inline-block;
		padding-top:10px;
		width:150px;
		/* background:purple; */
		font-size:28px;
		
		top:0px;
	}
	.prc_txt
	{
		display:inline-block;
		margin-right:20px;
	}
	.tot_prc
	{
		font-size:25px;
	}
	.tot_prc_txt
	{
		display:inline-block;	
	}
	#prc
	{
		display:inline-block;
		float:left;
		width:500px;
		padding-bottom:10px;
	}
	#cnt
	{
		display:inline-block;
		float:left;
		width:500px;
	}
	#tprc
	{
		display:inline-block;
		width:500px;
		padding-top:200px;
		text-align:right;
		height:200px;
	}
	
	.cart {display:inline-block; background: #fff; color:#ff9436; border:1px solid #ff9436; text-decoration:none; width:180px; padding-top:20px; padding-bottom:20px; text-align:center;}
    .buy {display:inline-block; color:#fff; background: #ff9436; border:1px solid #ff9436; text-decoration:none; width:180px; padding-top:20px; padding-bottom:20px; text-align:center;}
    #wishBtn{display:inline-block; color:silver; border:1px solid silver; width:60px; text-decoration:none; text-align:center; padding-top:20px; padding-bottom:20px;}
    .alert_btn {padding-top:11px;}
    .alert_btn a {width:67px; height:32px; line-height:32px; text-align: center; border-radius: 3px;}
    
    .tab_tab_detail {width:1000px; height:50px; display:inline-block; padding-left:400px;}
    #detail_info {margin:0px;}
    .tab_tab_detail li {display:inline-block; margin:0px auto; width:196px; list-style-type:none; text-align:center; background:silver;}
    /* #detail_info {z-index:1;} */
    .hugi_hide {display:inline-block; top:1009px; padding-left:408px; width:800px;}
    .hugi_lists li {list-style-type:none; padding:0px;}
    .hugi_list .info {padding:0px;}
    .hugi_img{top:10px;}
    .dap {display:none;}
    .prd_review_more a {cursor:pointer; padding-top:10px; padding-bottom:10px; display:inline-block;}
    .prd_review_fold a {cursor:pointer; padding-top:10px; padding-bottom:10px; display:inline-block;}
    #rev_menu_right {padding-left:400px;}
    #rev_menu_right span {border:1px solid black; display:inline;}
    #a {margin-left:0px; background:orange; color:white; padding:0px;}
    #review_write {visibility:hidden; position:absolute; left:600px; top:1000px; width:600px; height:500px; background:white; border:1px solid orange;}
    .qna {display:inline-block; padding-left:400px; width:800px;}
    .deli {display:inline-block; padding-left:408px; width:800px;}
    #qna_top_menu {padding-top:15px; padding-bottom:15px;}
    #qna_top_menu .tit {width:100px; font-size:18px;}
	#qna_top_menu .tit #fst {color:gray;}
	#qna_top_menu .tit #snd {color:orange;}
	#qna_top_menu #qna_menu_right {padding-left:380px;}
	#qna_top_menu #qna_menu_right #fst {align:center; border:1px solid gray; text-decoration:none; color:silver; padding:5px;}
	#qna_top_menu #qna_menu_right #snd {align:center; border:1px solid gray; background:#FF9436; color:white; padding:5px;}
	#qna_top span{display:inline-block; padding:8px;}
	#dapyn {width:80px; align:center;}
	#qna_title {width:400px; align:left; cursor:pointer;}
	#qna_writer {width:50px; align:center;}
	#qna_date {width:100px; align:center;}
	.qna_btm {display:none; width:700px; padding-left:100px; margin-bottom:40px;}
	/* #qna_btm {display:none; width:700px; padding-left:100px; margin-bottom:40px;} */
	#qna_content {padding-top:20px; padding-bottom:20px; padding-right:20px;}
	.qna_dap {display:inline-block; padding-top:40px; padding-bottom:20px; padding-left:15px; padding-right:100px; width:500px;background:silver}
	#qna_dap_content {padding-top:30px; padding-bottom:10px;}
	#qna_font {font-size:14px;}
    #qna_write {visibility:hidden; position:absolute; left:300px; top:1000px; width:1000px; height:300px; background:white; border:1px solid silver;}
    .qna_change_button {padding-top:30px;}
	.qna_change_button a {border:1px solid gray; padding-top:5px; padding-bottom:5px; cursor:pointer}
	.qna_change_button span {padding-left:12px; padding-right:10px; padding-top:5px; padding-bottom:5px; background:white; color:gray;}
	.qna_dap_write {display:none;}
	.qna_dap_update {display:none;}
	.qna_update {visibility:hidden; position:absolute; left:300px; top:100px; width:1000px; height:300px; background:white; border:1px solid silver;}
	.dap_cnt {display:inline-block; margin-left:30px; margin-top:20px; background:silver; width:700px; padding:10px;}
	.dap {display:none; width:760px;}
	.review_dap_write {display:none;}
</style>
<script>
function abc(id,userid)	{
	var num=$("#prod_quantity_input").val();
	var chk = new XMLHttpRequest();
	
	chk.open("get","basket_10?productid="+id+"&num="+num);
	chk.send();
	chk.onreadystatechange=function()	{
		if(chk.readyState == 4)	{
			if(chk.responseText == 0)
			{
				if(confirm('장바구니에 추가하였습니다. 장바구니로 이동하시겠습니까?')==true)
				{
					location.href="../payment/shopping_basket";
					/* location.herf="#";	 */
				}
			}
			else if(chk.responseText == 1)
			{
				if(confirm('해당상품이 이미 존재합니다. 장바구니로 이동하시겠습니까?')==true)
				{
					location.href="../payment/shopping_basket";
					/* location.herf="#";	 */
				}
			}
			else if(chk.responseText == 2)
			{
				if(confirm('장바구니가 가득찼습니다. 장바구니로 이동하시겠습니까?')==true)
				{
					location.href="../payment/shopping_basket";
					/* location.herf="#";	 */
				}
			}
		}
	} 
}
function abc_not()
{
	alert('로그인이 필요한 서비스입니다.');
	location.href="../login/login";
}
// 장바구니 팝업 레이어 닫기
function closeCartPopup(){
    $('.cart_alert_wrap').hide();
}
function abc1()
{
	alert(aa);
	

} 
function buy(){
	if(confirm('구매하시겠습니까?')==true)
	{
		return true;
	}
	else
	{
		
		alert('취소되었습니다.');
		return false;
	}
}

function heart_on(b,chk){
	
	if('${userid}'==null)
	{
		if(confirm('로그인이 필요한 서비스입니다. 로그인창으로 이동합니다.')==true)
		{
			location.href='/project/login/login';
		}
	}
	else
	{
		if(confirm('찜하시겠습니까?')==true)
		{
			location.href='heart_on?id='+b+"&chk="+chk;
			alert('찜목록에 추가하였습니다.');
		}
		else
		{
			alert('취소되었습니다.');
		}
	}
}

function heart_out(b,chk)
{
	if(confirm('해당 상품을 찜목록에서 제거하시겠습니까?')==true)
	{
		location.href='heart_out?id='+b+"&chk="+chk;
		alert('찜목록에서 제거하였습니다.');
	}
	else
	{
		alert('취소되었습니다.');
	}
}	

function show_detail_info(){
	document.getElementById("detail_info").style.display="inline-block";
	document.getElementById("hugis").style.display="none";
	document.getElementById("qna").style.display="none";
	document.getElementById("deli").style.display="none";
	document.getElementsByTagName("li")[0].style.background="white";
	document.getElementsByTagName("li")[1].style.background="silver";
	document.getElementsByTagName("li")[2].style.background="silver";
	document.getElementsByTagName("li")[3].style.background="silver";
}
function show_hugis(){
	document.getElementById("detail_info").style.display="none";
	document.getElementById("hugis").style.display="inline-block";
	document.getElementById("qna").style.display="none";
	document.getElementById("deli").style.display="none";
	document.getElementsByTagName("li")[0].style.background="silver";
	document.getElementsByTagName("li")[1].style.background="white";
	document.getElementsByTagName("li")[2].style.background="silver";
	document.getElementsByTagName("li")[3].style.background="silver";
}
function show_qnas() {
	document.getElementById("detail_info").style.display="none";
	document.getElementById("hugis").style.display="none";
	document.getElementById("qna").style.display="inline-block";
	document.getElementById("deli").style.display="none";
	document.getElementsByTagName("li")[0].style.background="silver";
	document.getElementsByTagName("li")[1].style.background="silver";
	document.getElementsByTagName("li")[2].style.background="white";
	document.getElementsByTagName("li")[3].style.background="silver";
}
function show_deli() {
	document.getElementById("detail_info").style.display="none";
	document.getElementById("hugis").style.display="none";
	document.getElementById("qna").style.display="none";
	document.getElementById("deli").style.display="inline-block";
	document.getElementsByTagName("li")[0].style.background="silver";
	document.getElementsByTagName("li")[1].style.background="silver";
	document.getElementsByTagName("li")[2].style.background="silver";
	document.getElementsByTagName("li")[3].style.background="white";
}
function show_dap(id){
	document.getElementById("dap"+id).style.display="inline-block";
	document.getElementById("prd_review_more"+id).style.display="none";
}
function hide_dap(id){
	document.getElementById("dap"+id).style.display="none";
	document.getElementById("prd_review_more"+id).style.display="inline-block";
}
function show_review_write(){
	document.getElementById("review_write").style.left=(event.pageX-500)+"px";
	document.getElementById("review_write").style.top=(event.pageY)+"px";
	document.getElementById("review_write").style.visibility="visible";
}
function hide_write() {
	review_write.style.visibility="hidden";
}
function show_review_update1(id) {
	
	document.getElementById("review_update1_"+id).style.left=(event.pageX-500)+"px";
	document.getElementById("review_update1_"+id).style.top=(event.pageY)+"px";
	document.getElementById("review_update1_"+id).style.visibility="visible";
}
function hide_review_update1(id) {
	document.getElementById("review_update1_"+id).style.visibility="hidden";
}
function show_qna_update(id){
	if(confirm('수정하시겠습니까?')==true)
	{
		document.getElementById("qna_update"+id).style.left=(event.pageX+200)+"px";
		document.getElementById("qna_update"+id).style.top=(event.pageY-400)+"px";
		document.getElementById("qna_update"+id).style.visibility="visible";
	}
	else
	{
		alert('취소되었습니다.');	
	}
}
function qupdate_success()
{
	alert('수정이 완료되었습니다.');
}
function hide_qna_update(id) {
	document.getElementById("qna_update"+id).style.visibility="hidden";
}
function qna_delete(id,cid)
{
	if(confirm('삭제하시겠습니까?')==true)
	{
		location.href="/project/qdelete?id="+id+"&cid="+cid+"&chk=1&aa=a&bb=bb";
		alert('삭제되었습니다.');
	}
	else
	{
		alert('취소되었습니다.');
	}
}
function show_qna_dap(id)
{
	a=document.getElementById("qna_btm"+id).style.display;
	if(a=="none")
	{
		document.getElementById("qna_btm"+id).style.display="inline-block";
	}
	else
	{
		document.getElementById("qna_btm"+id).style.display="none";
	}
}
function show_qna_write(){
	document.getElementById("qna_write").style.left=(event.pageX-750)+"px";
	document.getElementById("qna_write").style.top=(event.pageY+document.body.scrollTop)+"px";
	document.getElementById("qna_write").style.visibility="visible";
}
function hide_qna_write() {
	document.getElementById("qna_write").style.visibility="hidden";
}
 

function before_qna_write_login_first()
{
	if(confirm('로그인이 필요한 서비스입니다. 로그인하시겠습니까?')==true)
	{
		location.href="../login/login";
	}
}
function qna_dap_write(cid)
{
	document.getElementById("qna_dap_write"+cid).style.display="inline-block";
	document.getElementById("qna_change_button"+cid).style.display="none";
}
function hide_qna_dap_write(cid)
{
	document.getElementById("qna_dap_write"+cid).style.display="none";
	document.getElementById("qna_change_button"+cid).style.display="inline-block";
	alert('답글 작성을 완료했습니다.');
}
function qna_dap_update(cid)
{
	document.getElementById("qna_dap_update"+cid).style.display="inline-block";
	document.getElementById("qna_change_button"+cid).style.display="none";
	document.getElementById("qna_dap"+cid).style.display="none";
}
function hide_qna_dap_update(cid)
{
	document.getElementById("qna_dap_update"+cid).style.display="none";
	document.getElementById("qna_change_button"+cid).style.display="inline-block";
	alert('답글 작성을 완료했습니다.');
}

function show_review_dap_update1(id)
{
	
	document.getElementById("review_dap_write"+id).style.display="inline-block";
	document.getElementById("admin_dap"+id).style.display="none";
}
function close_review_dap(id)
{
	document.getElementById("review_dap_write"+id).style.display="none";
	document.getElementById("admin_dap"+id).style.display="inline-block";
}
//상품문의 비밀글 session
function qna_secret()
{
	alert('비밀글입니다.');
}

 // 리뷰탭 고정
$(function(){
	<c:if test="${aa.equals('a')}">
		$("#detail_info").css("display","inline-block")
		$("#hugis").css("display","none")
		$("#qna").css("display","none")
		$("#deli").css("display","none")
	</c:if>
	<c:if test="${aa.equals('aa')}">
		$("#detail_info").css("display","none")
		$("#hugis").css("display","inline-block")
		$("#qna").css("display","none")
		$("#deli").css("display","none")
	</c:if>	
	<c:if test="${aa.equals('aaa')}">
		$("#detail_info").css("display","none")
		$("#hugis").css("display","none")
		$("#qna").css("display","inline-block")
		$("#deli").css("display","none")
	</c:if>	
	});

	// 문의탭 고정
	$(function(){
	<c:if test="${bb.equals('b')}">
		$("#detail_info").css("display","inline-block")
		$("#hugis").css("display","none")
		$("#qna").css("display","none")
		$("#deli").css("display","none")
	</c:if>
	<c:if test="${bb.equals('bb')}">
		$("#detail_info").css("display","none")
		$("#hugis").css("display","none")
		$("#qna").css("display","inline-block")
		$("#deli").css("display","none")
	</c:if>	
	

});
	
	$(function(){
	var price=${bdto.price};
	$("#real_price").text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
	$("#chong_price").text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
	});

	$(function(){
	$("#prod_quantity_plus").click(function(){
		var num=parseInt($("#prod_quantity_input").val());
		var price=${bdto.price};
		if(num < 20)
		{
			var num=num+1;
			$("#prod_quantity_input").val(num)
			$("#real_price").text((num*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))	
			$("#chong_price").text((num*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))	
		}
		else
		{
			var num=20;
			$("#prod_quantity_input").val(num)
			$("#real_price").text((num*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))	
			$("#chong_price").text((num*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))	
		}
	});
	});
	$(function(){
	$("#prod_quantity_minus").click(function(){
		var num=parseInt($("#prod_quantity_input").val());
		var price=${bdto.price};
		if(num > 1)
		{
			var num=num-1;
			$("#prod_quantity_input").val(num)
			$("#real_price").text((num*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
			$("#chong_price").text((num*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
		}
		else
		{
			var num=1;
			$("#prod_quantity_input").val(num)
			$("#real_price").text((num*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
			$("#chong_price").text((num*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
		}
	});
	});
	
	
</script>
</head>
<body>
<div class="tot">
	 <div class="prdimg  ">
                <div id="mimg_div" class="img"><img id="mainImg" src="${bdto.prd_img}" width="480px" height="480px"></div>
                
                <a href="javascript:;" class="refrigerator_banner">
                    <img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/refrigerator_banner2.jpg" alt="냉장고서비스">
                </a>
                
	            </div>
	            <!-- //상품 이미지 -->
	            <!-- 상품정보 & 버튼 -->
	            <div id="right">
		            <div class="info  ">
		                <div class="box">
		                    <p class="name" style="padding-bottom:20px;"><strong>${bdto.prd_name}</strong></p>
		                    <div class="price">
		                            <div>
		                            	<div id="prc">
		                                <span class="prc_txt" style="color:silver;"><strong>판매가</strong></span>
		                                <c:if test="${fb != 1}">
		                                <span class="sell_prc" style="width:300px;"><strong><span id="real_price">${bdto.price}</span></strong>원</span>
		                                </c:if>
		                                <c:if test="${fb == 1 }">
		                                <span class="sell_prc"> <span style="color:red;"><strong>100</strong></span> <span style="font-size:18px;line-height:2px;">원</span> <span style="text-decoration:line-through;color:gray;font-size:13px;">${bdto.price}원</span></span>
		                                </c:if>
		                                </div>

		                                <div id="cnt">
		                                <span class="prc_txt" style="color:silver;"><strong>판매량(조회수)</strong></span>
		                                <span class="sell_prc"><strong>${bdto.readnum}</strong>회</span>
		                                </div>
										
										<!-- <div id="prod_buy_quantity">
										 <div id="prod-buy_quantity">
										  <div id="prod_quantitiy_form" style="float:left;">
										   <input type="text" value="1" id="prod_quantity_input" maxlength="2" autocomplete="off" style="width:54px;height:30px;font-size:20px;text-align:center;display:inline-block;border:1px solid gray">
										    <div style="display:table-cell;vertical-align:top;margin:0px">
										     <button id="prod_quantity_plus" type="button" style="width:30px;height:30px;display:inline-block;background:#FF9436;color:white;border:0px;cursor:pointer;float:left;">
										      	+
										     </button>
										     <button id="prod_quantity_minus" type="button" style="width:30px;height:30px;display:inline-block;background:#FF9436;color:white;border:0px;cursor:pointer;float:left">
										        -
										     </button>
										    </div>
										  </div>
										 </div>
										</div> -->
										
		                                <div id="tprc">
		                                <span class="tot_prc_txt">총 상품금액</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                <span class="tot_prc"><strong><span id="chong_price">${bdto.price}</span></strong>원</span>
		                                </div>
		                            </div>
		                     </div>
		                     <form method="post" action="../payment/payment?a=cc" onsubmit="return buy()">
		                     <input type="hidden" value=${id} name="product_id">
		                    <div class="btn">
		                    <div id="prod_buy_quantity">
							 <div id="prod-buy_quantity">
							  <div id="prod_quantitiy_form" style="float:left;">
							   <input type="text" value="1" id="prod_quantity_input" name="prod_quantity_input" maxlength="2" autocomplete="off" style="width:54px;height:30px;font-size:20px;text-align:center;display:inline-block;border:1px solid gray">
							    <div style="display:table-cell;vertical-align:top;margin:0px">
							     <button id="prod_quantity_plus" type="button" style="width:30px;height:30px;display:inline-block;background:#FF9436;color:white;border:0px;cursor:pointer;float:left;">
							      	+
							     </button>
							     <button id="prod_quantity_minus" type="button" style="width:30px;height:30px;display:inline-block;background:#FF9436;color:white;border:0px;cursor:pointer;float:left">
							        -
							     </button>
							    </div>
							  </div>
							 </div>
							</div>
		                <c:if test="${userid != null}">
                        <a class="cart" id="cartBtn" href="javascript:abc(${id},'${userid}')">장바구니</a>
                        </c:if>
                        <c:if test="${userid == null}">
                        <a class="cart" id="cartBtn" href="javascript:abc_not()">장바구니</a>
                        </c:if>
                        <input type="submit" class="buy" value="바로구매" style="border:1px solid #FF9436; font-size:16px;">
                        <c:if test="${hk==0}">
                        <a class="wish wishIconClass" id="wishBtn" href="javascript:heart_on(${bdto.id},${chk})">찜(${heartcnt})</a>
                        </c:if>
                        <c:if test="${hk!=0}">
                        <a class="wish wishIconClass" style="background:#FF9436;color:white" id="wishBtn" href="javascript:heart_out(${bdto.id},${chk})">찜(${heartcnt})</a>
                        </c:if>
                    </div> 
                    </form>
		               </div>
		               
		            </div>
            		
                 	</div>
                    <!-- //버튼 -->
<br>
<br>
</div>
<!-- 하단 메뉴 탭 시작 -->
 <div class="tab_area">
                <ul class="tab_tab_detail">
                    <li id="tab_title">
                        <p class="li"><span class="title"  onclick="show_detail_info()" style="cursor:pointer;">상품정보</span></p>
                    </li>
                    <li id="tab_title">
                        <p class="li"><span class="title" id="tab_title" onclick="show_hugis()" style="cursor:pointer;">구매후기</span><span class="count_review">(${review_count})</span></p>
                    </li>
                    <li id="tab_title">
                        <p class="li"><span class="title" id="tab_title" onclick="show_qnas()" style="cursor:pointer;">상품문의</span><span class="count_qna">(${qna_count})</span></p>
                    </li>
                    <li id="tab_title">
                        <p class="li"><span class="title" id="tab_title" onclick="show_deli()" style="cursor:pointer;">배송안내</span></p>
                    </li>
                </ul>
            </div>
<!-- 하단 메뉴 탭 끝 -->            
 <!-- 상세정보 이미지 시작 -->
 <div class="detail_wrap_info" id="detail_info">
                <!-- 상품상세정보 -->
                <div class="tabcnt_detail tabcnt_detail0">
                                       
                    <div class="detail_info1"><div style="margin: 0px auto; width: 100%; max-width: 800px; padding-left:400px; padding-bottom:200px;">


			<c:forEach items="${ddto}" var="ddto">
			<img style="width: 100%;" alt="전체공지" src="../resources/detail_img/${ddto.prd_name}/${ddto.detail_img}"><br>
	<!-- <img style="width: 100%;" alt="전체공지" src="https://file.rankingdak.com/store/store/notice/notice_all.png/dims/resize/800"><br>
	<img style="width: 100%;" alt="브랜드공지" src="https://file.rankingdak.com/store/nao/banner/notice_all.png/dims/resize/800"><br>
	
	<img style="width: 100%;" alt="상품공지" src="https://file.rankingdak.com/store/nao/item/nao3132833m/notice_all.png/dims/resize/800"><br>
	
	<img style="width: 100%;" alt="상세1" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_01.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="상세2" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_02.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="상세3" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_03.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="상세4" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_04.jpg/dims/resize/800"><br>
        <img style="width: 100%;" alt="상세5" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_05.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="상세6" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_06.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="상세7" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_07.jpg/dims/resize/800"><br><br> -->
			</c:forEach>
        		</div>
        </div>
        </div>
        </div>
 <!-- 상세정보 이미지 끝-->      
 <!-- 구매후기 시작 -->
 <div class="hugi_hide" id="hugis" style="padding-bottom:300px;">
    <img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/refrigerator_banner.jpg" alt="냉장고서비스" width="800">     
    <div class="hugi_content"><div style="margin: 0px auto; width: 100%; max-width: 800px; padding-top:10px; margin-left:0px;">
    <div class="top_rev_menu">
    <span class="tit">구매후기(${review_count}개)</span>
    <span id="rev_menu_right">
    <a href="content?id=${id}&chk=1&aa=aa" onclick="show_hugis()"><span class="orderbybest" id="a">베스트순</span></a>
    <a href="content?id=${id}&chk=3&aa=aa" onclick="show_hugis()"><span class="orderbyrating" id="a">별점순</span></a>
    <a href="content?id=${id}&chk=2&aa=aa" onclick="show_hugis()"><span class="orderbydate" id="a">최신순</span></a> &nbsp;&nbsp;&nbsp;
    <a onclick="show_review_write()"> <span class="hugi_write">후기 쓰기 </span></a>
    </span>
    </div>
        <!-- 베스트 순 -->
    <ul class="hugi_lists">
    <c:if test="${chk==1}"> 
	<c:forEach items="${rdto1}" var="rdto1">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
	 	<!-- 후기수정 폼 시작 -->
 	<div id="review_update1_${rdto1.id}" style="visibility:hidden; position:absolute; left:600px; top:1000px; width:600px; height:500px; background:white; border:1px solid orange;">
	<form method="post" action="/project_first/rupdate_ok">
	 <p align="right"> <button type="button" onclick="hide_review_update1(${rdto1.id})"> X 닫기 </button> </p>
 	 <h3>후기 수정하기</h3>
	 <input type="hidden" name="cid" value="${id}">
	 <input type="hidden" name="id" id="id" value="${rdto1.id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="aa" value="${aa}">
	 <input type="hidden" name="prd_name" value="${rdto1.prd_name}"> 
	 <input type="hidden" name="userid" value="test">
	 상품명: ${rdto1.prd_name}<p>
	작성자: ${rdto1.userid} <p>
	 별점
	 <input type="checkbox" name="rating" value="1"> 1점
	 <input type="checkbox" name="rating" value="2"> 2점
	 <input type="checkbox" name="rating" value="3"> 3점
	 <input type="checkbox" name="rating" value="4"> 4점
	 <input type="checkbox" name="rating" value="5"> 5점
	 <br>
	 내용 <textarea rows="4" cols="30" name="content">${rdto1.content}</textarea>
	 <input type="submit" value="작성하기">
	</form>
	</div>
 	<!-- 후기수정 폼 끝 -->
 		<div>
		<span class="">
		<c:if test="${rdto1.rating == 1}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating1.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto1.rating == 2}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating2.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto1.rating == 3}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating3.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto1.rating == 4}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating4.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto1.rating == 5}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating5.png" border="0" alt="평점">
		</c:if>
		</span>
		<c:if test="${rdto1.best == 1}">
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;&nbsp;베스트리뷰&nbsp;</strong> </span>
		</c:if>
		&nbsp;
		<c:if test="${rdto1.dap_content != null}">
			<span class="dap_1" style="border:2px solid silver; border-radius:40px; font-size:14px; color:silver;"> <strong>&nbsp;답변완료&nbsp;</strong> </span>
		</c:if>
		</div>
		
		<div style="display:inline-block; padding-top:20px; padding-bottom:20px;">
		<span class="userid">${rdto1.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto1.regdate}</span>
		</div>
		
		<span class="hugi_change" style="padding-left:450px;">
		<c:if test="${userid == rdto1.userid}">
		<a onclick="show_review_update1(${rdto1.id})" style="text-decoration:none;color:black;cursor:pointer;">수정</a> &nbsp;
		<a href="/project/product/rdelete?id=${rdto1.id}&cid=${id}&chk=${chk}&aa=aa" style="text-decoration:none;color:black;cursor:pointer;">삭제</a>
		</c:if>
		<c:if test="${userid == 'admin'}">
		<c:if test="${rdto1.dap_content != null}">
		<a onclick="show_review_dap_update1(${rdto1.id})" style="text-decoration:none;color:black;cursor:pointer;">답글수정</a> &nbsp;
		</c:if>
		<c:if test="${rdto1.dap_content == null}">
		<a onclick="show_review_dap_update1(${rdto1.id})" style="text-decoration:none;color:black;cursor:pointer;">답글달기</a> &nbsp;
		</c:if>
		<a href="/project/product/rdelete?id=${rdto1.id}&cid=${id}&chk=${chk}&aa=aa" style="text-decoration:none;color:black;cursor:pointer;">삭제</a>
		</c:if>
		<c:if test="${userid == null}">
		</c:if>
		</span>
		<span class="hugi_img"><img src="${bdto.prd_img}" width="750" height="600"></span>

		<div class="cnt" id="cnt${rdto1.id}"><span>${rdto1.content}</span></div>
		<c:if test="${rdto1.dap_regdate == null}">
		<div class="prd_review_more" id="prd_review_more${rdto1.id}">
		<div id="review_dap_write${rdto1.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_write_ok">
		<strong> 답글 작성</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto1.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content"></textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="답글작성">
			<input type="button" onclick="close_review_dap(${rdto1.id})" value="취소">
			</div>
		</form>
		</div>
		</div>
		</c:if>
		<c:if test="${rdto1.dap_regdate != null}">
		<div class="prd_review_more" id="prd_review_more${rdto1.id}">
		<a onclick="show_dap(${rdto1.id})">
		더보기
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="더보기">
		</a>
		</div>
		<div class="dap" id="dap${rdto1.id}">
		<br>
		<div id="admin_dap${rdto1.id}">
		<span class="admin_id">운영자</span>
		<span> | </span>
		<span class="dap_regdate">${rdto1.dap_regdate}</span>

		<div class="dap_cnt">${rdto1.dap_content}</div>
		</div>
		<div class="prd_review_more" id="prd_review_more${rdto1.id}">
		<div id="review_dap_write${rdto1.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_update_ok">
		<strong> 답글 수정</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto1.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content">${rdto1.dap_content}</textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="답글수정">
			<input type="button" onclick="close_review_dap(${rdto1.id})" value="취소">
			</div>
		</form>
		</div>
		</div>
		
		<br>
		<div class="prd_review_fold" id="prd_review_fold${rdto1.id}">
		<a onclick="hide_dap(${rdto1.id})">
		닫기
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="닫기">
		</a>
		</div>
		</div>
		</c:if>
	 </li>
	 <br>
	 
    </c:forEach>
     <div id="pager" style="align:center;width:1500px;">
	  <!-- 이전 페이지 이동 -->
         <!-- 10페이지 이전 이동 시작 -->
          <c:if test="${pstart != 1}">
           <a href="content?id=${id}&chk=${chk}&aa=aa&page=${pstart-1}"> << </a>
          </c:if>
          <c:if test="${pstart == 1}">
           <<
          </c:if>
         <!-- 10페이지 이전 이동 끝 -->
         
         <!-- 1페이지 이전 이동 (현재페이지에서 1페이지 이전) -->
         <c:if test="${page > 1}">
          <a href="content?id=${id}&chk=${chk}&aa=aa&page=${page-1}"> < </a>  
         </c:if>
         <c:if test="${page == 1}"> 
          <      
         </c:if>
         <!-- 1페이지 이전 이동 끝 -->
       <!-- 이전 페이지 이동 끝 -->
       <c:forEach begin="${pstart}" end="${pend}" var="i">
        <c:if test="${page == i}">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${i}" style="color:red;"> ${i} </a>
        </c:if>
        <c:if test="${page != i}">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${i}"> ${i} </a>
        </c:if>
       </c:forEach>
       
       <!-- 다음 페이지 이동 -->
        <!-- 다음 1페이지 이동 -->
        <c:if test="${page != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${page+1}"> > </a>
        </c:if>
        <c:if test="${page == pagecnt}"> 
         >
        </c:if>
        <!-- 다음 1페이지 이동 끝 -->
        
        <!-- 다음 10페이지 이동 시작 -->
        <c:if test="${pend != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${pend+1}"> >> </a>
        </c:if>
        <c:if test="${pend == pagecnt}">
          >>
        </c:if>
        <!-- 다음 10페이지 이동 끝 -->
       <!-- 다음 페이지 이동 끝 -->
	 </div>
    </c:if>
    <!-- 베스트순 끝-->
    <!-- 최신순 -->
    <c:if test="${chk==2}"> 
    <c:forEach items="${rdto2}" var="rdto2">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
	 <!-- 후기수정 폼 시작 -->
 	<div id="review_update1_${rdto2.id}" style="visibility:hidden; position:absolute; left:600px; top:1000px; width:600px; height:500px; background:white; border:1px solid orange;">
	<form method="post" action="/project/rupdate_ok">
	 <p align="right"> <button type="button" onclick="hide_review_update1(${rdto2.id})"> X 닫기 </button> </p>
 	 <h3>후기 수정하기</h3>
	 <input type="hidden" name="cid" value="${id}">
	 <input type="hidden" name="id" id="id" value="${rdto2.id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="aa" value="${aa}">
	 <input type="hidden" name="prd_name" value="${rdto2.prd_name}"> 
	 <input type="hidden" name="userid" value="test">
	 상품명: ${rdto2.prd_name}<p>
	작성자: ${rdto2.userid} <p>
	 별점
	 <input type="checkbox" name="rating" value="1"> 1점
	 <input type="checkbox" name="rating" value="2"> 2점
	 <input type="checkbox" name="rating" value="3"> 3점
	 <input type="checkbox" name="rating" value="4"> 4점
	 <input type="checkbox" name="rating" value="5"> 5점
	 <br>
	 내용 <textarea rows="4" cols="30" name="content">${rdto2.content}</textarea>
	 <input type="submit" value="작성하기">
	</form>
	</div>
 	<!-- 후기수정 폼 끝 -->
 		
		<span class="">
		<c:if test="${rdto2.rating == 1}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating1.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto2.rating == 2}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating2.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto2.rating == 3}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating3.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto2.rating == 4}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating4.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto2.rating == 5}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating5.png" border="0" alt="평점">
		</c:if>
		</span>
		<c:if test="${rdto2.best == 1}">
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;&nbsp;베스트리뷰&nbsp;</strong> </span>
		</c:if>
		&nbsp;
		<c:if test="${rdto2.dap_content != null}">
			<span class="dap_1" style="border:2px solid silver; border-radius:40px; font-size:14px; color:silver;"> <strong>&nbsp;답변완료&nbsp;</strong> </span>
		</c:if>
		<p>
		<div style="display:inline-block; padding-top:20px; padding-bottom:20px;">
		<span class="userid">${rdto2.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto2.regdate}</span>
		</div>
		
		<span class="hugi_change" style="padding-left:450px;">
		<c:if test="${userid == rdto2.userid}">
		<a onclick="show_review_update1(${rdto2.id})" style="cursor:pointer;">수정</a> &nbsp;
		<a href="/project/product/rdelete?id=${rdto2.id}&cid=${id}&chk=${chk}&aa=aa" style="cursor:pointer;">삭제</a>
		</c:if>
		<c:if test="${userid == 'admin'}">
		<c:if test="${rdto2.dap_content != null}">
		<a onclick="show_review_dap_update1(${rdto2.id})" style="text-decoration:none;color:black;cursor:pointer;">답글수정</a> &nbsp;
		</c:if>
		<c:if test="${rdto2.dap_content == null}">
		<a onclick="show_review_dap_update1(${rdto2.id})" style="text-decoration:none;color:black;cursor:pointer;">답글달기</a> &nbsp;
		</c:if>
		<a href="/project/product/rdelete?id=${rdto2.id}&cid=${id}&chk=${chk}&aa=aa" style="text-decoration:none;color:black;cursor:pointer;">삭제</a>
		</c:if>
		<c:if test="${userid == null}">
		</c:if>
		</span>
	
		
		<span class="hugi_img"><img src="${bdto.prd_img}" width="750" height="600"></span>

		<div class="cnt" id="cnt${rdto2.id}"><span>${rdto2.content}</span></div>
		<c:if test="${rdto2.dap_content == null}">
		<div class="prd_review_more" id="prd_review_more${rdto2.id}">
		<div id="review_dap_write${rdto2.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_write_ok">
		<strong> 답글 작성</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto2.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content"></textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="답글작성">
			<input type="button" onclick="close_review_dap(${rdto2.id})" value="취소">
			</div>
		</form>
		</div>
		</div>
		</c:if>
		
		<c:if test="${rdto2.dap_content != null}">
		<div class="prd_review_more" id="prd_review_more${rdto2.id}">
		<a onclick="show_dap(${rdto2.id})">
		더보기
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="더보기">
		</a>
		</div>
		<div class="dap" id="dap${rdto2.id}">
		<br>
		<div id="admin_dap${rdto2.id}">
		<span class="admin_id">운영자</span>
		<span> | </span>
		<span class="dap_regdate">${rdto2.dap_regdate}</span>

		<div class="dap_cnt">${rdto2.dap_content}</div>
		</div>
		<div class="prd_review_more" id="prd_review_more${rdto2.id}">
		<div id="review_dap_write${rdto2.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_update_ok">
		<strong> 답글 수정</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto2.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content">${rdto2.dap_content}</textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="답글수정">
			<input type="button" onclick="close_review_dap(${rdto2.id})" value="취소">
			</div>
		</form>
		</div>
		</div>
		
		<br>
		<div class="prd_review_fold" id="prd_review_fold${rdto2.id}">
		<a onclick="hide_dap(${rdto2.id})">
		닫기
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="닫기">
		</a>
		</div>
		</div>
		</c:if>
	 </li>
	 <br>
	 
    </c:forEach>
    
     <div id="pager" style="text-align:center;width:1500px;">
	  <!-- 이전 페이지 이동 -->
         <!-- 10페이지 이전 이동 시작 -->
          <c:if test="${pstart != 1}">
           <a href="content?id=${id}&chk=${chk}&aa=aa&page=${pstart-1}"> << </a>
          </c:if>
          <c:if test="${pstart == 1}">
           <<
          </c:if>
         <!-- 10페이지 이전 이동 끝 -->
         
         <!-- 1페이지 이전 이동 (현재페이지에서 1페이지 이전) -->
         <c:if test="${page > 1}">
          <a href="content?id=${id}&chk=${chk}&aa=aa&page=${page-1}"> < </a>  
         </c:if>
         <c:if test="${page == 1}"> 
          <      
         </c:if>
         <!-- 1페이지 이전 이동 끝 -->
       <!-- 이전 페이지 이동 끝 -->
       <c:forEach begin="${pstart}" end="${pend}" var="i">
        <c:if test="${page == i}">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${i}" style="color:red;"> ${i} </a>
        </c:if>
        <c:if test="${page != i}">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${i}"> ${i} </a>
        </c:if>
       </c:forEach>
       
       <!-- 다음 페이지 이동 -->
        <!-- 다음 1페이지 이동 -->
        <c:if test="${page != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${page+1}"> > </a>
        </c:if>
        <c:if test="${page == pagecnt}"> 
         >
        </c:if>
        <!-- 다음 1페이지 이동 끝 -->
        
        <!-- 다음 10페이지 이동 시작 -->
        <c:if test="${pend != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${pend+1}"> >> </a>
        </c:if>
        <c:if test="${pend == pagecnt}">
          >>
        </c:if>
        <!-- 다음 10페이지 이동 끝 -->
       <!-- 다음 페이지 이동 끝 -->
	 </div>
    
    </c:if>
    
    
    <!-- 최신순 끝-->
    <!-- 별점순 -->
    <c:if test="${chk==3}"> 
    <c:forEach items="${rdto3}" var="rdto3">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
	  <!-- 후기수정 폼 시작 -->
 	<div id="review_update1_${rdto3.id}" style="visibility:hidden; position:absolute; left:600px; top:1000px; width:600px; height:500px; background:white; border:1px solid orange;">
	<form method="post" action="/project_first/rupdate_ok">
	 <p align="right"> <button type="button" onclick="hide_review_update1(${rdto3.id})"> X 닫기 </button> </p>
 	 <h3>후기 수정하기</h3>
	 <input type="hidden" name="cid" value="${id}">
	 <input type="hidden" name="id" id="id" value="${rdto3.id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="aa" value="${aa}">
	 <input type="hidden" name="prd_name" value="${rdto3.prd_name}"> 
	 <input type="hidden" name="userid" value="test">
	 상품명: ${rdto3.prd_name}<p>
	작성자: ${rdto3.userid} <p>
	 별점
	 <input type="checkbox" name="rating" value="1"> 1점
	 <input type="checkbox" name="rating" value="2"> 2점
	 <input type="checkbox" name="rating" value="3"> 3점
	 <input type="checkbox" name="rating" value="4"> 4점
	 <input type="checkbox" name="rating" value="5"> 5점
	 <br>
	 내용 <textarea rows="4" cols="30" name="content">${rdto3.content}</textarea>
	 <input type="submit" value="작성하기">
	</form>
	</div>
 	<!-- 후기수정 폼 끝 -->
		<span class="">
		<c:if test="${rdto3.rating == 1}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating1.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto3.rating == 2}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating2.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto3.rating == 3}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating3.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto3.rating == 4}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating4.png" border="0" alt="평점">
		</c:if>
		<c:if test="${rdto3.rating == 5}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating5.png" border="0" alt="평점">
		</c:if>
		</span>
		<c:if test="${rdto3.best == 1}">
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;&nbsp;베스트리뷰&nbsp;</strong> </span>
		</c:if>
		&nbsp;
		<c:if test="${rdto3.dap_content != null}">
			<span class="dap_1" style="border:2px solid silver; border-radius:40px; font-size:14px; color:silver;"> <strong>&nbsp;답변완료&nbsp;</strong> </span>
		</c:if>
		<p>
		
		<div style="display:inline-block; padding-top:20px; padding-bottom:20px;">
		<span class="userid">${rdto3.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto3.regdate}</span>
		</div>
		
		<span class="hugi_change" style="padding-left:450px;">
		<c:if test="${userid == rdto3.userid}">
		<a onclick="show_review_update1(${rdto3.id})" style="cursor:pointer;">수정</a> &nbsp;
		<a href="/project/product/rdelete?id=${rdto3.id}&cid=${id}&chk=${chk}&aa=aa" style="cursor:pointer;">삭제</a>
		</c:if>
		<c:if test="${userid == 'admin'}">
		<c:if test="${rdto3.dap_content != null}">
		<a onclick="show_review_dap_update1(${rdto3.id})" style="text-decoration:none;color:black;cursor:pointer;">답글수정</a> &nbsp;
		</c:if>
		<c:if test="${rdto3.dap_content == null}">
		<a onclick="show_review_dap_update1(${rdto3.id})" style="text-decoration:none;color:black;cursor:pointer;">답글달기</a> &nbsp;
		</c:if>
		<a href="/project/product/rdelete?id=${rdto3.id}&cid=${id}&chk=${chk}&aa=aa" style="text-decoration:none;color:black;cursor:pointer;">삭제</a>
		</c:if>
		<c:if test="${userid == null}">
		</c:if>
		</span>
		

		<span class="hugi_img"><img src="${bdto.prd_img}" width="750" height="600"></span>

		<div class="cnt" id="cnt${rdto3.id}"><span>${rdto3.content}</span></div>
		<c:if test="${rdto3.dap_regdate == null}">
		<div class="prd_review_more" id="prd_review_more${rdto3.id}">
		<div id="review_dap_write${rdto3.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_write_ok">
		<strong> 답글 작성</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto3.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content"></textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="답글작성">
			<input type="button" onclick="close_review_dap(${rdto3.id})" value="취소">
			</div>
		</form>
		</div>
		</div>
		</c:if>
		
		<c:if test="${rdto3.dap_regdate != null}">
		<div class="prd_review_more" id="prd_review_more${rdto3.id}">
		<a onclick="show_dap(${rdto3.id})">
		더보기
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="더보기">
		</a>
		</div>
		<div class="dap" id="dap${rdto3.id}">
		<br>
		<div id="admin_dap${rdto3.id}">
		<span class="admin_id">운영자</span>
		<span> | </span>
		<span class="dap_regdate">${rdto3.dap_regdate}</span>
		<div class="dap_cnt">${rdto3.dap_content}</div>
		</div>
		
		<div class="prd_review_more" id="prd_review_more${rdto3.id}">
		<div id="review_dap_write${rdto3.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_update_ok">
		<strong> 답글 수정</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto3.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content">${rdto3.dap_content}</textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="답글수정">
			<input type="button" onclick="close_review_dap(${rdto3.id})" value="취소">
			</div>
		</form>
		</div>
		</div>
		
		
		<div class="prd_review_fold" id="prd_review_fold${rdto3.id}">
		<a onclick="hide_dap(${rdto3.id})">
		닫기
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="닫기">
		</a>
		
		</div>
		</div>
		</c:if>
	 </li>
	 <br>
    </c:forEach>
    <div id="pager" style="text-align:center;width:1500px;">
	  <!-- 이전 페이지 이동 -->
         <!-- 10페이지 이전 이동 시작 -->
          <c:if test="${pstart != 1}">
           <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${pstart-1}"> << </a>
          </c:if>
          <c:if test="${pstart == 1}">
           <<
          </c:if>
         <!-- 10페이지 이전 이동 끝 -->
         
         <!-- 1페이지 이전 이동 (현재페이지에서 1페이지 이전) -->
         <c:if test="${page > 1}">
          <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${page-1}"> < </a>  
         </c:if>
         <c:if test="${page == 1}"> 
          <      
         </c:if>
         <!-- 1페이지 이전 이동 끝 -->
       <!-- 이전 페이지 이동 끝 -->
       <c:forEach begin="${pstart}" end="${pend}" var="i">
        <c:if test="${page == i}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${i}" style="color:red;"> ${i} </a>
        </c:if>
        <c:if test="${page != i}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${i}"> ${i} </a>
        </c:if>
       </c:forEach>
       
       <!-- 다음 페이지 이동 -->
        <!-- 다음 1페이지 이동 -->
        <c:if test="${page != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${page+1}"> > </a>
        </c:if>
        <c:if test="${page == pagecnt}"> 
         >
        </c:if>
        <!-- 다음 1페이지 이동 끝 -->
        
        <!-- 다음 10페이지 이동 시작 -->
        <c:if test="${pend != pagecnt}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${pend+1}"> >> </a>
        </c:if>
        <c:if test="${pend == pagecnt}">
          >>
        </c:if>
        <!-- 다음 10페이지 이동 끝 -->
       <!-- 다음 페이지 이동 끝 -->
	 </div>
    
    </c:if>
    </ul>
    </div>
    </div>
    </div>
    <!-- 별점순 끝 --> 
 <!-- 구매후기 끝 -->
 <!-- 상품문의 시작 -->
 <div class="qna" id="qna" style="padding-bottom:300px;">
 	<div id="qna_top_menu">
 	<span class="tit"><strong><a id="fst">상품문의</a> <a id="snd">(${qna_count}개)</a></strong></span>
    <span id="qna_menu_right">
    <a href="#" id="fst"><span class="onetoone">1:1 상담게시판</span></a>
    <c:if test="${userid != null}">
    <a onclick="show_qna_write()" id="snd"> <span class="qna_write">상품 문의하기 </span> </a>
    </c:if>
    <c:if test="${userid == null}">
    <a onclick="before_qna_write_login_first()" id="snd"> <span class="qna_write">상품 문의하기 </span> </a>
    </c:if>
    </span>
    </div>
 	<c:forEach items="${qlist}" var="qlist">
 		<div id="qna_font" style="border:1px solid gray">
	 	<div id="qna_top">
	 	<span id="qna_dapyn">
	 	<c:if test="${qlist.dap_content != null}">
	 	 <span id="dapyn" style="color:orange;"> 답변완료 </span>
	 	</c:if>
	 	<c:if test="${qlist.dap_content == null}">
	 	 <span id="dapyn" style="color:silver;"> 답변미완료 </span>
	 	</c:if>
	 	</span>
	 	
	 	<span id="qna_title">
	 	<c:if test="${qlist.state == 0}">
	 	 <a href="javascript:show_qna_dap(${qlist.id})" style="text-decoration:none;color:black;">
	 	 <c:if test="${qlist.qna_cate == 0}">
	 	 [상품문의] 입니다.
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 1}">
	 	 [배송문의] 입니다.
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 2}">
	 	 [기타문의] 입니다.
	 	 </c:if>
	 	 </a>
	 	 </c:if>
	 	 
	 	 <c:if test="${qlist.state == 1}">
	 	 <c:if test="${userid == qlist.userid || userid == 'admin'}">
	 	 <a id="qna_secret" href="javascript:show_qna_dap(${qlist.id})" style="text-decoration:none;color:black;">
	 	 <c:if test="${qlist.qna_cate == 0}">
	 	 [상품문의] 입니다. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 1}">
	 	 [배송문의] 입니다. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 2}">
	 	 [기타문의] 입니다. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 </a>
	 	 </c:if>
	 	 
	 	 <c:if test="${userid != qlist.userid && userid != 'admin'}">
	 	 <a id="qna_secret" href="javascript:qna_secret()" style="text-decoration:none;color:black;">
	 	 <c:if test="${qlist.qna_cate == 0}">
	 	 [상품문의] 입니다. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 1}">
	 	 [배송문의] 입니다. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 2}">
	 	 [기타문의] 입니다. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 </a>
	 	 </c:if>
	 	 
	 
	 	 </c:if>
	 	</span>
	 	
	 	<span id="qna_writer">
	 	 <span>${qlist.userid}</span>
	 	</span>
	 	
	 	<span id="qna_date">
	 	 <span>${qlist.regdate}</span>
	 	</span>
	 	
	 	</div>	 	
	 	<div id="qna_btm${qlist.id}" class="qna_btm">
	 
	 	<div id="qna_content">
	 	  <span>${qlist.content}</span>
	 	</div>
	 	<c:if test="${qlist.dap_content != null}">
	 	<div id="qna_dap${qlist.id}" class="qna_dap">
	 	<div id="qna_dap_title">
	 	 <span id="qna_admin"><strong>운영자</strong></span>&nbsp;
	 	 <span>|</span>&nbsp;
	 	 <span id="qna_dap_date">${qlist.dap_regdate}</span> <br>
	 	</div>
	 	<div id="qna_dap_content">
	 	 <span>${qlist.dap_content}</span>
	 	</div>
	 	</div>
	 	</c:if>
	 	<c:if test="${qlist.dap_content == null}">
	 	<span id="qna_dap_title">
	 	 
	 	</span>
	 	</c:if>
	 	<div id="qna_change_button${qlist.id}" class="qna_change_button">
	 	<c:if test="${qlist.userid == userid}">
	 	<a onclick="show_qna_update(${qlist.id})"><span>수정</span></a>
	 	<a onclick="qna_delete(${qlist.id},${id})"><span>삭제</span></a>
	 	</c:if>
	 	<c:if test="${userid == 'admin'}">
	 	<a onclick="qna_delete(${qlist.id},${id})"><span>삭제</span></a>
	 	<c:if test="${qlist.dap_content == null}">
	 	<a onclick="qna_dap_write(${qlist.id})"><span>답글작성</span></a>
	 	</c:if>
	 	<c:if test="${qlist.dap_content != null}">
	 	<a onclick="qna_dap_update(${qlist.id})"><span>답글수정</span></a>
	 	</c:if>
	 	</c:if>
	 	</div>	
	 	<div id="qna_dap_write${qlist.id}" class="qna_dap_write">
	 	<form method="post" action="/project/qna_dap_write_ok">
	 	<input type="hidden" name="id" value="${qlist.id}">
	 	<input type="hidden" name="chk" value="${chk}">
	 	<input type="hidden" name="aa" value="${aa}">
	 	 <input type="hidden" name="cid" value="${id}">
	 	<textarea rows="4" cols="80" name="dap_content"></textarea>
	 	<div>
	 	<input type="submit" value="작성완료" onclick="hide_qna_dap_write()">
	 	</div>
	 	</form>
	 	</div>
	 	<div id="qna_dap_update${qlist.id}" class="qna_dap_update">
	 	<form method="post" action="/project/qna_dap_update_ok">
	 	<input type="hidden" name="id" value="${qlist.id}">
	 	<input type="hidden" name="chk" value="${chk}">
	 	<input type="hidden" name="aa" value="${aa}">
	 	 <input type="hidden" name="cid" value="${id}">
	 	<textarea rows="4" cols="80" name="dap_content">${qlist.dap_content}</textarea>
	 	<div>
	 	<input type="submit" value="수정완료" onclick="hide_qna_dap_update()">
	 	</div>
	 	</form>
	 	</div>
	 	</div>
	 	</div>
	 	<br>
	 	<!-- 문의수정 폼 시작-->
	 <div id="qna_update${qlist.id}" class="qna_update">
	<form method="post" action="/project_first/qupdate_ok">
		<p align="right"> <button type="button" onclick="hide_qna_update(${qlist.id})"> X 닫기 </button> </p>
 	<h3>문의하기</h3>
	 <input type="hidden" name="cid" value="${id}">
	 <input type="hidden" name="id" value="${qlist.id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="prd_name" value="${qlist.prd_name}"> 
	 <input type="hidden" name="userid" value="test">
	 <div>
	 	<span id="qwrite_radio">
		 <input type="radio" name="qna_cate" value="0">
		 <label for="prd">상품문의</label> 
		 <input type="radio" name="qna_cate" value="1">
		 <label for="deli">배송문의</label> 
		 <input type="radio" name="qna_cate" value="2">
		 <label for="etc">기타문의</label>
		</span>
		<span id="qwrite_warning">
		 ※문의유형을 꼭 선택해주세요.
		</span>
		<span id="qwrite_state">
		 <input type="checkbox" name="state" value="1">
		 비밀글
		</span>
	 </div>
	 <div id="qwrite_content">
	  <textarea rows="4" cols="130" name="content">${qlist.content}</textarea>
	 </div>
	 <div>
	  <ul style="color:gray;">
	  	<li>상품문의에서는 상품과 무관한 요청은 처리되지 않습니다.</li>
	  	<li>배송문의,취소,환불 등은 <a style="color:orange; text-decoration:underline; cursor:pointer;">1:1상담게시판</a>을 통해 문의남겨주시기 바랍니다.</li>
	  	<li>미구매,비방이나 양도 광고성,욕설,도배글,개인정보가 포함된 글은 예고없이 삭제되거나 노출이 제한될 수 있습니다.</li>
	  </ul>
	  <input type="submit" value="수정" onclick="qupdate_success()">
	 </div>
	 
	</form>
	</div>
 <!-- 문의수정 폼 끝 -->
 	</c:forEach>
 	
 	  <div id="pager" style="text-align:center;width:1500px;">
	  <!-- 이전 페이지 이동 -->
         <!-- 10페이지 이전 이동 시작 -->
          <c:if test="${pstart1 != 1}">
           <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${pstart1-1}"> << </a>
          </c:if>
          <c:if test="${pstart1 == 1}">
           <<
          </c:if>
         <!-- 10페이지 이전 이동 끝 -->
         
         <!-- 1페이지 이전 이동 (현재페이지에서 1페이지 이전) -->
         <c:if test="${page1 > 1}">
          <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${page1-1}"> < </a>  
         </c:if>
         <c:if test="${page1 == 1}"> 
          <      
         </c:if>
         <!-- 1페이지 이전 이동 끝 -->
       <!-- 이전 페이지 이동 끝 -->
       <c:forEach begin="${pstart1}" end="${pend1}" var="i">
        <c:if test="${page1 == i}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${i}" style="color:red;"> ${i} </a>
        </c:if>
        <c:if test="${page1 != i}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${i}"> ${i} </a>
        </c:if>
       </c:forEach>
       
       <!-- 다음 페이지 이동 -->
        <!-- 다음 1페이지 이동 -->
        <c:if test="${page1 != pagecnt1 }">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${page1+1}"> > </a>
        </c:if>
        <c:if test="${page1 == pagecnt1}"> 
         >
        </c:if>
        <!-- 다음 1페이지 이동 끝 -->
        
        <!-- 다음 10페이지 이동 시작 -->
        <c:if test="${pend1 != pagecnt1}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${pend1+1}"> >> </a>
        </c:if>
        <c:if test="${pend1 == pagecnt1}">
          >>
        </c:if>
        <!-- 다음 10페이지 이동 끝 -->
       <!-- 다음 페이지 이동 끝 -->
	 </div>
 	
 </div>
 <!-- 상품문의 끝 -->
 <!-- 배송안내 시작 -->
  <div class="deli" id="deli" style="padding-bottom:300px;">
 	<img src="../resources/deli_img/deli1.png">
 	<img src="../resources/deli_img/deli2.png">
 </div>
 
 <!-- 배송안내 끝 -->
 <!-- 후기작성 폼 시작-->
 <div id="review_write">
	<form method="post" action="/project/rwrite_ok"  enctype="multipart/form-data">
		<p align="right"> <button type="button" onclick="hide_write()"> X 닫기 </button> </p>
 	<h3>후기 작성하기</h3>
	 <input type="hidden" name="id" value="${id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="aa" value="${aa}">
	 <input type="hidden" name="prd_name" value="${bdto.prd_name}"> 
	 <input type="hidden" name="userid" value="${userid}">
	 상품명: ${bdto.prd_name} <p>
	작성자: ${userid} <p>
	 별점
	 <input type="checkbox" name="rating" value="1"> 1점
	 <input type="checkbox" name="rating" value="2"> 2점
	 <input type="checkbox" name="rating" value="3"> 3점
	 <input type="checkbox" name="rating" value="4"> 4점
	 <input type="checkbox" name="rating" value="5"> 5점
	 <p>
	 <input type="file" name="hugi_img">
	 <p>
	 내용 <textarea rows="4" cols="30" name="content" placeholder="10자 이상 작성해주세요."></textarea>
	 <input type="submit" value="작성하기">
	</form>
	</div>
 <!-- 후기작성 폼 끝 -->
 
 <!-- 문의작성 폼 시작-->
 <div id="qna_write">
	<form method="post" action="/project_first/qwrite_ok">
		<p align="right"> <button type="button" onclick="hide_qna_write()"> X 닫기 </button> </p>
 	<h3>문의하기</h3>
	 <input type="hidden" name="id" value="${id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="bb" value="bb">
	 <input type="hidden" name="prd_name" value="${bdto.prd_name}"> 
	 <input type="hidden" name="userid" value="${userid}">
	 <div>
	 	<span id="qwrite_radio">
		 <input type="radio" name="qna_cate" value="0">
		 <label for="prd">상품문의</label> 
		 <input type="radio" name="qna_cate" value="1">
		 <label for="deli">배송문의</label> 
		 <input type="radio" name="qna_cate" value="2">
		 <label for="etc">기타문의</label>
		</span>
		<span id="qwrite_warning">
		 ※문의유형을 꼭 선택해주세요.
		</span>
		<span id="qwrite_state">
		 <input type="checkbox" name="state" value="1">
		 비밀글
		</span>
	 </div>
	 <div id="qwrite_content">
	  <textarea rows="4" cols="130" name="content" placeholder="상품문의 외에 문의요청은 1:1상담게시판을 이용해주세요."></textarea>
	 </div>
	 <div>
	  <ul style="color:gray;">
	  	<li>상품문의에서는 상품과 무관한 요청은 처리되지 않습니다.</li>
	  	<li>배송문의,취소,환불 등은 <a style="color:orange; text-decoration:underline; cursor:pointer;">1:1상담게시판</a>을 통해 문의남겨주시기 바랍니다.</li>
	  	<li>미구매,비방이나 양도 광고성,욕설,도배글,개인정보가 포함된 글은 예고없이 삭제되거나 노출이 제한될 수 있습니다.</li>
	  </ul>
	  <input type="submit" value="등록">
	 </div>
	 
	</form>
	</div>
 <!-- 문의작성 폼 끝 -->
</body>
</html>