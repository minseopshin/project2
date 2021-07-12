<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find ID</title>
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
</style>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="jquery/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</head>
<style> 
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
 
 .text_form{
	width:300px;
	height:25px;
	border:1px solid #FF6666;
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

</style>
<body>


<div id="container">
		<!-- contents // -->
		<div class="contents join">
			<h2>아이디확인</h2>
			
			 <!--20191014 회원가입 문구 추가-->
			<p class="txt-h2">비밀번호 찾기를 원하시면 하단의 비밀번호찾기 버튼을 눌러주시기 바랍니다.</p>
                    <!--//20191014 회원가입 문구 추가-->

			<div class="h3-wrap clfix">
				<h3>정보확인</h3>
				<p class="txt-h3"><strong class="p-red">* </strong>필수확인항목</p>
			</div>
			<table class="tbl-y">
				<colgroup>
					<col style="width:144px"/>
					<col style="width:auto"/>
				</colgroup>
			</table>


<p>
 <c:if test="${userid != null}">
   <strong> * 당신의 아이디는 ${userid}입니다.</strong>
   </c:if>
   <c:if test="${userid == null}">
  <p align="center"> 가입된 회원정보가 없습니다.  </p>
</c:if>

   <p>

         <p>
        <tr align="center">
        <td colspan="6"><a href="findpwd"> <input type="button"  class="submit_form" value="비밀번호찾기"></a> ※ 아이디 계정확인 후 비밀번호 찾기 페이지로 넘어갑니다.</td>
      </tr>
      
      
</body>
</html>