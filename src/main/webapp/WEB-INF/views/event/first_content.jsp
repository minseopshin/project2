<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.tot
	{
		position:absolute;
		align:center;
		width:1000px;
	}
	.prdimg
	{
		position:absolute;
		top:200px;
		left:400px;
	}
	.refrigerator_banner img
	{
		padding-top:15px;
	}
	.info
	{
		position:absolute;
		top:175px;
		left:920px;
		width:500px;
		text-align:left;
	}
	.info p
	{
		font-size:25px;
		
	}
	.btn
	{
		position:absolute;
		top:650px;
		left:920px;
		width:500px;
	}
	.sell_prc
	{
		font-size:28px;
		text-align:center;
		top:0px;
	}
	.prc_txt
	{
		position:absolute;
		left:0px;
	}
	.tot_prc
	{
		font-size:25px;
		text-align:right;
		top:0px;
		padding-right:100px;
		padding-top:175px;
	}
	.tot_prc_txt
	{
		position:absolute;
		left:50px;
		padding-left:150px;
		padding-top:185px;
	}
	.cart {display:inline-block; background: #fff; color:#ff7827; border:1px solid #ff7827; text-decoration:none; width:130px; padding-top:20px; padding-bottom:20px; text-align:center;}
    .buy {display:inline-block; color:#fff; background: #ff7827; border:1px solid #ff7827; text-decoration:none; width:130px; padding-top:20px; padding-bottom:20px; text-align:center;}
    #wishBtn{display:inline-block; color:silver; border:1px solid silver; width:130px; text-decoration:none; text-align:center; padding-top:20px; padding-bottom:20px;}
    .alert_btn {padding-top:11px;}
    .alert_btn a {width:67px; height:32px; line-height:32px; text-align: center; border-radius: 3px;}
    
    .tab_tab_detail {width:1000px; height:60px; position:absolute; left:368px; top:942px;}
    .tab_tab_detail li {display:inline-block; margin:0px auto; width:196px; list-style-type:none; text-align:center; background:silver;}
    /* #detail_info {z-index:1;} */
    .hugi_hide {display:none; position:absolute; top:1009px; left:408px; width:800px;}
    .hugi_lists li {list-style-type:none; padding:0px;}
    .hugi_list .info {padding:0px;}
    .hugi_img{top:10px;}
    .dap {display:none;}
    .prd_review_more a {cursor:pointer;}
    .prd_review_fold a {cursor:pointer;}
    #rev_menu_right {padding-left:400px;}
    #rev_menu_right span {border:1px solid black; display:inline;}
    #a {margin-left:0px; background:blue; padding:0px;}
</style>
<script>
// ???????????? ?????? ????????? ??????
function closeCartPopup(){
    $('.cart_alert_wrap').hide();
}
function cart(){	
	if(confirm('??????????????? ?????????????????????????')==true)
	{
		alert('??????????????? ?????????????????????.');
	}
}
function buy(){
	if(confirm('?????????????????????????')==true)
	{
		location.href='/project_first/plist'; //test ??????
	}
	else
	{
		alert('?????????????????????.');
	}
}

function heart(b){
	var a=confirm('??????????????????????')
	if(a)
	{
		location.href='/project_first/heart?id='+b; //test ??????
	}
	else
	{
		alert('?????????????????????.');
	}
}
function show_detail_info(){
	document.getElementById("detail_info").style.display="inline-block";
	document.getElementById("hugis").style.display="none";
	document.getElementById().style.display="none";
	document.getElementById().style.display="none";
}
function show_hugis(){
	document.getElementById("detail_info").style.display="none";
	document.getElementById("hugis").style.display="inline-block";
	document.getElementById().style.display="none";
	document.getElementById().style.display="none";
}
function show_dap(id){
	document.getElementById("dap"+id).style.display="inline-block";
	document.getElementById("prd_review_more"+id).style.display="none";
}
function hide_dap(id){
	document.getElementById("dap"+id).style.display="none";
	document.getElementById("prd_review_more"+id).style.display="inline-block";
}
/* function tabmove(no) {
    setscrollTopStop(false);
    if(no == 0){
         $('.tabcnt_detail').show();
    }else {
         $('.tabcnt_detail').hide();
         $('.tabcnt_detail'+no).show();
    }
    $('#detail .wrap_info').removeClass('detail0 detail1 detail2 detail3').addClass('detail'+no);
    $('#header .tab_detail li').eq(no).addClass('active').siblings().removeClass('active');
    $('#detail .tab_detail li').eq(no).addClass('active').siblings().removeClass('active');
//		$('.purchase_bar').removeAttr("style").removeClass('footerY');
//		if($('.tabcnt_detail:visible').height() > 800) $('.purchase_bar').addClass('fixed');
    var pos = Math.floor($('#detail .tab_area').offset().top);
	// var pos2 = pos - 176;
	var pos3 = pos - 56;
	var duration = 0;

	
	$('html, body').animate({scrollTop: pos3}, duration, function(){
		$('#wrapper').removeClass('scroll');
	});
 */


</script>
</head>
<body>
${chk}
<div class="tot">
	 <div class="prdimg  ">
                <div id="mimg_div" class="img"><img id="mainImg" src="${bdto.prd_img}" width="480px" height="480px"></div>
                
                <a href="javascript:;" class="refrigerator_banner">
                    <img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/refrigerator_banner2.jpg" alt="??????????????????">
                </a>
                
            </div>
            <!-- //?????? ????????? -->
            <!-- ???????????? & ?????? -->
            <div class="info  ">
                <div class="box">
                    <p class="name" style="padding-bottom:20px;"><strong>${bdto.prd_name}</strong></p>
                    <dl class="price">
                        <dd>
                            <dl>
                            
                                <dt class="prc_txt" style="color:silver;text-align:left;"><strong>?????????</strong></dt>
                                <dd class="sell_prc"><strong>100</strong>???</dd> <span>${btdo.price}</span>
                                <p>
                                <dt class="prc_txt" style="color:silver;text-align:left;"><strong>?????????(?????????)</strong></dt>
                                <dd class="sell_prc"><strong>${bdto.readnum}</strong>???</dd>
                                <p>
                                <dt class="tot_prc_txt" style="text-align:left;">??? ????????????</dt>
                                <dd class="tot_prc"><strong>100</strong>???</dd>
                             
                            </dl>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="btn">
                       
                        <a class="cart" id="cartBtn" href="javascript:cart()" onclick="">????????????</a>
                        <a class="buy" href="javascript:buy()" onclick="">????????????</a>
                        
                        
                        
                        <a class="wish wishIconClass" id="wishBtn" href="#" onclick="heart(${bdto.id})">???(${bdto.heart})</a>
                    </div>
                    <div></div>
                    <!-- //?????? -->
<br>
<br>
</div>
<!-- ?????? ?????? ??? ?????? -->
 <div class="tab_area">
                <ul class="tab_tab_detail">
                    <li onclick="tabmove('0')" class="active">
                        <p class="li"><span class="title" onclick="show_detail_info()" style="cursor:pointer;">????????????</span></p>
                    </li>
                    <li onclick="tabmove('1')">
                        <p class="li"><span class="title" onclick="show_hugis()" style="cursor:pointer;">????????????</span><span class="count_review">(${review_count})</span></p>
                    </li>
                    <li onclick="tabmove('2')">
                        <p class="li"><span class="title">????????????</span><span class="count_qna">(${qna_count})</span></p>
                    </li>
                    <li onclick="tabmove('3')">
                        <p class="li"><span class="title">????????????</span></p>
                    </li>
                </ul>
            </div>
<!-- ?????? ?????? ??? ??? -->            
 <!-- ???????????? ????????? ?????? -->
 <div class="detail_wrap_info" id="detail_info" style="padding-bottom:300px;">
                <!-- ?????????????????? -->
                <div class="tabcnt_detail tabcnt_detail0">
                                       
                    <div class="detail_info1"><div style="margin: 0px auto; width: 100%; max-width: 800px; padding-top:1000px; margin-left:400px;">

	<img style="width: 100%;" alt="????????????" src="https://file.rankingdak.com/store/store/notice/notice_all.png/dims/resize/800"><br>
	<img style="width: 100%;" alt="???????????????" src="https://file.rankingdak.com/store/nao/banner/notice_all.png/dims/resize/800"><br>
	
	<img style="width: 100%;" alt="????????????" src="https://file.rankingdak.com/store/nao/item/nao3132833m/notice_all.png/dims/resize/800"><br>
	
	<img style="width: 100%;" alt="??????1" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_01.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????2" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_02.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????3" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_03.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????4" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_04.jpg/dims/resize/800"><br>
        <img style="width: 100%;" alt="??????5" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_05.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????6" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_06.jpg/dims/resize/800"><br>
	<img style="width: 100%;" alt="??????7" src="https://file.rankingdak.com/store/nao/item/nao3132833m/nao3132833m_07.jpg/dims/resize/800"><br><br>
	
        		</div>
        </div>
        </div>
        </div>
 <!-- ???????????? ????????? ???-->      
 <!-- ???????????? ?????? -->
 <div class="hugi_hide" id="hugis" style="border:1px solid red; padding-bottom:300px;">
    <img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/shop/refrigerator_banner.jpg" alt="??????????????????" width="800">     
    <div class="hugi_content"><div style="margin: 0px auto; width: 100%; max-width: 800px; padding-top:10px; margin-left:0px;">
    <div class="top_rev_menu">
    <span class="tit">????????????(${review_count}???)</span>
    <span id="rev_menu_right">
    <span class="orderbybest" id="a" onclick="content?id=${id}&chk=1">????????????</span>
    <span class="orderbyrating" id="a" onclick="content?id=${id}&chk=3">?????????</span>
    <span class="orderbydate" id="a" onclick="content?id=${id}&chk=2">?????????</span> &nbsp;&nbsp;&nbsp;
    <span class="hugi_write"><a href="#">?????? ??????</a></span>
    </span>
    </div>
        <!-- ????????? ??? -->
    <ul class="hugi_lists" style="border:1px solid blue;">
    <c:if test="${chk==1}"> 
	<c:forEach items="${rdto1}" var="rdto1">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
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
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;???????????????&nbsp;</strong> </span>
		</c:if>
		<c:if test="${rdto1.dap_content != ''}">
			<span class="dap_1" style="border-radius:40px silver; color:silver;"> ???????????? </span>
		</c:if>
		<p>
		<span class="userid">${rdto1.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto1.regdate}</span>

		<span class="hugi_img"><img src="${bdto.prd_img}" width="750" height="600"></span>

		<div class="cnt"><span>${rdto1.content}</span></div>

		<div class="prd_review_more" id="prd_review_more${rdto1.id}">
		<a onclick="show_dap(${rdto1.id})">
		?????????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="?????????">
		</a>
		</div>
		<div class="dap" id="dap${rdto1.id}">
		<br>
		<span class="admin_id">?????????</span>
		<span> | </span>
		<span class="dap_regdate">${rdto1.dap_regdate}</span>

		<div class="dap_cnt">${rdto1.dap_content}</div>
		
		<br>
		<div class="prd_review_fold" id="prd_review_fold${rdto1.id}">
		<a onclick="hide_dap(${rdto1.id})">
		??????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="??????">
		</a>
		</div>
		</div>
	 </li>
	 <br>
    </c:forEach>
    </c:if>
    <!-- ???????????? ???-->
    <!-- ????????? -->
    <c:if test="${chk==2}"> 
    <c:forEach items="${rdto2}" var="rdto2">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
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
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;???????????????&nbsp;</strong> </span>
		</c:if>
		<c:if test="${rdto2.dap_content != ''}">
			<span class="dap_1" style="border-radius:40px silver; color:silver;"> ???????????? </span>
		</c:if>
		<p>
		<span class="userid">${rdto2.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto2.regdate}</span>

		<span class="hugi_img"><img src="${bdto.prd_img}" width="750" height="600"></span>

		<div class="cnt"><span>${rdto2.content}</span></div>

		<div class="prd_review_more" id="prd_review_more${rdto2.id}">
		<a onclick="show_dap(${rdto2.id})">
		?????????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="?????????">
		</a>
		</div>
		<div class="dap" id="dap${rdto2.id}">
		<br>
		<span class="admin_id">?????????</span>
		<span> | </span>
		<span class="dap_regdate">${rdto2.dap_regdate}</span>

		<div class="dap_cnt">${rdto2.dap_content}</div>
		
		<br>
		<div class="prd_review_fold" id="prd_review_fold${rdto2.id}">
		<a onclick="hide_dap(${rdto2.id})">
		??????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="??????">
		</a>
		</div>
		</div>
	 </li>
	 <br>
    </c:forEach>
    </c:if>
    <!-- ????????? ???-->
    <!-- ????????? -->
    <c:if test="${chk==3}"> 
    <c:forEach items="${rdto3}" var="rdto3">
	 <li class="hugi_list" style="border:2px; border-color:silver white white white; padding-top:10px; padding-bottom:10px;">
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
			<span class="best" style="border:2px solid orange; border-radius:40px; font-size:14px; color:orange;"> <strong>&nbsp;???????????????&nbsp;</strong> </span>
		</c:if>
		<c:if test="${rdto3.dap_content != ''}">
			<span class="dap_1" style="border-radius:40px silver; color:silver;"> ???????????? </span>
		</c:if>
		<p>
		<span class="userid">${rdto3.userid}</span>
		<span class=""> | </span>
		<span class="regdate">${rdto3.regdate}</span>

		<span class="hugi_img"><img src="${bdto.prd_img}" width="750" height="600"></span>

		<div class="cnt"><span>${rdto3.content}</span></div>

		<div class="prd_review_more" id="prd_review_more${rdto3.id}">
		<a onclick="show_dap(${rdto3.id})">
		?????????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_down.png" alt="?????????">
		</a>
		</div>
		<div class="dap" id="dap${rdto3.id}">
		<br>
		<span class="admin_id">?????????</span>
		<span> | </span>
		<span class="dap_regdate">${rdto3.dap_regdate}</span>

		<div class="dap_cnt">${rdto3.dap_content}</div>
		
		<br>
		<div class="prd_review_fold" id="prd_review_fold${rdto3.id}">
		<a onclick="hide_dap(${rdto3.id})">
		??????
		<img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/ar_up.png" alt="??????">
		</a>
		</div>
		</div>
	 </li>
	 <br>
    </c:forEach>
    </c:if>
    </ul>
    </div>
    </div>
    </div>
    <!-- ????????? ??? --> 
    
 <!-- ???????????? ??? -->
 <!-- ???????????? ?????? -->
 <div class="qna">
 	
 </div>
 <!-- ???????????? ??? -->
 <!-- ???????????? ?????? -->
 
 
 <!-- ???????????? ??? -->

</body>
</html>