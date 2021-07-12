<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<link rel="stylesheet" href="/inc/css/style.css?2020120101">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>고객센터 </title>
<!-- 지우면안댐 -->
<!-- 상단탭에 아이콘 들어가게 만드는 방법!! ▼ shortcut icon 부분만 ! 이용하면 됨 -->
<!-- <link rel="shortcut icon" type="image/x-icon" href="https://www.rankingdak.com/favicon.ico">-->
<link rel="stylesheet" type="text/css" href="https://www.rankingdak.com/_data/wing_new_rankingdak_ver4_temp.css">
<link rel="stylesheet" type="text/css" href="//file.rankingdak.com/js/jquery/jquery-ui.min.css">
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
</script>
<!-- 상단에 아이콘 클릭하면 나오게 하는 자바스크립트임!  -->
<script type="text/javascript" src='//file.rankingdak.com/js/jquery/jquery-1.11.3.min.js'></script>
<script type="text/javascript" src='//file.rankingdak.com/js/jquery/jquery-ui-1.11.3.min.js'></script>

<script type="text/javascript" src='https://www.rankingdak.com/wm_engine_SW/_engine/common/jquery.serializeObject.js'></script>
<script type="text/javascript" src="https://www.rankingdak.com/_skin/new_rankingdak_ver4/script.js?v=20210618114302"></script>
<script type="text/javascript" src="https://www.rankingdak.com/wm_engine_SW/_engine/common/base64.js"></script>
<script type="text/javascript" src="https://www.rankingdak.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript" src="https://www.rankingdak.com/wm_engine_SW/_engine/common/common.js?202106181143"></script>
<script type="text/javascript" src="https://www.rankingdak.com/wm_engine_SW/_engine/common/Custom_w.js?v=20210618114302"></script>
<script type="text/javascript" src="https://www.rankingdak.com/wm_engine_SW/_engine/common/NemoSlider.js?v=20210618114302"></script>
<script type="text/javascript" src="https://www.rankingdak.com/wm_engine_SW/_engine/common/wing.js?v=20210618114302"></script>
<script type="text/javascript" src="https://www.rankingdak.com/wm_engine_SW/_engine/common/count_down.js?v=20210618114302"></script>
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> --><!-- 181224 naturej 주석처리함(위에 jquery-ui있음) -->
<script type="text/javascript" src="//file.rankingdak.com/js/jquery/jquery-ui-1.11.3.min.js"></script>



<style>
:root { -
	-input-padding-x: 1.5rem; 
	-input-padding-y: .75rem;
}

body {
	background-color: white;
	margin:auto;
	text-align:center;	/*글쓰는내용에서는 반드시 추가 */

	
}

.card-signin {
	border: 0;
	border-radius: 1rem;
	box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

.card-signin .card-title {
	margin-bottom: 2rem;
	font-weight: 300;
	font-size: 1.5rem;
}

.card-signin .card-body {
	padding: 2rem;
}

.form-signin {
	width: 100%;
}

.form-signin .btn {
	font-size: 80%;
	border-radius: 5rem;
	letter-spacing: .1rem;
	font-weight: bold;
	padding: 1rem;
	transition: all 0.2s;
}

.form-label-group {
	position: relative;
	margin-bottom: 1rem;
}

.form-label-group input {
	height: auto;
	border-radius: 2rem;
}

.form-label-group>input, .form-label-group>label {
	padding: var(- -input-padding-y) var(- -input-padding-x);
}

.form-label-group>label {
	position: absolute;
	top: 0;
	left: 0;
	display: inline_block;
	width: 100%;
	margin-bottom: 0;
	/* Override default `<label>` margin */
	line-height: 1.5;
	color: #495057;
	border: 1px solid transparent;
	border-radius: .25rem;
	transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
	color: transparent;
}

.form-label-group input:-ms-input-placeholder {
	color: transparent;
}

.form-label-group input::-ms-input-placeholder {
	color: transparent;
}

.form-label-group input::-moz-placeholder {
	color: transparent;
}

.form-label-group input::placeholder {
	color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
	padding-top: calc(var(- -input-padding-y)+ var(- -input-padding-y)* (2/3));
	padding-bottom: calc(var(- -input-padding-y)/3);
}

.form-label-group input:not(:placeholder-shown) ~label {
	padding-top: calc(var(- -input-padding-y)/3);
	padding-bottom: calc(var(- -input-padding-y)/3);
	font-size: 12px;
	color: #777;
}

/* mypage -내 정보/비밀번호 변경 */
.contents.my .myinfo{margin-bottom:13px}
.contents.my .myinfo .fl{position:relative;width:557px;height:156px;background:url('../../img/my/bg_myinfo.gif') no-repeat}
.contents.my .myinfo .fl img{width:102px;height:102px;-webkit-border-radius:51px;-moz-border-radius:51px;border-radius:51px;behavior:url('../js/PIE.htc');overflow:hidden}
.contents.my .myinfo .fl .pic-female{position:absolute;left:61px;top:25px}
.contents.my .myinfo .fl .pic-male{position:absolute;left:336px;top:25px}
.contents.my .myinfo .fl strong{position:absolute;left:173px;top:68px}
.contents.my .myinfo .fl strong.male{position:absolute;left:449px;top:68px}
.contents.my .myinfo .fr{width:167px;height:118px;padding-top:36px;border:1px solid #dedede;text-align:center}
.contents.my .myinfo .fr a{display:inline-block;margin-bottom:7px}

/* mypage - 내 활동 정보 */
.contents.my .myactivity{background:url('../../img/my/bg_myinfo2.gif') no-repeat;height:117px}
.contents.my .myactivity ul{padding-top:22px}
.contents.my .myactivity ul li{float:left;width:336px;padding:0 0 0 28px;height:24px;line-height:24px}
.contents.my .myactivity ul li.mc1,
.contents.my .myactivity ul li.mc2{margin-bottom:26px}
.contents.my .myactivity ul li strong{display:inline-block;padding-left:35px;margin-right:9px}
.contents.my .myactivity ul li.mc1 strong{background:url('../../img/ico/ico_schedule.gif') no-repeat}
.contents.my .myactivity ul li.mc2 strong{background:url('../../img/ico/ico_list.gif') no-repeat}
.contents.my .myactivity ul li.mc3 strong{background:url('../../img/ico/ico_comment.gif') no-repeat}
.contents.my .myactivity ul li.mc4 strong{background:url('../../img/ico/ico_schedule2.gif') no-repeat}
.contents.my .myactivity ul li em{display:inline-block}

/* mypage - 회원정보보기 */
.contents.my .infoview{margin-bottom:30px}
.contents.my .infoview .pic{float:left;width:155px;padding-top:26px;height:127px;border:1px solid #dedede;text-align:center}
.contents.my .infoview .pic img{width:102px;height:102px;-webkit-border-radius:51px;-moz-border-radius:51px;border-radius:51px;behavior:url('../js/PIE.htc');overflow:hidden}
.contents.my .infoview .tbl-y-wrap{float:right;width:569px}
/*20160217 쇼핑몰 추가로 마이페이지 수정- 슬라이드 상단*/
.tab1_1 {margin-top:20px;height:50px;overflow:hidden;margin-bottom:34px;padding-left:300px;}
.tab1_1 li{float:left;width:91px;height:48px} /*20160308 회원탈퇴 추가*/
.tab1_1 li:first-child{width:91px} /*20160308 회원탈퇴 추가*/
.tab1_1 li a{float:left;width:100%;height:100%;line-height:48px;text-align:center;color:#4e4e4e;border:1px solid #dcdcdc;font-weight:bold;font-size:15px;background:#fbfbfb;-webkit-border-top-left-radius:8px;-moz-border-top-left:-radius8px;-border-top-left-radius:8px;-webkit-border-top-right-radius:8px;-moz-border-top-right:-radius8px;-border-top-right-radius:8px;behavior:url('../js/PIE.htc');overflow:hidden}
.tab1_1 li a.active{border:1px solid #ed5258;border-bottom:0 none;height:49px;color:#e11c24;z-index:2;position:relative;background:#fff}


/* 20180917 mypage - 회원탈퇴 수정 */
.contents.my .bye{border:0px solid #cacaca;margin-bottom:18px}
.contents.my .bye ul{width:340px;margin:0 auto;padding:5px 0 10px; border-bottom:0px solid #e3e3e3}
.contents.my .bye li{padding:5px 0;font-weight:bold;overflow:hidden}
.contents.my .bye li:first-child{border-bottom:0 none}
.contents.my .bye li strong{float:left;padding-left:2px;width:80px;line-height:35px}
.contents.my .bye li em{float:left;width:80px;line-height:35px}

.contents.my .bye2{border:0px solid #cacaca;margin-bottom:18px}
.contents.my .bye2 ul{width:320px;margin:0 auto;padding:5px 0 5px 30px; border-bottom:0px solid #e3e3e3}
.contents.my .bye2 li{padding:5px 0;font-weight:bold;overflow:hidden;}
.contents.my .bye2 li:first-child{border-bottom:0 none}
.contents.my .bye2 li strong{float:left;padding-left:2px;width:70px;line-height:35px}
.contents.my .bye2 li em{float:left;width:220px;line-height:35px}
/* //20180917 mypage - 회원탈퇴 수정 */







 /* 회원가입 */
.contents.join{margin:0 auto;width:687px;float:none;padding-top:45px}
.contents.join h2{font-size:30px;margin-bottom:27px;text-align:center;border-bottom:0 none}
.contents.join .txt-h2{text-align:center;line-height:1.5;margin-bottom:43px;color:#5c5c5c;font-weight:bold}
.contents.join .txt-h2.ty02{background:url('/img/member/bg_complet.gif') no-repeat center top;padding-top:24px}
.contents.join .tbl-y input{width:222px}
.contents.join .h3-wrap{margin-bottom:17px;border-top:2px solid #ff0000;padding-top:25px}
.contents.join h3{float:left;font-size:20px;color:#2e2e2e;padding:0;border:0 none;margin:0}
.contents.join .txt-h3{float:left;color:#7a7a7a;padding-left:10px;background:url('/img/ico/bar_12.gif') no-repeat left 2px;margin-left:14px;margin-top:3px;font-weight: bold}
.contents.join .txt-choice{padding:20px 0 17px 0;border-bottom:1px solid #e9e9e9}
.contents.join .txt-choice label{font-size:12px;font-weight:bold;margin-left:7px}
.agree_t_b a {text-decoration:underline} /*20180917 이용약관영역 텍스트수정*/

.contents.join .complet{width:444px;border:1px solid #cacaca;margin:0 auto}
.contents.join .complet ul{width:407px;margin:0 auto;padding:5px 0}
.contents.join .complet li{padding:16px 0; border-top:1px solid #e3e3e3;font-weight:bold;overflow:hidden}
.contents.join .complet li:first-child{border-top:0 none}
.contents.join .complet li strong{float:left;padding-left:5px;width:100px}
.contents.join .complet li em{float:left;width:302px}

/* 20170117 sns 회원가입 추가 */
.duplicat_chceck {position:relative;left:5px;top:1px;padding:10px 20px 10px;background:#d8d8d8;border:1px solid #ccc;color:#000;font-size:1em;font-weight:normal;height:52px;line-height:52px;margin-top:-52px;border-radius:2px}
.contents.join .id_email {display:inline-block;width:222px;height:35px;padding-left:11px;line-height:35px;background:#f9f9f9;border:1px solid #d6d6d6;color:#7e7e7e;font-family: 'Nanum Gothic','맑은 고딕','돋움',sans-serif;font-size:13px}
.contents.join .id_email_no {display:inline-block;width:500px;height:35px;padding-left:0px;line-height:35px;background:#fff;border:1px solid #fff;color:#666;font-family: 'Nanum Gothic','맑은 고딕','돋움',sans-serif;font-size:13px} /*20180917 정보입력 인풋수정*/
/* //20170117 sns 회원가입 추가 */
/* //회원가입 */
 
.text_form {	
	width:400px;
	height:28px;
	border:1px solid #ccc;
}

 
 .text_form2{
	width:200px;
	height:25px;
	border:1px solid #FF6666;
}
.submit_form
{
	width:100px;	
	height:25px;
	border:1px solid #FF6666;
	background:#FF6666;
	color:white;
	
	
}


.my_reserve_wrap
{ 
	padding:50px; 
}
.my_reserve
{
	width:1000px;
	border-top:2px solid grey;	
	border-bottom:white;	
}
.my_reserve tr{
	border-bottom:1px solid #ccc;	
	
}
.my_reserve th,
.my_reserve td{
	
	text-align:center;
	padding:10px;
	
}


.tm-bg-color-1 { background-color: #9999CC; }

.tm-bg-color-white { background-color: white; }
.tm-text-color-1 { color: #666; }
.tm-text-color-2 { color: #333; }
.tm-text-white { color: #fff; }
.text-center { text-align: center; }


  a {
     text-decoration:none;
     color:black;
   }
   a:hover {
     text-decoration:underline;
   }

 </style>

</head>
<body >


<div id="container">
		<!-- contents // -->
		<div class="contents my">
			
			

			

			<script>
				
						$('#cycle').cycle({
							fx : 'fadeout',
							timeout : 2000,
							slides : 'li',
							pager : '.page-topBanner',
							pagerEvent: 'mouseover'
							//prev : "#btn_move_left",
							//next : "#btn_move_right"
						});

						$('.page-topBanner').hover( 
							function() { 
								$('#cycle').cycle('pause'); 
							}, 
							function() { 
								$('#cycle').cycle('resume'); 
							} 
						);
					

					$('#cycle').hover( 
						function() { 
							$('#cycle').cycle('pause'); 
						}, 
						function() { 
							$('#cycle').cycle('resume'); 
						} 
					);
					
					
					$(function(){
						$('.row_question').on('click', function(e){
							$(this).next('tr.row_answer').toggle();
						});
					});
					
					
					
				
			</script>
<hr>
			
			<h2 class="bdbnone">고객센터</h2>


			<ul class="tab1_1" style="list-style-type:none;">
				<li><a href="../board/list">공지사항</a></li>
				<li><a href="cs/information" class="active">이용안내</a></li>
				<li><a href="/member/member_reward.asp">적립금</a></li>
				<li><a href="/member/member_coupon.asp">쿠폰</a></li>
				<li><a href="../board2/listanswer">1:1문의</a></li>
				<li><a href="membershipinfo">멤버쉽혜택</a></li>
				<li><a href="/member/bookmark_list.asp">찜한상품</a></li>
				<li><a href="/member/destination_manage.asp">배송지 관리</a></li>
			</ul>

	  
	  
	  
	<!-- 중앙 -->
	<div id="cnt">
		<div class="cntbody side_customer">


<div id="cs_main">
	<!-- 이용안내 BEST -->
	<div class="guide_best">
		<div class="tab_box">
			<h3><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_guide_best.png" alt="이용안내 BEST"></h3>
			<ul class="tab_guide">
				<li><a href="#" onclick="tabover('guide',0); return false;"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_guide_0.png" alt="배송조회안내"></a></li>
				<li><a href="#" onclick="tabover('guide',1); return false;"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_guide_1.png" alt="한가지제품만왔어요"></a></li>
				<li><a href="#" onclick="tabover('guide',2); return false;"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_guide_2.png" alt="현금영수증발급"></a></li>
				<li><a href="#" onclick="tabover('guide',3); return false;"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_guide_3.png" alt="구매포인트적립안내"></a></li>
			</ul>
		</div>
		<div class="cnt_box tabcnt_guide0">
			저희 사이트에서는 상품 발송 후 메일 문자를 이용하여 택배사/송장번호를 안내드리고 있습니다. 해당 주문의 조회를 원하시는 경우 아래 방법으로 조회가 가능합니다.<br><br>
			1. [마이페이지] -&gt; [해당주문번호클릭] -&gt; [택배송장번호클릭]<br>
			*저희사이트에서는 택배가 두건 이상으로 발송되었을시에는 대표송장번호 조회만 가능합니다.<br><br>
			대표상품 외 조회를 원하시는 경우 문자안내드린 송장번호로 아래 2번과 같이 조회해 주세요.<br><br>
			2. 메일/문자로 안내드린 택배송장번호로 해당 택배사 홈페이지에서 조회.
		</div>
		<div class="cnt_box tabcnt_guide1">
			저희사이트에서 판매되는 제품은 각 브랜드 별로만 묶음 배송이 가능합니다.<br><br>
			주문시에 다른 브랜드의 제품 두가지를 주문하셨을 경우 각각 따로 다른배송사로 배송처리 됩니다.<br><br>
			혹 같은 브랜드 제품을 주문하셨는데한가지 제품이 빠져온 경우 <span style="color:red;">동행 고객센터(02-000-0000)로 연락주시거나 </span>[1:1 문의] 게시판에 글 남겨주시면 상담드리고 조치해드리겠습니다.
		</div>
		<div class="cnt_box tabcnt_guide2">
			현금영수증 발급 방법 안내 드립니다. 아래 방법중 택일하여 진행해 주시면 됩니다.<br><br>
			1. 마이페이지 -&gt; 무통장입금 및 계좌이체로 결제하신 주문서 내역(주문번호) 클릭 -&gt; 하단 현금영수증란 현금영수증 발급 버튼 클릭 -&gt; 용도에 따라 소득공제용&amp;지출증빙용(사업자) 선택 -&gt; 정보 입력후 발급버튼을 클릭.<br><br>
			2. 1:1 문의 게시판 또는 <span style="color:red;">동행 고객센터(02-000-0000)로 연락주시면 </span> 간단한 질문 드리고 발급 진행해 드립니다.
		</div>
		<div class="cnt_box tabcnt_guide3">
			포인트 적립은 배송 완료후 5일이 지난 시점에서 자동적립처리됩니다.
		</div>
	</div>
	<!-- //이용안내 BEST -->

	<!-- 자주묻는질문 BEST -->
	<div class="board_title">
		<h3><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_faq_best.png" alt="자주묻는질문 BEST"></h3>
		
	</div>
	<div class="box_board">
		
<!-- best이미지 주석처리 20181129 진희 -->
<style>
.hidden_th{display:none;}
</style>
<div class="faq_best">
	<table>
		<caption class="hidden">자주묻는질문 BEST</caption>
		<colgroup>
			<!--<col style="width:120px;">-->
			<col>
		</colgroup>
		<tbody><tr class="row_question" id="faq_q_99475">
				<!--<th scope="row"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_faq_best1.png" alt="BEST 1"></th>-->
				<td>
					<span class="mark">Q.</span>이미 결제를 했는데 결제 방식을 바꾸고 싶습니다.
				</td>
			</tr>
			<tr class="row_answer" id="faq_a_99475">
				<th scope="row" class="hidden_th"><span class="hidden">글내용</span></th>
				<td>
					<div class="cnt_answer">
						<span class="mark">A.</span>
						<div class="contents">결제 완료 후에는 결제방식 변경 가능여부 확인을 위해 고객센터 또는 1:1문의, 실시간채팅에 문의를 주시길 바랍니다.
변경이 가능한 경우 기존 주문건을 취소하시고 재주문을 통해 결제 방법 변경이 가능합니다.</div>
					</div>
				</td>
			</tr>
			<tr class="row_question" id="faq_q_99474">
				<!--<th scope="row"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_faq_best1.png" alt="BEST 1"></th>-->
				<td>
					<span class="mark">Q.</span>주문을 취소하고 싶습니다.
				</td>
			</tr>
			<tr class="row_answer" id="faq_a_99474">
				<th scope="row" class="hidden_th"><span class="hidden">글내용</span></th>
				<td>
					<div class="cnt_answer">
						<span class="mark">A.</span>
						<div class="contents">저희사이트는 주문 완료 후 빠른 출고를 위해 구매 내역에서 취소가 불가합니다.
주문 취소를 원하시는 경우 1:1문의, 실시간채팅 또는 고객센터로 연락주시면 확인 후 안내드리겠습니다.
업무시간 이후의 경우 실시간채팅 또는 1:1문의에 남겨주시면 순차적으로 답변 드리겠습니다.

동행 고객센터 상담시간은 아래와 같습니다.
상담을 원하시는 고객님께서는 해당 시간을 참고하여 연락 주시면 친절히 안내해 드리겠습니다.

[전화 및 1:1문의 업무]
평일 09:00 ~ 18:00

[실시간채팅]
평일 09:00~21:00
토요일 09:00 ~ 15:00
일요일 13:00 ~ 21:00</div>
					</div>
				</td>
			</tr>
			<tr class="row_question" id="faq_q_97838">
				<!--<th scope="row"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_faq_best1.png" alt="BEST 1"></th>-->
				<td>
					<span class="mark">Q.</span>특급배송을 주문했는데 공동현관에 배송됐습니다. 왜그런가요?
				</td>
			</tr>
			<tr class="row_answer" id="faq_a_97838">
				<th scope="row" class="hidden_th"><span class="hidden">글내용</span></th>
				<td>
					<div class="cnt_answer">
						<span class="mark">A.</span>
						<div class="contents">공동현관 출입 불가 시, 공동현관 또는 경비실에 배송될 수 있습니다.
분실될 우려가 있으니 공동현관 출입 방법을 정확히 남겨주세요.

공동현관 출입 방법을 선택해주시더라도
배송시간에 경비 호출 부재 및 비밀번호 오기재로 인해 대응배송될 수 있습니다.

공동현관 비밀번호는 배송 완료 후 안전하게 삭제됩니다.</div>
					</div>
				</td>
			</tr>
			<tr class="row_question" id="faq_q_97420">
				<!--<th scope="row"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_faq_best1.png" alt="BEST 1"></th>-->
				<td>
					<span class="mark">Q.</span>배송 주소를 잘 못 입력해서 수령을 못했어요. 어떻게 하나요?
				</td>
			</tr>
			<tr class="row_answer" id="faq_a_97420">
				<th scope="row" class="hidden_th"><span class="hidden">글내용</span></th>
				<td>
					<div class="cnt_answer">
						<span class="mark">A.</span>
						<div class="contents">식품의 특성상 출고 후 교환 및 반품은 불가합니다.
배송된 주소에서 제품을 수령해주셔야하며,
해당 배송지에 배송이 불가하여 물류센터로 반송된 경우,
식품의 가치가 떨어져 재배송 또는 환불이 불가합니다.</div>
					</div>
				</td>
			</tr>
			<tr class="row_question" id="faq_q_96456">
				<!--<th scope="row"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/etc/cs_main_faq_best1.png" alt="BEST 1"></th>-->
				<td>
					<span class="mark">Q.</span>배송을 받았는데 주문내역에서는 배송중이라고 되어있습니다.
				</td>
			</tr>
			<tr class="row_answer" id="faq_a_96456">
				<th scope="row" class="hidden_th"><span class="hidden">글내용</span></th>
				<td>
					<div class="cnt_answer">
						<span class="mark">A.</span>
						<div class="contents">주문 상태는 자동으로 변경되고 있으며,
실제 배송이 완료되더라도 배송사고등의 문제가 있을 경우 처리를 위해 5일 뒤 배송완료처리가 됩니다.
배송완료처리와 동시에 포인트가 적립되는 점 이용에 참고를 바랍니다.</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<script type="text/javascript">
$(function(){
	$('.faq_best table tr.row_question').on('click', function(e){
		$(this).next('tr.row_answer').toggle();
	});
});
</script>
	</div>
	<!-- //자주묻는질문 BEST -->

	
</div>



</span>
</body>
</html>