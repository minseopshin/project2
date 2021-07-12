<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script> 
  var chk=new XMLHttpRequest();
  function couponDown(id)
  {
	  // var a=document.getElementById("couponDown${cdto.id}").value;
	  chk.open("get","check?id="+id);
	  chk.send();
	  chk.onreadystatechange=function()
	  {
		  if(chk.readyState==4) // jsp 문서가 동작이 완료 됐음
		  {			
		  	if(chk.responseText != 0) // 브라우저에 출력되는 내용
		  	{		  		
		  		if(id==1)
		  		{		  			
		  			alert("이미 생일 쿠폰이 발급되었습니다.");		  			
		  		}
		  		else
		  		{
		  			alert("이미 발급된 쿠폰입니다.");
		  		}  		
		  	}
		  	else
		  	{
		  		if(id==1)
		  		{
		  			if(${birth_chk == "1"})
		  			{
		  				alert("★축 생일★ 쿠폰이 발급되었습니다.");
		  			}
		  			else
		  			{
		  				alert("생일 이벤트 대상이 아닙니다.");
		  			}
		  		}
		  		else
		  		{
		  			alert("쿠폰이 발급되었습니다.");
		  		}
		  	}
		  
		  }
	  }
  }
</script>
<style>
  #container button {
  	width:480px; 
  	height:80px;
  	background:white;
  	font-size:24px;
  	vertical-align:middle;
	text-align:center;
  }
  #container button:hover {
  	background:#FF9436;
  	color:white;
  }
</style>
</head>
<body>
  <div style="width:1500px; text-align:center; padding-top:50px">
    <h3>회원을 위해 준비한</h3>
    <h1>쿠　폰　북 </h1>
    <hr>
  </div>  
  <div id="container" style="width:1500px; text-align:center;">
   <c:forEach items="${list}" var="cdto">
    <c:if test="${cdto.id < 100}">
    <img src="../resources/event/${cdto.coupon_img}" width="480" height="270"> <p>    
    <button id="couponDown${cdto.id}" onclick="couponDown(${cdto.id})">쿠폰 다운로드</button> <p>
    </c:if>
   </c:forEach>
    <hr>
  </div>
</body>
</html>
