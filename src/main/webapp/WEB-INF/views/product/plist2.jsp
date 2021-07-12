<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#tot
	{
		display:inline-block;
		width:1500px;
		/* height:1500px;
		overflow:hidden; */
		margin-bottom:200px;
	}
	.pdt
	{
		display:inline-block;
		width:1000px;
	}
	.pdts
	{
		width:300px;
		display:inline-block;
		position:relative;
		padding:10px;
		margin:2px;
		height:400px;
		margin-top:10px;
	}
	.pdts #name
	{
		height:50px;
		font-size:14px;
		/* background:skyBlue; */
		display:block;
		position:left;
		font-family:나눔스퀘어;
		padding-left:13px;
		padding-top:10px;
		/* border:1px solid black; */
	}
	.pdts #price
	{
		font-weight:bold;
		font-size:18px;
		position:left;
		padding-left:13px;
	}
	.pdts img
	{
		margin-left:15px;
	}
	.topmenus
	{
		floast:left;
		display:inline-block;
		left:460px;
		padding-top:50px;
		width:1100px;
		margin-left:350px;
	}
	.topmenu
	{
		vertical-align:middle;
		float:left;
		width:200px;
		display:inline-block;
		height:30px;
		/* border:1px solid gray; */
		margin-bottom:5px;
		text-align:center;
		
	}
	.topmenu a
	{
		vertical-align:middle;
		padding-top:px;
		padding-bottom:10px;
		padding-left:5px;
		padding-left:5px;
		
	}
	.left_menu
	{
		display:inline-block;
		text-align:center;
	}
	.left_menu a
	{
		color:black;
		text-decoration:none;
		text-align:center;
		line-height:30px;
		padding-margin:8px;
	}
	#second
	{
		padding-top:80px;
		display:inline-block;
		width:1500px;
	}
	#left
	{
		position:absolute;
		/* display:flex;
		float:left; */
		width:150px;
		height:1000px;
		top:510px;
		z-index:1000;
		margin-left:150px;
	}
	#right
	{
		display:inline-block;
		float:right;
		margin-right:150px;
	}
	#more
	{
		width:1500px;
		display:inline-block;
		padding-top:30px;
		padding-bottom:30px;
		padding-left:880px;
		margin-bottom:200px;
		
	}
	#more a
	{
		text-decoration:none;
		color:black;
	}
	#up
	{
		width:1500px;
		display:inline-block;
		
	}
	#up_btn
	{
		width:1500px;
		float:right;
		font-size:100px;
		text-decoration:none;
		color:#FF9436;
		text-align:right;
	}
	#pager
	{
		display:inline-block;
		width:500px;
		padding-left:80px;
		font-size:30px;
		text-decoration:none;
		text-align:center;
	}
</style>
<script>
function more()
{
	document.getElementById("tot").style.overflow="visible";
	document.getElementById("more").style.display="none";
}

$(document).ready(function(){
	$("#up").click(function(){
		$('#right').scrollTop(500);
	})
});

function topmenu_change1(id)
{
	document.getElementById("topmenu"+id).style.color="white";
	document.getElementById("top"+id).style.background="#FF9436";
}
function topmenu_change2(id)
{
	document.getElementById("topmenu"+id).style.color="black";
	document.getElementById("top"+id).style.background="white";
}
function leftmenu_change1(id)
{
	document.getElementById("leftmenu"+id).style.color="white";
	document.getElementById("leftmenu_one"+id).style.background="#FF9436";
}
function leftmenu_change2(id)
{
	document.getElementById("leftmenu"+id).style.color="black";
	document.getElementById("leftmenu_one"+id).style.background="white";
}
$(document).ready(function(){

	$(window).scroll(function(){
		if($(window).scrollTop()>=250)
		{
			if($(window).scrollTop == 100)
			{
				$('#left').css('top',$(window).scrollTop()+500);
			}
			else
			{
				if(($("body").height()-$(window).height()-$(window).scrollTop())>=200)
				{
					$('#left').css('top',$(window).scrollTop()+160);
				}
				else
				{
					$('#left').css('bottom',510);
				}
			}
		}
		else
		{
			$('#left').css('top',510);
		}
	});

});
</script>
</head>
<body>
<div id="tot">
<div class="topmenus">
<c:forEach items="${topmenu}" var="top">
<div class="topmenu" id="top${top.id}">
 <a href="plist2?category1=${top.category1}&category2=${top.category2}" onmouseover="topmenu_change1(${top.id})" onmouseout="topmenu_change2(${top.id})" id="topmenu${top.id}" style="color:black;text-decoration:none" name="category2">
	<span> ${top.category2} </span>
 </a>
</div>
</c:forEach>
</div>
<div id="second">
<div id="left">
<div class="left_menu">
<c:forEach items="${leftmenu}" var="left">
 <div id="leftmenu_one${left.id}">
 <a href="plist3?category1=${left.category1}" style="color:black;text-decoration:none" onmouseover="leftmenu_change1(${left.id})" onmouseout="leftmenu_change2(${left.id})" id="leftmenu${left.id}" name="category1"> ${left.category1} </a>
 </div>
 <p>
</c:forEach>
</div>
</div>
<div id="right">
<div class="pdt">
<c:forEach items="${plist2}" var="bdto">
<div class="pdts">
 <a class="box" href="readnum?id=${bdto.id}&chk=1&fb=0" style="color:black;text-decoration:none">
	<img src="${bdto.prd_img}" width="270px" height="270px">
	<span id="name"> ${bdto.prd_name} </span> 
	<span id="price"> ${bdto.price} 원 </span>
 </a>
</div>
</c:forEach>
</div>
</div>
</div>
</div>
<div id="pager" style="display:inline-block;width:1500px;">
	  <!-- 이전 페이지 이동 -->
         <!-- 10페이지 이전 이동 시작 -->
          <c:if test="${pstart != 1}">
           <a href="plist2?category1=${category1}&category2=${category2}&page=${pstart-1}" style="color:gray;text-decoration:none"> <span style="color:gray;text-decoration:none"> <<&nbsp; </span>  </a>
          </c:if>
          <c:if test="${pstart == 1}">
            << &nbsp;
          </c:if>
         <!-- 10페이지 이전 이동 끝 -->
         
         <!-- 1페이지 이전 이동 (현재페이지에서 1페이지 이전) -->
         <c:if test="${page > 1}">
          <a href="plist2?category1=${category1}&category2=${category2}&page=${page-1}" style="color:gray;text-decoration:none"> < &nbsp; </a>  
         </c:if>
         <c:if test="${page == 1}"> 
          < &nbsp;      
         </c:if>
         <!-- 1페이지 이전 이동 끝 -->
       <!-- 이전 페이지 이동 끝 -->
       <c:forEach begin="${pstart}" end="${pend}" var="i">
        <c:if test="${page == i}">
         <a href="plist2?category1=${category1}&category2=${category2}&page=${i}" style="color:#FF9436;text-decoration:none"> ${i}&nbsp; </a>
        </c:if>
        <c:if test="${page != i}">
         <a href="plist2?category1=${category1}&category2=${category2}&page=${i}" style="color:gray;text-decoration:none"> ${i}&nbsp; </a>
        </c:if>
       </c:forEach>
       <!-- 다음 페이지 이동 -->
        <!-- 다음 1페이지 이동 -->
        <c:if test="${page != pagecnt }">
         <a href="plist2?category1=${category1}&category2=${category2}&page=${page+1}" style="color:gray;text-decoration:none"> <span style="color:gray;text-decoration:none"> >&nbsp; </span> </a>
        </c:if>
        <c:if test="${page == pagecnt}"> 
          >&nbsp;
        </c:if>
        <!-- 다음 1페이지 이동 끝 -->
        
        <!-- 다음 10페이지 이동 시작 -->
        <c:if test="${pend != pagecnt }">
         <a href="plist2?category1=${category1}&category2=${category2}&page=${pend+1}" style="color:gray;text-decoration:none"> <span style="color:gray;text-decoration:none"> >> </span> </a>
        </c:if>
        <c:if test="${pend == pagecnt}">
         >> 
        </c:if>
        <!-- 다음 10페이지 이동 끝 -->
       <!-- 다음 페이지 이동 끝 -->
	 </div>
<div id="up">
	<a href="#" onclick="up()">
	<span id="up_btn">
	↑
	</span>
	</a>
</div>
</body>
</html>