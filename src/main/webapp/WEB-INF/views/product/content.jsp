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
				if(confirm('??????????????? ?????????????????????. ??????????????? ?????????????????????????')==true)
				{
					location.href="../payment/shopping_basket";
					/* location.herf="#";	 */
				}
			}
			else if(chk.responseText == 1)
			{
				if(confirm('??????????????? ?????? ???????????????. ??????????????? ?????????????????????????')==true)
				{
					location.href="../payment/shopping_basket";
					/* location.herf="#";	 */
				}
			}
			else if(chk.responseText == 2)
			{
				if(confirm('??????????????? ??????????????????. ??????????????? ?????????????????????????')==true)
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
	alert('???????????? ????????? ??????????????????.');
	location.href="../login/login";
}
// ???????????? ?????? ????????? ??????
function closeCartPopup(){
    $('.cart_alert_wrap').hide();
}
function abc1()
{
	alert(aa);
	

} 
function buy(){
	if(confirm('?????????????????????????')==true)
	{
		return true;
	}
	else
	{
		
		alert('?????????????????????.');
		return false;
	}
}

function heart_on(b,chk){
	
	if('${userid}'==null)
	{
		if(confirm('???????????? ????????? ??????????????????. ?????????????????? ???????????????.')==true)
		{
			location.href='/project/login/login';
		}
	}
	else
	{
		if(confirm('??????????????????????')==true)
		{
			location.href='heart_on?id='+b+"&chk="+chk;
			alert('???????????? ?????????????????????.');
		}
		else
		{
			alert('?????????????????????.');
		}
	}
}

function heart_out(b,chk)
{
	if(confirm('?????? ????????? ??????????????? ?????????????????????????')==true)
	{
		location.href='heart_out?id='+b+"&chk="+chk;
		alert('??????????????? ?????????????????????.');
	}
	else
	{
		alert('?????????????????????.');
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
	if(confirm('?????????????????????????')==true)
	{
		document.getElementById("qna_update"+id).style.left=(event.pageX+200)+"px";
		document.getElementById("qna_update"+id).style.top=(event.pageY-400)+"px";
		document.getElementById("qna_update"+id).style.visibility="visible";
	}
	else
	{
		alert('?????????????????????.');	
	}
}
function qupdate_success()
{
	alert('????????? ?????????????????????.');
}
function hide_qna_update(id) {
	document.getElementById("qna_update"+id).style.visibility="hidden";
}
function qna_delete(id,cid)
{
	if(confirm('?????????????????????????')==true)
	{
		location.href="/project/qdelete?id="+id+"&cid="+cid+"&chk=1&aa=a&bb=bb";
		alert('?????????????????????.');
	}
	else
	{
		alert('?????????????????????.');
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
	if(confirm('???????????? ????????? ??????????????????. ????????????????????????????')==true)
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
	alert('?????? ????????? ??????????????????.');
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
	alert('?????? ????????? ??????????????????.');
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
//???????????? ????????? session
function qna_secret()
{
	alert('??????????????????.');
}

 // ????????? ??????
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

	// ????????? ??????
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
                    <img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/refrigerator_banner2.jpg" alt="??????????????????">
                </a>
                
	            </div>
	            <!-- //?????? ????????? -->
	            <!-- ???????????? & ?????? -->
	            <div id="right">
		            <div class="info  ">
		                <div class="box">
		                    <p class="name" style="padding-bottom:20px;"><strong>${bdto.prd_name}</strong></p>
		                    <div class="price">
		                            <div>
		                            	<div id="prc">
		                                <span class="prc_txt" style="color:silver;"><strong>?????????</strong></span>
		                                <c:if test="${fb != 1}">
		                                <span class="sell_prc" style="width:300px;"><strong><span id="real_price">${bdto.price}</span></strong>???</span>
		                                </c:if>
		                                <c:if test="${fb == 1 }">
		                                <span class="sell_prc"> <span style="color:red;"><strong>100</strong></span> <span style="font-size:18px;line-height:2px;">???</span> <span style="text-decoration:line-through;color:gray;font-size:13px;">${bdto.price}???</span></span>
		                                </c:if>
		                                </div>

		                                <div id="cnt">
		                                <span class="prc_txt" style="color:silver;"><strong>?????????(?????????)</strong></span>
		                                <span class="sell_prc"><strong>${bdto.readnum}</strong>???</span>
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
		                                <span class="tot_prc_txt">??? ????????????</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                <span class="tot_prc"><strong><span id="chong_price">${bdto.price}</span></strong>???</span>
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
                        <a class="cart" id="cartBtn" href="javascript:abc(${id},'${userid}')">????????????</a>
                        </c:if>
                        <c:if test="${userid == null}">
                        <a class="cart" id="cartBtn" href="javascript:abc_not()">????????????</a>
                        </c:if>
                        <input type="submit" class="buy" value="????????????" style="border:1px solid #FF9436; font-size:16px;">
                        <c:if test="${hk==0}">
                        <a class="wish wishIconClass" id="wishBtn" href="javascript:heart_on(${bdto.id},${chk})">???(${heartcnt})</a>
                        </c:if>
                        <c:if test="${hk!=0}">
                        <a class="wish wishIconClass" style="background:#FF9436;color:white" id="wishBtn" href="javascript:heart_out(${bdto.id},${chk})">???(${heartcnt})</a>
                        </c:if>
                    </div> 
                    </form>
		               </div>
		               
		            </div>
            		
                 	</div>
                    <!-- //?????? -->
<br>
<br>
</div>
<!-- ?????? ?????? ??? ?????? -->
 <div class="tab_area">
                <ul class="tab_tab_detail">
                    <li id="tab_title">
                        <p class="li"><span class="title"  onclick="show_detail_info()" style="cursor:pointer;">????????????</span></p>
                    </li>
                    <li id="tab_title">
                        <p class="li"><span class="title" id="tab_title" onclick="show_hugis()" style="cursor:pointer;">????????????</span><span class="count_review">(${review_count})</span></p>
                    </li>
                    <li id="tab_title">
                        <p class="li"><span class="title" id="tab_title" onclick="show_qnas()" style="cursor:pointer;">????????????</span><span class="count_qna">(${qna_count})</span></p>
                    </li>
                    <li id="tab_title">
                        <p class="li"><span class="title" id="tab_title" onclick="show_deli()" style="cursor:pointer;">????????????</span></p>
                    </li>
                </ul>
            </div>
<!-- ?????? ?????? ??? ??? -->            
 <!-- ???????????? ????????? ?????? -->
 <div class="detail_wrap_info" id="detail_info">
                <!-- ?????????????????? -->
                <div class="tabcnt_detail tabcnt_detail0">
                                       
                    <div class="detail_info1"><div style="margin: 0px auto; width: 100%; max-width: 800px; padding-left:400px; padding-bottom:200px;">


			<c:forEach items="${ddto}" var="ddto">
			<img style="width: 100%;" alt="????????????" src="../resources/detail_img/${ddto.prd_name}/${ddto.detail_img}"><br>
	<!-- <img style="width: 100%;" alt="????????????" src="https://file.rankingdak.com/store/store/notice/notice_all.png/dims/resize/800"><br>
	<img style="width: 100%;" alt="???????????????" src="https://file.rankingdak.com/store/nao/banner/notice_all.png/dims/resize/800"><br>
	
	<img style="width: 100%;" alt="????????????" src="https://file.rankingdak.com/store/nao/item/nao3132833m/notice_all.png/dims/resize/800"><br>
	
	<img style="width: 100%;" alt="??????1" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_01.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????2" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_02.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????3" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_03.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????4" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_04.jpg/dims/resize/800"><br>
        <img style="width: 100%;" alt="??????5" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_05.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????6" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_06.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????7" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_07.jpg/dims/resize/800"><br><br> -->
			</c:forEach>
        		</div>
        </div>
        </div>
        </div>
 <!-- ???????????? ????????? ???-->      
 <!-- ???????????? ?????? -->
 <div class="hugi_hide" id="hugis" style="padding-bottom:300px;">
    <img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/refrigerator_banner.jpg" alt="??????????????????" width="800">     
    <div class="hugi_content"><div style="margin: 0px auto; width: 100%; max-width: 800px; padding-top:10px; margin-left:0px;">
    <div class="top_rev_menu">
    <span class="tit">????????????(${review_count}???)</span>
    <span id="rev_menu_right">
    <a href="content?id=${id}&chk=1&aa=aa" onclick="show_hugis()"><span class="orderbybest" id="a">????????????</span></a>
    <a href="content?id=${id}&chk=3&aa=aa" onclick="show_hugis()"><span class="orderbyrating" id="a">?????????</span></a>
    <a href="content?id=${id}&chk=2&aa=aa" onclick="show_hugis()"><span class="orderbydate" id="a">?????????</span></a> &nbsp;&nbsp;&nbsp;
    <a onclick="show_review_write()"> <span class="hugi_write">?????? ?????? </span></a>
    </span>
    </div>
        <!-- ????????? ??? -->
    <ul class="hugi_lists">
    <c:if test="${chk==1}"> 
	<c:forEach items="${rdto1}" var="rdto1">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
	 	<!-- ???????????? ??? ?????? -->
 	<div id="review_update1_${rdto1.id}" style="visibility:hidden; position:absolute; left:600px; top:1000px; width:600px; height:500px; background:white; border:1px solid orange;">
	<form method="post" action="/project_first/rupdate_ok">
	 <p align="right"> <button type="button" onclick="hide_review_update1(${rdto1.id})"> X ?????? </button> </p>
 	 <h3>?????? ????????????</h3>
	 <input type="hidden" name="cid" value="${id}">
	 <input type="hidden" name="id" id="id" value="${rdto1.id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="aa" value="${aa}">
	 <input type="hidden" name="prd_name" value="${rdto1.prd_name}"> 
	 <input type="hidden" name="userid" value="test">
	 ?????????: ${rdto1.prd_name}<p>
	?????????: ${rdto1.userid} <p>
	 ??????
	 <input type="checkbox" name="rating" value="1"> 1???
	 <input type="checkbox" name="rating" value="2"> 2???
	 <input type="checkbox" name="rating" value="3"> 3???
	 <input type="checkbox" name="rating" value="4"> 4???
	 <input type="checkbox" name="rating" value="5"> 5???
	 <br>
	 ?????? <textarea rows="4" cols="30" name="content">${rdto1.content}</textarea>
	 <input type="submit" value="????????????">
	</form>
	</div>
 	<!-- ???????????? ??? ??? -->
 		<div>
		<span class="">
		<c:if test="${rdto1.rating == 1}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating1.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto1.rating == 2}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating2.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto1.rating == 3}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating3.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto1.rating == 4}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating4.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto1.rating == 5}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating5.png" border="0" alt="??????">
		</c:if>
		</span>
		<c:if test="${rdto1.best == 1}">
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;&nbsp;???????????????&nbsp;</strong> </span>
		</c:if>
		&nbsp;
		<c:if test="${rdto1.dap_content != null}">
			<span class="dap_1" style="border:2px solid silver; border-radius:40px; font-size:14px; color:silver;"> <strong>&nbsp;????????????&nbsp;</strong> </span>
		</c:if>
		</div>
		
		<div style="display:inline-block; padding-top:20px; padding-bottom:20px;">
		<span class="userid">${rdto1.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto1.regdate}</span>
		</div>
		
		<span class="hugi_change" style="padding-left:450px;">
		<c:if test="${userid == rdto1.userid}">
		<a onclick="show_review_update1(${rdto1.id})" style="text-decoration:none;color:black;cursor:pointer;">??????</a> &nbsp;
		<a href="/project/product/rdelete?id=${rdto1.id}&cid=${id}&chk=${chk}&aa=aa" style="text-decoration:none;color:black;cursor:pointer;">??????</a>
		</c:if>
		<c:if test="${userid == 'admin'}">
		<c:if test="${rdto1.dap_content != null}">
		<a onclick="show_review_dap_update1(${rdto1.id})" style="text-decoration:none;color:black;cursor:pointer;">????????????</a> &nbsp;
		</c:if>
		<c:if test="${rdto1.dap_content == null}">
		<a onclick="show_review_dap_update1(${rdto1.id})" style="text-decoration:none;color:black;cursor:pointer;">????????????</a> &nbsp;
		</c:if>
		<a href="/project/product/rdelete?id=${rdto1.id}&cid=${id}&chk=${chk}&aa=aa" style="text-decoration:none;color:black;cursor:pointer;">??????</a>
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
		<strong> ?????? ??????</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto1.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content"></textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="????????????">
			<input type="button" onclick="close_review_dap(${rdto1.id})" value="??????">
			</div>
		</form>
		</div>
		</div>
		</c:if>
		<c:if test="${rdto1.dap_regdate != null}">
		<div class="prd_review_more" id="prd_review_more${rdto1.id}">
		<a onclick="show_dap(${rdto1.id})">
		?????????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="?????????">
		</a>
		</div>
		<div class="dap" id="dap${rdto1.id}">
		<br>
		<div id="admin_dap${rdto1.id}">
		<span class="admin_id">?????????</span>
		<span> | </span>
		<span class="dap_regdate">${rdto1.dap_regdate}</span>

		<div class="dap_cnt">${rdto1.dap_content}</div>
		</div>
		<div class="prd_review_more" id="prd_review_more${rdto1.id}">
		<div id="review_dap_write${rdto1.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_update_ok">
		<strong> ?????? ??????</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto1.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content">${rdto1.dap_content}</textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="????????????">
			<input type="button" onclick="close_review_dap(${rdto1.id})" value="??????">
			</div>
		</form>
		</div>
		</div>
		
		<br>
		<div class="prd_review_fold" id="prd_review_fold${rdto1.id}">
		<a onclick="hide_dap(${rdto1.id})">
		??????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="??????">
		</a>
		</div>
		</div>
		</c:if>
	 </li>
	 <br>
	 
    </c:forEach>
     <div id="pager" style="align:center;width:1500px;">
	  <!-- ?????? ????????? ?????? -->
         <!-- 10????????? ?????? ?????? ?????? -->
          <c:if test="${pstart != 1}">
           <a href="content?id=${id}&chk=${chk}&aa=aa&page=${pstart-1}"> << </a>
          </c:if>
          <c:if test="${pstart == 1}">
           <<
          </c:if>
         <!-- 10????????? ?????? ?????? ??? -->
         
         <!-- 1????????? ?????? ?????? (????????????????????? 1????????? ??????) -->
         <c:if test="${page > 1}">
          <a href="content?id=${id}&chk=${chk}&aa=aa&page=${page-1}"> < </a>  
         </c:if>
         <c:if test="${page == 1}"> 
          <      
         </c:if>
         <!-- 1????????? ?????? ?????? ??? -->
       <!-- ?????? ????????? ?????? ??? -->
       <c:forEach begin="${pstart}" end="${pend}" var="i">
        <c:if test="${page == i}">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${i}" style="color:red;"> ${i} </a>
        </c:if>
        <c:if test="${page != i}">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${i}"> ${i} </a>
        </c:if>
       </c:forEach>
       
       <!-- ?????? ????????? ?????? -->
        <!-- ?????? 1????????? ?????? -->
        <c:if test="${page != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${page+1}"> > </a>
        </c:if>
        <c:if test="${page == pagecnt}"> 
         >
        </c:if>
        <!-- ?????? 1????????? ?????? ??? -->
        
        <!-- ?????? 10????????? ?????? ?????? -->
        <c:if test="${pend != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${pend+1}"> >> </a>
        </c:if>
        <c:if test="${pend == pagecnt}">
          >>
        </c:if>
        <!-- ?????? 10????????? ?????? ??? -->
       <!-- ?????? ????????? ?????? ??? -->
	 </div>
    </c:if>
    <!-- ???????????? ???-->
    <!-- ????????? -->
    <c:if test="${chk==2}"> 
    <c:forEach items="${rdto2}" var="rdto2">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
	 <!-- ???????????? ??? ?????? -->
 	<div id="review_update1_${rdto2.id}" style="visibility:hidden; position:absolute; left:600px; top:1000px; width:600px; height:500px; background:white; border:1px solid orange;">
	<form method="post" action="/project/rupdate_ok">
	 <p align="right"> <button type="button" onclick="hide_review_update1(${rdto2.id})"> X ?????? </button> </p>
 	 <h3>?????? ????????????</h3>
	 <input type="hidden" name="cid" value="${id}">
	 <input type="hidden" name="id" id="id" value="${rdto2.id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="aa" value="${aa}">
	 <input type="hidden" name="prd_name" value="${rdto2.prd_name}"> 
	 <input type="hidden" name="userid" value="test">
	 ?????????: ${rdto2.prd_name}<p>
	?????????: ${rdto2.userid} <p>
	 ??????
	 <input type="checkbox" name="rating" value="1"> 1???
	 <input type="checkbox" name="rating" value="2"> 2???
	 <input type="checkbox" name="rating" value="3"> 3???
	 <input type="checkbox" name="rating" value="4"> 4???
	 <input type="checkbox" name="rating" value="5"> 5???
	 <br>
	 ?????? <textarea rows="4" cols="30" name="content">${rdto2.content}</textarea>
	 <input type="submit" value="????????????">
	</form>
	</div>
 	<!-- ???????????? ??? ??? -->
 		
		<span class="">
		<c:if test="${rdto2.rating == 1}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating1.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto2.rating == 2}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating2.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto2.rating == 3}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating3.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto2.rating == 4}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating4.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto2.rating == 5}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating5.png" border="0" alt="??????">
		</c:if>
		</span>
		<c:if test="${rdto2.best == 1}">
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;&nbsp;???????????????&nbsp;</strong> </span>
		</c:if>
		&nbsp;
		<c:if test="${rdto2.dap_content != null}">
			<span class="dap_1" style="border:2px solid silver; border-radius:40px; font-size:14px; color:silver;"> <strong>&nbsp;????????????&nbsp;</strong> </span>
		</c:if>
		<p>
		<div style="display:inline-block; padding-top:20px; padding-bottom:20px;">
		<span class="userid">${rdto2.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto2.regdate}</span>
		</div>
		
		<span class="hugi_change" style="padding-left:450px;">
		<c:if test="${userid == rdto2.userid}">
		<a onclick="show_review_update1(${rdto2.id})" style="cursor:pointer;">??????</a> &nbsp;
		<a href="/project/product/rdelete?id=${rdto2.id}&cid=${id}&chk=${chk}&aa=aa" style="cursor:pointer;">??????</a>
		</c:if>
		<c:if test="${userid == 'admin'}">
		<c:if test="${rdto2.dap_content != null}">
		<a onclick="show_review_dap_update1(${rdto2.id})" style="text-decoration:none;color:black;cursor:pointer;">????????????</a> &nbsp;
		</c:if>
		<c:if test="${rdto2.dap_content == null}">
		<a onclick="show_review_dap_update1(${rdto2.id})" style="text-decoration:none;color:black;cursor:pointer;">????????????</a> &nbsp;
		</c:if>
		<a href="/project/product/rdelete?id=${rdto2.id}&cid=${id}&chk=${chk}&aa=aa" style="text-decoration:none;color:black;cursor:pointer;">??????</a>
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
		<strong> ?????? ??????</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto2.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content"></textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="????????????">
			<input type="button" onclick="close_review_dap(${rdto2.id})" value="??????">
			</div>
		</form>
		</div>
		</div>
		</c:if>
		
		<c:if test="${rdto2.dap_content != null}">
		<div class="prd_review_more" id="prd_review_more${rdto2.id}">
		<a onclick="show_dap(${rdto2.id})">
		?????????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="?????????">
		</a>
		</div>
		<div class="dap" id="dap${rdto2.id}">
		<br>
		<div id="admin_dap${rdto2.id}">
		<span class="admin_id">?????????</span>
		<span> | </span>
		<span class="dap_regdate">${rdto2.dap_regdate}</span>

		<div class="dap_cnt">${rdto2.dap_content}</div>
		</div>
		<div class="prd_review_more" id="prd_review_more${rdto2.id}">
		<div id="review_dap_write${rdto2.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_update_ok">
		<strong> ?????? ??????</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto2.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content">${rdto2.dap_content}</textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="????????????">
			<input type="button" onclick="close_review_dap(${rdto2.id})" value="??????">
			</div>
		</form>
		</div>
		</div>
		
		<br>
		<div class="prd_review_fold" id="prd_review_fold${rdto2.id}">
		<a onclick="hide_dap(${rdto2.id})">
		??????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="??????">
		</a>
		</div>
		</div>
		</c:if>
	 </li>
	 <br>
	 
    </c:forEach>
    
     <div id="pager" style="text-align:center;width:1500px;">
	  <!-- ?????? ????????? ?????? -->
         <!-- 10????????? ?????? ?????? ?????? -->
          <c:if test="${pstart != 1}">
           <a href="content?id=${id}&chk=${chk}&aa=aa&page=${pstart-1}"> << </a>
          </c:if>
          <c:if test="${pstart == 1}">
           <<
          </c:if>
         <!-- 10????????? ?????? ?????? ??? -->
         
         <!-- 1????????? ?????? ?????? (????????????????????? 1????????? ??????) -->
         <c:if test="${page > 1}">
          <a href="content?id=${id}&chk=${chk}&aa=aa&page=${page-1}"> < </a>  
         </c:if>
         <c:if test="${page == 1}"> 
          <      
         </c:if>
         <!-- 1????????? ?????? ?????? ??? -->
       <!-- ?????? ????????? ?????? ??? -->
       <c:forEach begin="${pstart}" end="${pend}" var="i">
        <c:if test="${page == i}">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${i}" style="color:red;"> ${i} </a>
        </c:if>
        <c:if test="${page != i}">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${i}"> ${i} </a>
        </c:if>
       </c:forEach>
       
       <!-- ?????? ????????? ?????? -->
        <!-- ?????? 1????????? ?????? -->
        <c:if test="${page != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${page+1}"> > </a>
        </c:if>
        <c:if test="${page == pagecnt}"> 
         >
        </c:if>
        <!-- ?????? 1????????? ?????? ??? -->
        
        <!-- ?????? 10????????? ?????? ?????? -->
        <c:if test="${pend != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aa&page=${pend+1}"> >> </a>
        </c:if>
        <c:if test="${pend == pagecnt}">
          >>
        </c:if>
        <!-- ?????? 10????????? ?????? ??? -->
       <!-- ?????? ????????? ?????? ??? -->
	 </div>
    
    </c:if>
    
    
    <!-- ????????? ???-->
    <!-- ????????? -->
    <c:if test="${chk==3}"> 
    <c:forEach items="${rdto3}" var="rdto3">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
	  <!-- ???????????? ??? ?????? -->
 	<div id="review_update1_${rdto3.id}" style="visibility:hidden; position:absolute; left:600px; top:1000px; width:600px; height:500px; background:white; border:1px solid orange;">
	<form method="post" action="/project_first/rupdate_ok">
	 <p align="right"> <button type="button" onclick="hide_review_update1(${rdto3.id})"> X ?????? </button> </p>
 	 <h3>?????? ????????????</h3>
	 <input type="hidden" name="cid" value="${id}">
	 <input type="hidden" name="id" id="id" value="${rdto3.id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="aa" value="${aa}">
	 <input type="hidden" name="prd_name" value="${rdto3.prd_name}"> 
	 <input type="hidden" name="userid" value="test">
	 ?????????: ${rdto3.prd_name}<p>
	?????????: ${rdto3.userid} <p>
	 ??????
	 <input type="checkbox" name="rating" value="1"> 1???
	 <input type="checkbox" name="rating" value="2"> 2???
	 <input type="checkbox" name="rating" value="3"> 3???
	 <input type="checkbox" name="rating" value="4"> 4???
	 <input type="checkbox" name="rating" value="5"> 5???
	 <br>
	 ?????? <textarea rows="4" cols="30" name="content">${rdto3.content}</textarea>
	 <input type="submit" value="????????????">
	</form>
	</div>
 	<!-- ???????????? ??? ??? -->
		<span class="">
		<c:if test="${rdto3.rating == 1}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating1.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto3.rating == 2}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating2.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto3.rating == 3}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating3.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto3.rating == 4}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating4.png" border="0" alt="??????">
		</c:if>
		<c:if test="${rdto3.rating == 5}">
		<img src="//file.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/rating5.png" border="0" alt="??????">
		</c:if>
		</span>
		<c:if test="${rdto3.best == 1}">
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;&nbsp;???????????????&nbsp;</strong> </span>
		</c:if>
		&nbsp;
		<c:if test="${rdto3.dap_content != null}">
			<span class="dap_1" style="border:2px solid silver; border-radius:40px; font-size:14px; color:silver;"> <strong>&nbsp;????????????&nbsp;</strong> </span>
		</c:if>
		<p>
		
		<div style="display:inline-block; padding-top:20px; padding-bottom:20px;">
		<span class="userid">${rdto3.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto3.regdate}</span>
		</div>
		
		<span class="hugi_change" style="padding-left:450px;">
		<c:if test="${userid == rdto3.userid}">
		<a onclick="show_review_update1(${rdto3.id})" style="cursor:pointer;">??????</a> &nbsp;
		<a href="/project/product/rdelete?id=${rdto3.id}&cid=${id}&chk=${chk}&aa=aa" style="cursor:pointer;">??????</a>
		</c:if>
		<c:if test="${userid == 'admin'}">
		<c:if test="${rdto3.dap_content != null}">
		<a onclick="show_review_dap_update1(${rdto3.id})" style="text-decoration:none;color:black;cursor:pointer;">????????????</a> &nbsp;
		</c:if>
		<c:if test="${rdto3.dap_content == null}">
		<a onclick="show_review_dap_update1(${rdto3.id})" style="text-decoration:none;color:black;cursor:pointer;">????????????</a> &nbsp;
		</c:if>
		<a href="/project/product/rdelete?id=${rdto3.id}&cid=${id}&chk=${chk}&aa=aa" style="text-decoration:none;color:black;cursor:pointer;">??????</a>
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
		<strong> ?????? ??????</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto3.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content"></textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="????????????">
			<input type="button" onclick="close_review_dap(${rdto3.id})" value="??????">
			</div>
		</form>
		</div>
		</div>
		</c:if>
		
		<c:if test="${rdto3.dap_regdate != null}">
		<div class="prd_review_more" id="prd_review_more${rdto3.id}">
		<a onclick="show_dap(${rdto3.id})">
		?????????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="?????????">
		</a>
		</div>
		<div class="dap" id="dap${rdto3.id}">
		<br>
		<div id="admin_dap${rdto3.id}">
		<span class="admin_id">?????????</span>
		<span> | </span>
		<span class="dap_regdate">${rdto3.dap_regdate}</span>
		<div class="dap_cnt">${rdto3.dap_content}</div>
		</div>
		
		<div class="prd_review_more" id="prd_review_more${rdto3.id}">
		<div id="review_dap_write${rdto3.id}" class="review_dap_write" style="margin-top:20px;">
		<form method="post" action="/project/review_dap_update_ok">
		<strong> ?????? ??????</strong>
			<input type="hidden" name="cid" value="${id}">
			<input type="hidden" name="id" value="${rdto3.id}">
			<input type="hidden" name="chk" value="${chk}">
			<input type="hidden" name="aa" value="${aa}">
			<input type="hidden" name="bb" value="${bb}">
			<div style="margin-left:30px; margin-top:20px;">
			<textarea rows="4" cols="90" name="dap_content">${rdto3.dap_content}</textarea>
			</div>
			<div style="margin-left:30px; margin-top:20px;">
			<input type="submit" value="????????????">
			<input type="button" onclick="close_review_dap(${rdto3.id})" value="??????">
			</div>
		</form>
		</div>
		</div>
		
		
		<div class="prd_review_fold" id="prd_review_fold${rdto3.id}">
		<a onclick="hide_dap(${rdto3.id})">
		??????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="??????">
		</a>
		
		</div>
		</div>
		</c:if>
	 </li>
	 <br>
    </c:forEach>
    <div id="pager" style="text-align:center;width:1500px;">
	  <!-- ?????? ????????? ?????? -->
         <!-- 10????????? ?????? ?????? ?????? -->
          <c:if test="${pstart != 1}">
           <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${pstart-1}"> << </a>
          </c:if>
          <c:if test="${pstart == 1}">
           <<
          </c:if>
         <!-- 10????????? ?????? ?????? ??? -->
         
         <!-- 1????????? ?????? ?????? (????????????????????? 1????????? ??????) -->
         <c:if test="${page > 1}">
          <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${page-1}"> < </a>  
         </c:if>
         <c:if test="${page == 1}"> 
          <      
         </c:if>
         <!-- 1????????? ?????? ?????? ??? -->
       <!-- ?????? ????????? ?????? ??? -->
       <c:forEach begin="${pstart}" end="${pend}" var="i">
        <c:if test="${page == i}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${i}" style="color:red;"> ${i} </a>
        </c:if>
        <c:if test="${page != i}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${i}"> ${i} </a>
        </c:if>
       </c:forEach>
       
       <!-- ?????? ????????? ?????? -->
        <!-- ?????? 1????????? ?????? -->
        <c:if test="${page != pagecnt }">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${page+1}"> > </a>
        </c:if>
        <c:if test="${page == pagecnt}"> 
         >
        </c:if>
        <!-- ?????? 1????????? ?????? ??? -->
        
        <!-- ?????? 10????????? ?????? ?????? -->
        <c:if test="${pend != pagecnt}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${pend+1}"> >> </a>
        </c:if>
        <c:if test="${pend == pagecnt}">
          >>
        </c:if>
        <!-- ?????? 10????????? ?????? ??? -->
       <!-- ?????? ????????? ?????? ??? -->
	 </div>
    
    </c:if>
    </ul>
    </div>
    </div>
    </div>
    <!-- ????????? ??? --> 
 <!-- ???????????? ??? -->
 <!-- ???????????? ?????? -->
 <div class="qna" id="qna" style="padding-bottom:300px;">
 	<div id="qna_top_menu">
 	<span class="tit"><strong><a id="fst">????????????</a> <a id="snd">(${qna_count}???)</a></strong></span>
    <span id="qna_menu_right">
    <a href="#" id="fst"><span class="onetoone">1:1 ???????????????</span></a>
    <c:if test="${userid != null}">
    <a onclick="show_qna_write()" id="snd"> <span class="qna_write">?????? ???????????? </span> </a>
    </c:if>
    <c:if test="${userid == null}">
    <a onclick="before_qna_write_login_first()" id="snd"> <span class="qna_write">?????? ???????????? </span> </a>
    </c:if>
    </span>
    </div>
 	<c:forEach items="${qlist}" var="qlist">
 		<div id="qna_font" style="border:1px solid gray">
	 	<div id="qna_top">
	 	<span id="qna_dapyn">
	 	<c:if test="${qlist.dap_content != null}">
	 	 <span id="dapyn" style="color:orange;"> ???????????? </span>
	 	</c:if>
	 	<c:if test="${qlist.dap_content == null}">
	 	 <span id="dapyn" style="color:silver;"> ??????????????? </span>
	 	</c:if>
	 	</span>
	 	
	 	<span id="qna_title">
	 	<c:if test="${qlist.state == 0}">
	 	 <a href="javascript:show_qna_dap(${qlist.id})" style="text-decoration:none;color:black;">
	 	 <c:if test="${qlist.qna_cate == 0}">
	 	 [????????????] ?????????.
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 1}">
	 	 [????????????] ?????????.
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 2}">
	 	 [????????????] ?????????.
	 	 </c:if>
	 	 </a>
	 	 </c:if>
	 	 
	 	 <c:if test="${qlist.state == 1}">
	 	 <c:if test="${userid == qlist.userid || userid == 'admin'}">
	 	 <a id="qna_secret" href="javascript:show_qna_dap(${qlist.id})" style="text-decoration:none;color:black;">
	 	 <c:if test="${qlist.qna_cate == 0}">
	 	 [????????????] ?????????. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 1}">
	 	 [????????????] ?????????. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 2}">
	 	 [????????????] ?????????. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 </a>
	 	 </c:if>
	 	 
	 	 <c:if test="${userid != qlist.userid && userid != 'admin'}">
	 	 <a id="qna_secret" href="javascript:qna_secret()" style="text-decoration:none;color:black;">
	 	 <c:if test="${qlist.qna_cate == 0}">
	 	 [????????????] ?????????. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 1}">
	 	 [????????????] ?????????. <img src="../resources/product/a.png" width="25" height="25">
	 	 </c:if>
	 	 <c:if test="${qlist.qna_cate == 2}">
	 	 [????????????] ?????????. <img src="../resources/product/a.png" width="25" height="25">
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
	 	 <span id="qna_admin"><strong>?????????</strong></span>&nbsp;
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
	 	<a onclick="show_qna_update(${qlist.id})"><span>??????</span></a>
	 	<a onclick="qna_delete(${qlist.id},${id})"><span>??????</span></a>
	 	</c:if>
	 	<c:if test="${userid == 'admin'}">
	 	<a onclick="qna_delete(${qlist.id},${id})"><span>??????</span></a>
	 	<c:if test="${qlist.dap_content == null}">
	 	<a onclick="qna_dap_write(${qlist.id})"><span>????????????</span></a>
	 	</c:if>
	 	<c:if test="${qlist.dap_content != null}">
	 	<a onclick="qna_dap_update(${qlist.id})"><span>????????????</span></a>
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
	 	<input type="submit" value="????????????" onclick="hide_qna_dap_write()">
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
	 	<input type="submit" value="????????????" onclick="hide_qna_dap_update()">
	 	</div>
	 	</form>
	 	</div>
	 	</div>
	 	</div>
	 	<br>
	 	<!-- ???????????? ??? ??????-->
	 <div id="qna_update${qlist.id}" class="qna_update">
	<form method="post" action="/project_first/qupdate_ok">
		<p align="right"> <button type="button" onclick="hide_qna_update(${qlist.id})"> X ?????? </button> </p>
 	<h3>????????????</h3>
	 <input type="hidden" name="cid" value="${id}">
	 <input type="hidden" name="id" value="${qlist.id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="prd_name" value="${qlist.prd_name}"> 
	 <input type="hidden" name="userid" value="test">
	 <div>
	 	<span id="qwrite_radio">
		 <input type="radio" name="qna_cate" value="0">
		 <label for="prd">????????????</label> 
		 <input type="radio" name="qna_cate" value="1">
		 <label for="deli">????????????</label> 
		 <input type="radio" name="qna_cate" value="2">
		 <label for="etc">????????????</label>
		</span>
		<span id="qwrite_warning">
		 ?????????????????? ??? ??????????????????.
		</span>
		<span id="qwrite_state">
		 <input type="checkbox" name="state" value="1">
		 ?????????
		</span>
	 </div>
	 <div id="qwrite_content">
	  <textarea rows="4" cols="130" name="content">${qlist.content}</textarea>
	 </div>
	 <div>
	  <ul style="color:gray;">
	  	<li>????????????????????? ????????? ????????? ????????? ???????????? ????????????.</li>
	  	<li>????????????,??????,?????? ?????? <a style="color:orange; text-decoration:underline; cursor:pointer;">1:1???????????????</a>??? ?????? ????????????????????? ????????????.</li>
	  	<li>?????????,???????????? ?????? ?????????,??????,?????????,??????????????? ????????? ?????? ???????????? ??????????????? ????????? ????????? ??? ????????????.</li>
	  </ul>
	  <input type="submit" value="??????" onclick="qupdate_success()">
	 </div>
	 
	</form>
	</div>
 <!-- ???????????? ??? ??? -->
 	</c:forEach>
 	
 	  <div id="pager" style="text-align:center;width:1500px;">
	  <!-- ?????? ????????? ?????? -->
         <!-- 10????????? ?????? ?????? ?????? -->
          <c:if test="${pstart1 != 1}">
           <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${pstart1-1}"> << </a>
          </c:if>
          <c:if test="${pstart1 == 1}">
           <<
          </c:if>
         <!-- 10????????? ?????? ?????? ??? -->
         
         <!-- 1????????? ?????? ?????? (????????????????????? 1????????? ??????) -->
         <c:if test="${page1 > 1}">
          <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${page1-1}"> < </a>  
         </c:if>
         <c:if test="${page1 == 1}"> 
          <      
         </c:if>
         <!-- 1????????? ?????? ?????? ??? -->
       <!-- ?????? ????????? ?????? ??? -->
       <c:forEach begin="${pstart1}" end="${pend1}" var="i">
        <c:if test="${page1 == i}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${i}" style="color:red;"> ${i} </a>
        </c:if>
        <c:if test="${page1 != i}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${i}"> ${i} </a>
        </c:if>
       </c:forEach>
       
       <!-- ?????? ????????? ?????? -->
        <!-- ?????? 1????????? ?????? -->
        <c:if test="${page1 != pagecnt1 }">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${page1+1}"> > </a>
        </c:if>
        <c:if test="${page1 == pagecnt1}"> 
         >
        </c:if>
        <!-- ?????? 1????????? ?????? ??? -->
        
        <!-- ?????? 10????????? ?????? ?????? -->
        <c:if test="${pend1 != pagecnt1}">
         <a href="content?id=${id}&chk=${chk}&aa=aaa&page=${pend1+1}"> >> </a>
        </c:if>
        <c:if test="${pend1 == pagecnt1}">
          >>
        </c:if>
        <!-- ?????? 10????????? ?????? ??? -->
       <!-- ?????? ????????? ?????? ??? -->
	 </div>
 	
 </div>
 <!-- ???????????? ??? -->
 <!-- ???????????? ?????? -->
  <div class="deli" id="deli" style="padding-bottom:300px;">
 	<img src="../resources/deli_img/deli1.png">
 	<img src="../resources/deli_img/deli2.png">
 </div>
 
 <!-- ???????????? ??? -->
 <!-- ???????????? ??? ??????-->
 <div id="review_write">
	<form method="post" action="/project/rwrite_ok"  enctype="multipart/form-data">
		<p align="right"> <button type="button" onclick="hide_write()"> X ?????? </button> </p>
 	<h3>?????? ????????????</h3>
	 <input type="hidden" name="id" value="${id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="aa" value="${aa}">
	 <input type="hidden" name="prd_name" value="${bdto.prd_name}"> 
	 <input type="hidden" name="userid" value="${userid}">
	 ?????????: ${bdto.prd_name} <p>
	?????????: ${userid} <p>
	 ??????
	 <input type="checkbox" name="rating" value="1"> 1???
	 <input type="checkbox" name="rating" value="2"> 2???
	 <input type="checkbox" name="rating" value="3"> 3???
	 <input type="checkbox" name="rating" value="4"> 4???
	 <input type="checkbox" name="rating" value="5"> 5???
	 <p>
	 <input type="file" name="hugi_img">
	 <p>
	 ?????? <textarea rows="4" cols="30" name="content" placeholder="10??? ?????? ??????????????????."></textarea>
	 <input type="submit" value="????????????">
	</form>
	</div>
 <!-- ???????????? ??? ??? -->
 
 <!-- ???????????? ??? ??????-->
 <div id="qna_write">
	<form method="post" action="/project_first/qwrite_ok">
		<p align="right"> <button type="button" onclick="hide_qna_write()"> X ?????? </button> </p>
 	<h3>????????????</h3>
	 <input type="hidden" name="id" value="${id}">
	 <input type="hidden" name="chk" value="${chk}">
	 <input type="hidden" name="bb" value="bb">
	 <input type="hidden" name="prd_name" value="${bdto.prd_name}"> 
	 <input type="hidden" name="userid" value="${userid}">
	 <div>
	 	<span id="qwrite_radio">
		 <input type="radio" name="qna_cate" value="0">
		 <label for="prd">????????????</label> 
		 <input type="radio" name="qna_cate" value="1">
		 <label for="deli">????????????</label> 
		 <input type="radio" name="qna_cate" value="2">
		 <label for="etc">????????????</label>
		</span>
		<span id="qwrite_warning">
		 ?????????????????? ??? ??????????????????.
		</span>
		<span id="qwrite_state">
		 <input type="checkbox" name="state" value="1">
		 ?????????
		</span>
	 </div>
	 <div id="qwrite_content">
	  <textarea rows="4" cols="130" name="content" placeholder="???????????? ?????? ??????????????? 1:1?????????????????? ??????????????????."></textarea>
	 </div>
	 <div>
	  <ul style="color:gray;">
	  	<li>????????????????????? ????????? ????????? ????????? ???????????? ????????????.</li>
	  	<li>????????????,??????,?????? ?????? <a style="color:orange; text-decoration:underline; cursor:pointer;">1:1???????????????</a>??? ?????? ????????????????????? ????????????.</li>
	  	<li>?????????,???????????? ?????? ?????????,??????,?????????,??????????????? ????????? ?????? ???????????? ??????????????? ????????? ????????? ??? ????????????.</li>
	  </ul>
	  <input type="submit" value="??????">
	 </div>
	 
	</form>
	</div>
 <!-- ???????????? ??? ??? -->
</body>
</html>