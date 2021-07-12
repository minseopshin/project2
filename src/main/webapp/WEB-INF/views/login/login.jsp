<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
window.name ="Parent_window";

/* _skin/rankingdak/script.js line - 58 */	

//로그인 탭메뉴
$('#login .tabmenu .tab a').on('click',function(e){
    e.preventDefault();
    var n = $('#login .tabmenu .tab a').index($(this));
    $('#login .tabmenu .tab').eq(n).addClass('active').siblings().removeClass('active');
    $('#login .tab_contents .tab_content').eq(n).addClass('active').siblings().removeClass('active');
});

var auto_chk = 0;
var item_go_chk = 0;


//get query string from url
function getParameterByName(name, url) {
if (!url) {
    url = window.location.href;
}
name = name.replace(/[\[\]]/g, "\\$&");
var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
results = regex.exec(url);
if (!results) return null;
if (!results[2]) return '';
return decodeURIComponent(results[2].replace(/\+/g, " "));
}



</script>
<style>
    #cnt {padding-bottom:0;}
    #header,
    #footer,
    #quick {display:none;}

    #wrapper.fixed, #wrapper.ieFix {padding-top: 0;}
    #wrapper.fixed.topbnN, #wrapper.ieFix.topbnN {padding-top: 0;}
    #wrapper.fixed.scroll, #wrapper.ieFix.scroll {padding-top: 0;}


    
    /* _skin/rankingdak/style.css line - 1306 */
    
    /* css 리셋 */
    #login .tabmenu {padding:0;}
    #login .tabmenu li {margin-left:0;}
    #login .wrap_area .left_area {padding:0;}
    #login .fail{margin-bottom: 0;}
    #login .simple {width:50%; max-width:137px; padding:0; margin-bottom: 0;}
    
    /* css 추가 */
    #login {width:730px; margin:30px auto;}
    #login .logo {padding:50px 0 18px;}
    #login .wrap_area {height:420px; width:1000px;}
    #login .wrap_area .left_area {width:370px; display:inline-block}
    #login .wrap_area .left_area .tabmenu {padding-bottom:25px;}
    #login .wrap_area .left_area .tabmenu .tab {display:none; position:relative; margin-left:0; width:50%; height: 60px; background: #eee;}
    #login .wrap_area .left_area .tabmenu .tab.tab_login1 {display:block;}
    #login .wrap_area .left_area .tabmenu .tab a {display:block; padding-left:0; height: 60px; color:#333; font-size:16px; font-weight:normal; line-height: 60px; text-align:center; background-image: none;}
    #login .wrap_area .left_area .tabmenu .tab a .span1 {font-size:13px; color: inherit;}
    #login .wrap_area .left_area .tabmenu .tab.active {background: #fff;}
    #login .wrap_area .left_area .tabmenu .tab.active:before {content:""; position:absolute; top:0; left:0; width: 100%; height: 2px; background: #ff6001;}
    #login .wrap_area .left_area .tabmenu .tab.active a {color: #ff6001;}
    #login .wrap_area .left_area .tab_content {display:none; padding:0 45px;}
    #login .wrap_area .left_area .tab_content.active {display:block;}
    #login .wrap_area .right_area2 {display:inline-block; width:360px; }
    #login .wrap_area .right_area2 input {margin-right: 6px;}
    #login .wrap_area .right_area2 .login_banner_link {position:absolute; left:93px; bottom:21px;}
    #login .wrap_area .right_area2 .login_banner_link span {font-size:12px; line-height:18px;}
    #login .tabcnt_login0 {position: relative;}
    #login .tabcnt_login1 {padding-top:40px;}
    #login .tabcnt_login1 .box_btn {margin-top:15px;}
    #login .fail {position:absolute; z-index:1; bottom: 49px; left:0; right:0; padding:30px 10px; height:107px; border: 1px solid #ff6001; -webkit-border-radius:4px; -moz-border-radius:4px; border-radius:4px; background:#fff; color:#ff6001; font-size:13px; text-align:center;}
    #login .fail:after {content:''; position:absolute; left:50%; top:-8px; width:15px; height:15px; margin-left:-8px; border-top: 1px solid #ff6001; border-left: 1px solid #ff6001; border-right: 0; background: #fff; transform: rotate(45deg);}
    #login .fail span {color:inherit; font-size:inherit; font-weight:bold;}
    #login .fail span.msg {font-size:16px;}
    #login .fail .fail_cls {position:absolute; display:block; top:12px; right:12px; width: 16px; height: 16px; text-indent: -9999px; background-image:url('https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/cls_btn.png'); background-repeat:no-repeat; background-position:50% 50%;}
    #login .simple {border:1px solid #ccc; -webkit-border-radius:3px; -moz-border-radius:3px; border-radius:3px; margin-top: 10px;}/**/
    #login .simple:after{content:''; display:block; clear:both;}
    #login .simple_l{float:left;}
    #login .simple_r{float:right;}
    #login .simple a.naver, #login .simple a.apple {display:block; width:100%; height:auto; padding:12px 0; font-size:14px; text-align:center; background:none; color:#666; text-indent:inherit;}
    #login .simple a.naver img {margin:-1px auto 0 !important; padding:0 5px 0 0; display:inline-block; width:14px; height:auto; box-sizing:content-box; vertical-align:middle;}
    #login .simple a.apple img {margin:-2px auto 0; padding:0 5px 0 0; display:inline-block; width:15px; height:auto; box-sizing:content-box; vertical-align:middle;}
    #login .login_auto_box {padding:13px 0 10px;}
    #login .login_auto_box span {color:#666; font-size:13px; line-height:18px;}
    #login .link_find {float:right; font-weight:bold; color:#333;}
    #login .link_find span img {vertical-align:middle; margin-left:5px; width:7px;}
    #login .join {margin-top:12px; overflow: hidden;}/**/
    #login .join p {float: left; color:#666; font-size:13px; line-height:1.5; margin-top:7px;}/**/
    #login .join .join_button {float:right; width:96px; height:33px; color:#666; font-size:13px; font-weight:bold; line-height:33px; text-align:center; border:1px solid #666; -webkit-border-radius:4px; -moz-border-radius:4px; border-radius:4px;}/**/
    #login .custom_check {float:left; margin-right:6px; width:18px; height:18px; background-image:url('https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/chk_off.png'); background-repeat: no-repeat;}
    #login .custom_check.on {background-image:url('https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/button/chk_on.png');}
    
    .box_member .form_input.member {height: 50px; font-size:13px; text-indent:11px; -webkit-border-radius:4px; -moz-border-radius:4px; border-radius:4px;}
    .box_member fieldset .fld {margin-bottom: 7px;}
    .box_member fieldset.login_field {border:0;}
    .box_member fieldset.login_field .box_btn * {height:50px; -webkit-border-radius:4px; -moz-border-radius:4px; border-radius:4px;}
    
    #login .wrap_area .right_area2 .bnr img {width:auto; height:auto;}
    

.submit_form
{
	width:300px;	
	height:50px;
	border:1px solid orange;
	background:orange;
	color:white;
	
	
}


</style>





<body>
   <div id="login" class="box_member"> <!-- 성인인증 컨트롤 클래스 ad_vcation -->
        <div class="logo"><a href="#메인페이지로 갈 예정"><img src="https://image.rankingdak.com/_skin/new_rankingdak_ver4/img/logo/ranking_logo3.png" alt="랭킹닭컴"></a></div>
        <div class="wrap_area">
            <div class="left_area">
    
                <div class="tabs">
                
                    <ul class="tab_login tabmenu">
                        <li class="tab tab_login1 active"><a href="#">로그인</a></li>
                        
                    </ul>
                    
                </div>
                
                
                <div class="tab_contents">
                    <ul>
                        <li class="tab_content active">
                            <div class="tabcnt_login0">
                          
                                <form method="post" action="login_ok"  onSubmit="return checkLoginFrm(this)" style="margin:0px">
<input type="hidden" name="exec_file" value="member/login.exe.php">
<input type="hidden" name="rURL" value="https://www.rankingdak.com">
<input type="hidden" name="urlfix" value="Y">

                                    <fieldset class="login_field">
                                       
                                        <div class="fld">
                                            <label for="login_id">아이디&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input type="text" name="userid" value="" maxlength="50" id="login_id" class="form_input member block" placeholder="아이디">
                                        </div>
                                        
                                        <div class="fld">
                                            <label for="login_pwd">비밀번호&nbsp;</label>
                                            <input type="password" name="pwd" value="" maxlength="16" id="login_pwd" class="form_input member block" placeholder="비밀번호">
                                        
     <c:if test="${chk == 1}">
      <span style="color:red"> 아이디 혹은 비번이 잘못되었습니다 </span>
     </c:if>
     <c:if test="${chk == 2}">
      <span style="color:red"> 회원전용 문서이므로 로그인 하세요 </span>
     </c:if>
   
    
                                        </div>
                                        
                                        
                                        <div class="login_auto_box">
                                    
                                            <a href="../member/findId" class="link_find"><span>아이디/비밀번호 찾기 ▶</span></a>
                                        </div>
                                            <tr>
      <td> <input type="submit" class="submit_form" value="로그인">
    </tr>
    
                           
                                        <div class="savessl hidden">

                                            <input type="checkbox" name="id_save" value="Y"  id="member_id_save"><label for="member_id_save">아이디저장</label>
                                            <input type="checkbox" name="pw_save" value="Y"  id="member_pwd_save"><label for="member_pwd_save">비밀번호저장</label>
                                        </div>
                                        
                                    </fieldset>
                                </form>

                                <div class="join" style="padding-top:20px;">
                                    <p>회원가입 혜택이 쏟아진닭♥</p>
                                    <a href="member" class="join_button">간편회원가입</a>
                                </div>
                                

    

                            </div>
                        </li>

                    </ul>
                </div>
    
            </div>

<div class="right_area2" style="padding-left:70px;">

                <div class="#"><img src="resources/img/loginimg.png" border=0 ></div>
</div>             
        
        </div>
        <!-- 가입혜택배너 -->
        <div class="login_benefit" style="padding-top:100px;"><img src="https://image.rankingdak.com/_data/banner/09c02766938b9b8d9c23e18f8d039b0f.jpg" border=0 ></div>
        <!-- 추천인배너 -->
        <div class="suggested_banner"></div>
    </div>
      
    
    
    
    
    
    
    
    
 




</html>
