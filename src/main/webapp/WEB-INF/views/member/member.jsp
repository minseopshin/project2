<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 </head>
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
 
 
  <script>
 function check()
 {
    var member=document.pkc;
    if(member.userid.value == "")
       {
          alert("아이디를 입력하세요.")
          member.userid.focus();
            return false;
       }
    else if(member.userid.value.length < 4)
     {
        alert("아이디는 4자 이상 적으세요");
        return false;
     }
    else if(member.pwd.value.length < 4)
     {
        alert("비밀번호는 4자 이상 적으세요");
        return false;
     }
    else if(member.pwd.value != member.pwd2.value)
       {
          alert("비밀번호가 다릅니다.")
          member.pwd.value="";
          member.pwd2.value="";
          return false;
       }
    else
       return true; 
            
 }
 
   function userid_check()
   {
	   var chk=new XMLHttpRequest();
	   var userid=document.pkc.userid.value;
	   chk.open("get","userid_check?userid="+userid);
	   chk.send();
	   
	   chk.onreadystatechange=function()
	   {
		   if(chk.readyState==4)
		   {
			   if(chk.responseText=="1")
			   {
				   alert("사용 불가능한 아이디 입니다");
				   document.pkc.userid.value="";
				   document.pkc.userid.focus();
			   }
			   else
			   {
				   alert("사용 가능한 아이디 입니다");
			   }	   
			  // 한글처리 : alert(decodeURI(chk.responseText));
		   }
	   }
   }
       function sample6_execDaumPostcode() {
           new daum.Postcode({
               oncomplete: function(data) {
                   // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                   // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                   // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                   var addr = ''; // 주소 변수
                   var extraAddr = ''; // 참고항목 변수

                   //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                   if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                       addr = data.roadAddress;
                   } else { // 사용자가 지번 주소를 선택했을 경우(J)
                       addr = data.jibunAddress;
                   }

                   // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                   if(data.userSelectedType === 'R'){
                       // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                       // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                       if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                           extraAddr += data.bname;
                       }
                       // 건물명이 있고, 공동주택일 경우 추가한다.
                       if(data.buildingName !== '' && data.apartment === 'Y'){
                           extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                       }
                       // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                       if(extraAddr !== ''){
                           extraAddr = ' (' + extraAddr + ')';
                       }
                       // 조합된 참고항목을 해당 필드에 넣는다.
                       document.getElementById("sample6_extraAddress").value = extraAddr;
                   
                   } else {
                       document.getElementById("sample6_extraAddress").value = '';
                   }

                   // 우편번호와 주소 정보를 해당 필드에 넣는다.
                   document.getElementById('sample6_postcode').value = data.zonecode;
                   document.getElementById("sample6_address").value = addr;
                   // 커서를 상세주소 필드로 이동한다.
                   document.getElementById("sample6_detailAddress").focus();
               }
           }).open();
       }
 </script>
 

 
 
 
 
 
   <form name="pkc" method="post" action="member_ok" onsubmit="return check()">
 
	<!-- container // -->
	<div id="container">
		<!-- contents // -->
		<div class="contents join">
			<h2>회원가입</h2>
			 <!--20191014 회원가입 문구 추가-->
			<p class="txt-h2">회원가입을 환영합니다. 가입하시면 <em class="fc333" style="font-weight:600">신규고객이벤트</em>에서<br> 제공하는 다양한 쿠폰과 적립금을 다운받으실 수 있습니다.</p>
                    <!--//20191014 회원가입 문구 추가-->

			<div class="h3-wrap clfix">
				<h3>정보입력 </h3>
				<p class="txt-h3"><strong class="p-red">* </strong>필수입력항목</p>
			</div>
			<table class="tbl-y">
				<colgroup>
					<col style="width:144px"/>
					<col style="width:auto"/>
				</colgroup>
				<tbody>
				<tr>
						<th> <strong class="p-red">* </strong>아이디</th>
						<td>
							<input type="text" class="text_form"  name="userid" placeholder="4자 이상" autocomplete="off" >
							<input type="button" class="submit_form" onclick="userid_check()" value="중복확인"> 
						</td>
					</tr>
					
					<tr>
						<th><strong class="p-red">* </strong>계정<br/><span class="pre">   </span><span>(이메일 주소 입력)</span></th>
						<td>
							<input type="text" class="text_form2" name="email">
							
						</td>
					</tr>
					<tr>
						<th> <strong class="p-red">* </strong>이름</th>
						<td>
							<input type="text" class="text_form"  name="name" >
						</td>
					</tr>
					
					<tr>
						<th><strong class="p-red">* </strong> 비밀번호</th>
						<td>
							<input type="password" class="text_form"  name="pwd" placeholder="4자 이상" autocomplete="off" >
								<div class="join_pw_tip"><strong style="font-size:13px;">영문/숫자/특수문자(공백제외) 중 2개 이상 조합</strong><em style="font-size:13px">(4자 이상 입력)</em></div>
						</td>
					</tr>
					<tr>
						<th><strong class="p-red">* </strong> 비밀번호 확인</th>
						<td>
							<input type="password" class="text_form"  name="pwd2" onKeyPress="if (event.keyCode == 13){CHECK_MEM_NEW();return;$('#info_agree').focus();return(event.keyCode != 13);}" />
						</td>
					</tr>
						<tr>
						<th> <strong class="p-red">* </strong>전화번호</th>
						<td>
							<input type="text" class="text_form"  name="phone" placeholder="ex)010-1234-5678">
						</td>
					</tr>
								<tr>
						<th> <strong class="p-red">* </strong>주소</th>
						<td>
							<div class="insert_addr_menu4">
			<div class="insert_addr_menu2">
					<input type="text" id="sample6_postcode" placeholder="우편번호" name="zipcode">
					<input type="text" id="sample6_address" placeholder="주소" name="addr1">
					<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addr2">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목" name="addr3">
					<input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기">
			</div>
		</div>
						</td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td><input typt="text" name="birth" placeholder="0000-00-00 형식으로 입력해주세요"></td>
					</tr>
					
				</tbody>
			</table>

	
			<div class="agreement_wrap">
                <p class="agree_all">
                	<input type="checkbox" id="c1" name="cc"  onclick="chkInput();"/><label for="c1"><span></span><em class="agree_txt">전체동의 (필수, 선택 모두 포함)</em></label>
                </p>

                <p class="agrees_ws mt10">
                    <span class="agrees"><input type="checkbox" id="c2" name="cc" /><label for="c2"><span></span><em class="agree_txt">이용약관<em class="fc999"> (필수)</em>&nbsp;&nbsp; <em class="fs09e">&nbsp;〉</em></em></label>
                    </span>
                    <span class="agrees ml10">
                        <input type="checkbox" id="c3" name="cc" /><label for="c3"><span></span><em class="agree_txt">개인정보처리방침<em class="fc999"> (필수)</em>&nbsp;&nbsp; <em class="fs09e">&nbsp;〉</em></a></em></label>
                    </span>
                    <span class="agrees ml10">
                        <input type="checkbox" id="c4" name="cc" /><label for="c4"><span></span><em class="agree_txt">본인은 만 14세 이상 입니다.<em class="fc999"> (필수)</em></em></label>
                    </span>
                </p>
                <p class="agrees_ws mt10">
                    <span class="agrees">
                            <input type="checkbox" id="c5" name="cc" onclick="chkInputEtc();"/><label for="c5"><span></span><em class="agree_txt">마케팅 수신동의<em class="fc999"> (선택)</em></a></em></label>
                    </span>
                    <span class="agrees">
                            <input type="checkbox" id="c6" name="cc" /><label for="c6"><span></span><em class="agree_txt">이메일</a></em></label>
                    </span>
                    <span class="agrees ml10">
                            <input type="checkbox" id="c7" name="cc" /><label for="c7"><span></span><em class="agree_txt">문자</em>&nbsp;&nbsp;</label>
                    </span>
                </p>
			</div>

           
	

			<div>
      <tr align="center">
        <td colspan="2"> <input type="submit" class="submit_form" value="가입하기"> ※회원정보를 정확히 확인해주시기 바랍니다.</td>
      </tr>
      			</div>			
		</div><!-- // contents -->
	</div><!-- // container -->
 
 </form>
 
 
 
 
 

 
 
 




   
   
   
   
   
   
   
   
   
   
   
   
   
   
</body>
</html>