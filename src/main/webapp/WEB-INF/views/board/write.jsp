<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<link rel="stylesheet" href="/inc/css/style.css?2020120101">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="jquery/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>

<style>
:root { -
	-input-padding-x: 1.5rem; 
	-input-padding-y: .75rem;
}

body {
	background-color: white;
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
.tab1_1 {margin-top:20px;height:50px;overflow:hidden;margin-bottom:34px}
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
 </style>
 

<body>

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
				
			</script>
<hr>
			
			<h2 class="bdbnone">고객센터</h2>


			<ul class="tab1_1" style="list-style-type:none;">
				<li><a href="list" class="active">공지사항</a></li>
				<li><a href="changepwd">이용안내</a></li>
				<li><a href="/member/member_reward.asp">적립금</a></li>
				<li><a href="/member/member_coupon.asp">쿠폰</a></li>
				<li><a href="/member/membership_info.asp">1:1문의</a></li>
				<li><a href="/member/recent_view_goods.asp">최근본상품</a></li>
				<li><a href="/member/bookmark_list.asp">찜한상품</a></li>
				<li><a href="/member/destination_manage.asp">배송지 관리</a></li>
			</ul>

	  


</head>


<body>
  <form method="post" action="write_ok">
    제목 <input type="text" name="title"> <p>
 	
    문의내용 <textarea cols="30" rows="4" name="content"></textarea> <p>
  <input type="submit" value="글쓰기">  
  </form>
</body>




</html>