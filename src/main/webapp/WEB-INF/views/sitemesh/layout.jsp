<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#nav2").children().hover(function() {
	    	$(this).find(".nav3").show(); 
		}, function() { 
	    	$(this).find(".nav3").hide(); 
		}); 
	
		$(".nav3").children().hover(function() { 
		    $(this).find("ul").show(); 
		}, function() { 
		    $(this).find("ul").hide(); 
		});
		$(".cs").mouseover(function(){
			$(".cs_menu").css("visibility","visible")
		});
		$(".cs").mouseout(function(){
			$(".cs_menu").css("visibility","hidden")
		});
		$(".cs1").mouseover(function(){
			$(".cs_menu1").css("visibility","visible")
		});
		$(".cs1").mouseout(function(){
			$(".cs_menu1").css("visibility","hidden")
		});
		$("#banner_close").click(function(){
			$("#banner").css("display","none")
		});
	});
</script>
<style>
	#first {width:1500px;}
	#first #banner {background:#FF9436; color:white;  text-align:center; padding-top:8px; height:22px;}
	#first #banner #banner_close {float:right; padding-right:18px;}
	#first #top_menu { display:inline-block; margin:auto; text-align:right; }
	#first #top_menu #sub_logo {float:left; height:130px; width:200px;  text-align:center; padding-top:0px;}
	#first #top_menu #main_logo {padding-left:375px; padding-right:320px; height:180px; padding-top:20px}
	#first #top_menu .logo1 {display:inline-block; float:left; }
	#first #top_menu #sub_menu {float:right;padding-right:0px; font-size:15px; width:230px;}
	#first #top_menu #sub_menu > li {list-style-type:none; display:inline-block;}
	#first #top_menu #sub_menu .cs_menu >li {list-style-type:none; padding-top:5px; font-size:14px;}
	#first #top_menu #sub_menu .cs_menu1 >li {list-style-type:none; padding-top:5px; font-size:14px;}
	#first #top_menu #sub_menu .cs_menu {position:absolute; background:white; text-align:center; padding-left:5px; visibility:hidden; height:80px; width:60px;}
	#first #top_menu #sub_menu .cs_menu1 {position:absolute; background:white; text-align:center; padding-left:0px; visibility:hidden; height:100px; width:100px;}
	#first #menu #nav2 .li {list-style-type:none; display:inline-block; width:190px; text-align:center; height:45px;}
	#first #nav2 .nav3 li{ list-style-type:none; margin:0px; padding-top:0px; padding-bottom:10px; text-align:left; height:40px; text-align:center;}
	#first #nav2 .nav3 ul{position:absolute; display:none; width:200px; height:751px; left:270px; top:0px; background:#FF9436; text-align:left;}
	#first #menu {display:inline-block; padding-left:0px; width:1500px; height:60px; float:left; padding-top:2px; border-top:1px solid gray; border-bottom:1px solid gray}
	#first #menu .nav3 {position:absolute; left:35px; width:240px; top:400px; padding-top:10px; background:white; padding-left:30px; display:none; height:750px; }
	#first #menu .nav3 .cate_detail li{width:200px; text-align:left; padding-top:20px; height:10px}
	#first #menu .ic_li {display:inline-block; float:left; width:90px; }
	#bottom {width:1500px; height:200px; background:#FF9436;}
	#bottom .bottom1 {display:inline-block; margin:auto; width:500px;}
	#bottom .bottom_table {text-align:center;}
	#bottom #bottom_first {text-align:right; padding-right:10px;}
	a {text-decoration:none; color:black;}
</style>
</head>
<decorator:head/>
<body>
<div id="first">
	<div id="banner">
		지금 가입시 무료  <span id="banner_close">X</span>
	</div>
	<div id="top_menu">
		<div id="sub_logo" class="logo1">
			
		</div>
		<div class="logo1"> 
			<img src="../resources/img/main/main2.png" onclick="location='../main/main'" id="main_logo" style="width:320px; height:270px">
		</div>
		<div class="logo1">
		<c:if test="${userid == null }"> 
		<ul id="sub_menu">
			<li><a href="../member/member">회원가입</a></li>
			<li><a href="../login/login">로그인</a></li>
			<li class="cs">고객센터
				<ul class="cs_menu">
					<li class="cs_menu_li">공지사항</li>
					<li class="cs_menu_li">FAQ</li>
				</ul>
			</li>
		</ul>
		</c:if>
		<c:if test="${userid != null}">
			<c:if test="${userid == 'admin'}">
			<ul id="sub_menu">
				<li class="cs1"><a href="../analysis/index">관리자</a> <a href="../login/logout">로그아웃</a>
					<ul class="cs_menu">
						<li class="cs_menu_li"><a href="../analysis/index">관리자</a></li>
						<li class="cs_menu_li"></li>
					</ul>
				</li>
			</ul>
			</c:if>	
			<c:if test="${userid != 'admin'}">
			<ul id="sub_menu">
				<li class="cs1">${userid} 고객님
					<ul class="cs_menu1">
						<li class="cs_menu_li"><a href="../payment/order_detail">주문조회</a></li>
						<li class="cs_menu_li"><a href="../addr/addr">주소관리</a></li>
						<li class="cs_menu_li">회원정보수정</li>
						<li class="cs_menu_li"><a href="../login/logout">로그아웃</a></li>
					</ul>
				</li>
				<li class="cs">고객센터
					<ul class="cs_menu">
						<li class="cs_menu_li"><a href="../board/content">공지사항</li>
						<li class="cs_menu_li"><a href="../board2/contentanswer">FAQ</li>
					</ul>
				</li>
			</ul>
			</c:if>
		</c:if>	
		</div>
	</div>
	<form method="post" action="../main/search?cate=all">
	<div id="menu">
    	<ul id="nav2" style=" height:50px"> 
    		<li class="li" style="width:256px;"><div id="all_cate" style="border-right:1px solid gray">전체 카테고리</div> 
        		<ul class="nav3">
        			<li><a href="../product/plist3?category1=닭가슴살"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px "><img src="../resources/img/main/ico_chicken.png"></div><div class="ic_li" style="width:144px; padding-top:17px; text-align:left; height:31px">닭가슴살</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=닭가슴살">전체</a></li> 
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=스테이크">스테이크</a></li> 
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=스팀·소프트">스팀·소프트</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=볼·큐브">볼·큐브</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=슬라이스">슬라이스</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=훈제">훈제</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=프로틴">프로틴</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=저염·염분무첨가">저염·염분무첨가</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=소세지·햄">소세지·햄</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=소스닭가슴살">소스닭가슴살</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=생·다짐육">생·다짐육</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=육포">육포</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=실온보관">실온보관</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=스낵·칩">스낵·칩</a></li>
                    		<li><a href="../product/plist2?category1=닭가슴살&category2=삼계탕">삼계탕</a></li> 
                		</ul>
            		</li> 
            		<li><a href="../product/plist3?category1=즉석 간편식"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:80px "><img src="../resources/img/main/ico_hmr.png"></div><div class="ic_li" style="width:154px; padding-top:17px; text-align:left; height:31px">즉석간편식</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=즉석 간편식">전체</a></li> 
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=즉석밥">즉석밥</a></li>
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=핫도그·브리또">핫도그·브리또</a></li> 
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=만두">만두</a></li>
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=카레·짜장">카레·짜장</a></li>
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=라면·칼국수">라면·칼국수</a></li>
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=곤약면·파스타">곤약면·파스타</a></li>
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=떡볶이·튀김·순대">떡볶이·튀김·순대</a></li>
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=치킨">치킨</a></li>
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=피자·탕수육">피자·탕수육</a></li>
                    		<li><a href="../product/plist2?category1=즉석 간편식&category2=떡">떡</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=도시락·볶음밥"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:68px "><img src="../resources/img/main/ico_lunchbox.png"></div><div class="ic_li" style="width:166px; padding-top:17px; text-align:left; height:31px">도시락·볶음밥</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=도시락·볶음밥">전체</a></li> 
                    		<li><a href="../product/plist2?category1=도시락·볶음밥&category2=다이어트 도시락">다이어트 도시락</a></li>
                    		<li><a href="../product/plist2?category1=도시락·볶음밥&category2=더담은 도시락">더담은 도시락</a></li> 
                    		<li><a href="../product/plist2?category1=도시락·볶음밥&category2=간편 도시락">간편 도시락</a></li>
                    		<li><a href="../product/plist2?category1=도시락·볶음밥&category2=볶음밥">볶음밥</a></li>
                    		<li><a href="../product/plist2?category1=도시락·볶음밥&category2=덮밥·컵밥">덮밥·컵밥</a></li>
                    		<li><a href="../product/plist2?category1=도시락·볶음밥&category2=간편 죽">간편 죽</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=소·돼지·닭안심"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:65px "><img src="../resources/img/main/ico_beef.png"></div><div class="ic_li" style="width:169px; padding-top:17px; text-align:left; height:31px">소·돼지·닭안심</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=소·돼지·닭안심">전체</a></li> 
                    		<li><a href="../product/plist2?category1=소·돼지·닭안심&category2=소고기">소고기</a></li>
                    		<li><a href="../product/plist2?category1=소·돼지·닭안심&category2=돼지고기">돼지고기</a></li> 
                    		<li><a href="../product/plist2?category1=소·돼지·닭안심&category2=닭 안심">닭 안심</a></li>
                    		<li><a href="../product/plist2?category1=소·돼지·닭안심&category2=오리고기">오리고기</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=빵·시리얼·간식"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:65px "><img src="../resources/img/main/ico_bread.png"></div><div class="ic_li" style="width:169px; padding-top:17px; text-align:left; height:31px">빵·시리얼·간식</div></a>
                		<ul class="cate_detail">  
                    		<li><a href="../product/plist3?category1=빵·시리얼·간식">전체</a></li> 
                    		<li><a href="../product/plist2?category1=빵·시리얼·간식&category2=베이커리">베이커리</a></li>
                    		<li><a href="../product/plist2?category1=빵·시리얼·간식&category2=과자·쿠키">과자·쿠키</a></li> 
                    		<li><a href="../product/plist2?category1=빵·시리얼·간식&category2=시리얼·바">시리얼·바</a></li>
                    		<li><a href="../product/plist2?category1=빵·시리얼·간식&category2=초콜릿">초콜릿</a></li>
                    		<li><a href="../product/plist2?category1=빵·시리얼·간식&category2=젤리">젤리</a></li>
                    		<li><a href="../product/plist2?category1=빵·시리얼·간식&category2=아이스크림">아이스크림</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=샐러드·과일"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:75px "><img src="../resources/img/main/ico_salad.png"></div><div class="ic_li" style="width:159px; padding-top:17px; text-align:left; height:31px">샐러드·과일</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=샐러드·과일">전체</a></li> 
                    		<li><a href="../product/plist2?category1=샐러드·과일&category2=알뜰샐러드">알뜰샐러드</a></li>
                    		<li><a href="../product/plist2?category1=샐러드·과일&category2=토핑샐러드">토핑샐러드</a></li> 
                    		<li><a href="../product/plist2?category1=샐러드·과일&category2=과일">과일</a></li>
                    		<li><a href="../product/plist2?category1=샐러드·과일&category2=샐러드 소스">샐러드 소스</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=음료·프로틴"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:75px "><img src="../resources/img/main/ico_drink.png"></div><div class="ic_li" style="width:159px; padding-top:17px; text-align:left; height:31px">음료·프로틴</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=음료·프로틴">전체</a></li> 
                    		<li><a href="../product/plist2?category1=음료·프로틴&category2=우유·두유">우유·두유</a></li>
                    		<li><a href="../product/plist2?category1=음료·프로틴&category2=물·탄산수">물·탄산수</a></li> 
                    		<li><a href="../product/plist2?category1=음료·프로틴&category2=과일·건강즙">과일·건강즙</a></li>
                    		<li><a href="../product/plist2?category1=음료·프로틴&category2=프로틴 음료">프로틴 음료</a></li>
                    		<li><a href="../product/plist2?category1=음료·프로틴&category2=프로틴 쉐이크">프로틴 쉐이크</a></li>
                    		<li><a href="../product/plist2?category1=음료·프로틴&category2=커피· 차">커피· 차</a></li>
                    		<li><a href="../product/plist2?category1=음료·프로틴&category2=클렌즈 주스<">클렌즈 주스</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=달걀·난백·콩"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px;width:68px  "><img src="../resources/img/main/ico_beef.png"></div><div class="ic_li" style="width:166px; padding-top:17px; text-align:left; height:31px">달걀·난백·콩</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist2?category1=달걀·난백·콩&category2=구운·훈제">구운·훈제</a></li> 
                    		<li><a href="../product/plist2?category1=달걀·난백·콩&category2=반숙란">반숙란</a></li>
                    		<li><a href="../product/plist2?category1=달걀·난백·콩&category2=난백·흰자">난백·흰자</a></li> 
                    		<li><a href="../product/plist2?category1=달걀·난백·콩&category2=비건·콩">비건·콩</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=견과·고구마·감자"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:55px "><img src="../resources/img/main/ico_nut.png"></div><div class="ic_li" style="width:179px; padding-top:17px; text-align:left; height:31px">견과·고구마·감자</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=견과·고구마·감자">전체</a></li> 
                    		<li><a href="../product/plist2?category1=견과·고구마·감자&category2=견과·잡곡">견과·잡곡</a></li>
                    		<li><a href="../product/plist2?category1=견과·고구마·감자&category2=고구마">고구마</a></li> 
                    		<li><a href="../product/plist2?category1=견과·고구마·감자&category2=감자">감자</a></li>
                    		<li><a href="../product/plist2?category1=견과·고구마·감자&category2=호박">호박</a></li>
                    		<li><a href="../product/plist2?category1=견과·고구마·감자&category2=밤">밤</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=반찬·밀키트·안주"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:55px "><img src="../resources/img/main/ico_sidedish.png"></div><div class="ic_li" style="width:179px; padding-top:17px; text-align:left; height:31px">반찬·밀키트·안주</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=반찬·밀키트·안주">전체</a></li> 
                    		<li><a href="../product/list2?category1=반찬·밀키트·안주&category2=밀키트">밀키트</a></li>
                    		<li><a href="../product/plist2?category1=반찬·밀키트·안주&category2=햄·소세지">햄·소세지</a></li> 
                    		<li><a href="../product/plist2?category1=반찬·밀키트·안주&category2=잡채·동그랑땡">잡채·동그랑땡</a></li>
                    		<li><a href="../product/plist2?category1=반찬·밀키트·안주&category2=건강반찬">건강반찬</a></li>
                    		<li><a href="../product/plist2?category1=반찬·밀키트·안주&category2=국·탕·찌개">국·탕·찌개</a></li>
                    		<li><a href="../product/plist2?category1=반찬·밀키트·안주&category2=건강 안주">건강 안주</a></li>
                    		<li><a href="../product/plist2?category1=반찬·밀키트·안주&category2=곱창·껍데기">곱창·껍데기</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=건강식품"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px "><img src="../resources/img/main/ico_health.png"></div><div class="ic_li" style="width:144px; padding-top:17px; text-align:left; height:31px">건강식품</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=건강식품">전체</a></li> 
                    		<li><a href="../product/plist2?category1=건강식품&category2=영양제·비타민">영양제·비타민</a></li>
                    		<li><a href="../product/plist2?category1=건강식품&category2=흑마늘·꿀·홍삼">흑마늘·꿀·홍삼</a></li> 
                    		<li><a href="../product/plist2?category1=건강식품&category2=다이어트 보조제">다이어트 보조제</a></li>
                    		<li><a href="../product/plist2?category1=건강식품&category2=콜라겐">콜라겐</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=수산·해산"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:85px "><img src="../resources/img/main/ico_fish.png"></div><div class="ic_li" style="width:149px; padding-top:17px; text-align:left; height:31px">수산·해산</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=수산·해산">전체</a></li> 
                    		<li><a href="../product/plist2?category1=수산·해산&category2=생선구이">생선구이</a></li>
                    		<li><a href="../product/plist2?category1=수산·해산&category2=연어·참치">연어·참치</a></li> 
                    		<li><a href="../product/plist2?category1=수산·해산&category2=오징어">오징어</a></li>
                    		<li><a href="../product/plist2?category1=수산·해산&category2=어묵·스테이크">어묵·스테이크</a></li>
                    		<li><a href="../product/plist2?category1=수산·해산&category2=다시마·해조류">다시마·해조류</a></li>
                    		<li><a href="../product/plist2?category1=수산·해산&category2=황태포·쥐포">황태포·쥐포</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=소스·잼·오일"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:68px  "><img src="../resources/img/main/ico_sauce.png"></div><div class="ic_li" style="width:166px; padding-top:17px; text-align:left; height:31px">소스·잼·오일</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=소스·잼·오일">전체</a></li> 
                    		<li><a href="../product/plist2?category1=소스·잼·오일&category2=소스·드레싱">소스·드레싱</a></li>
                    		<li><a href="../product/plist2?category1=소스·잼·오일&category2=과일청">과일청</a></li> 
                    		<li><a href="../product/plist2?category1=소스·잼·오일&category2=잼">잼</a></li>
                    		<li><a href="../product/plist2?category1=소스·잼·오일&category2=오일">오일</a></li>
                    		<li><a href="../product/plist2?category1=소스·잼·오일&category2=분말·시즈닝<">분말·시즈닝</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=식단·맛보기"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px; width:75px "><img src="../resources/img/main/ico_try.png"></div><div class="ic_li" style="width:159px; padding-top:17px; text-align:left; height:31px">식단·맛보기</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=식단·맛보기">전체</a></li> 
                    		<li><a href="../product/list2?category1=식단·맛보기&category2=식단">식단</a></li>
                    		<li><a href="../product/plist2?category1=식단·맛보기&category2=맛보기">맛보기</a></li> 
                    		<li><a href="../product/plist2?category1=식단·맛보기&category2=선물세트">선물세트</a></li>
                		</ul> 
            		</li>
            		<li><a href="../product/plist3?category1=운동용품"><div class="ic_li" style="text-align:right; padding-top:10px; height:38px;  "><img src="../resources/img/main/ico_exercise.png"></div><div class="ic_li" style="width:144px; padding-top:17px; text-align:left; height:31px">운동용품</div></a>
                		<ul class="cate_detail"> 
                    		<li><a href="../product/plist3?category1=운동용품">전체</a></li> 
                    		<li><a href="../product/plist2?category1=운동용품&category2=스트랩·장갑">스트랩·장갑</a></li>
                    		<li><a href="../product/plist2?category1=운동용품&category2=보호대·밴드">보호대·밴드</a></li> 
                    		<li><a href="../product/plist2?category1=운동용품&category2=보틀·쉐이커">보틀·쉐이커</a></li>
                    		<li><a href="../product/plist2?category1=운동용품&category2=홈트레이닝">홈트레이닝</a></li>
                    		<li><a href="../product/plist2?category1=운동용품&category2=스포츠웨어">스포츠웨어</a></li>
                    		<li><a href="../product/plist2?category1=운동용품&category2=굿즈">굿즈</a></li>
                		</ul> 
            		</li>
        		</ul> 
    		</li>
    		<li class="li"><a href="../product/new_product">신상품</a></li>
			<li class="li"><a href="../product/heart_product">인기상품</a></li>
			<li class="li"><a href="../event/event">이벤트·후기</a></li>
			<li class="li"><a href="../payment/shopping_basket">장바구니</a></li>
			<li class="li">
				<input type="text" name="search" style="width:200px; height:25px">
			</li>	
			<li class="li" >
				<input type="submit" value="검색" style="width:80px; height:30px; background:#FF9436; border:none; color:white">
			</li>	
			
		</ul>
		
		
	</div>
	</form>
</div>

<decorator:body/>
<div id="bottom">
	<div id="bottom_first">
		<hr>
		<div><span>개인정보처리방침</span> | <span>이용약관</span></div>
		<hr>
	</div>
	<div>
	<table border="1" align="center" width="1300">
		<tr>
			<td rowspan="5" width="200" style="padding-left:30px;"><img src="../resources/img/main/main1.png" style="width:100px; height:100px"></td>
			<td width="200" rowspan="2" class="bottom_table"><h2>1677-0000</h2></td>
			<td class="bottom_table" width="200" >고객센터</td>
			<td rowspan="4" class="bottom_table">법인명 : 동행 | 사업자등록번호: 123-45-66778 <p> 주소 : 서울특별시 구로구 구로 | 대표이사 : <p> 팩스 : 070-1234-5678 | 이메일 : </td>
			
		</tr>
		<tr>
			<td class="bottom_table">오전 9시 - 오후 5시</td>
		</tr>
		<tr>
			<td rowspan="2" class="bottom_table"><h2>카카오톡문의</h2></td>
			<td class="bottom_table">고객센터</td>
		</tr>
		<tr>
			<td class="bottom_table">오전 9시 - 오후 5시</td>
		</tr>	
	</table>
	</div>
</div>
</body>
</html>