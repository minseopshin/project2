<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#search {width:1500px; text-align:center}
	#search_bar {height:50px; border-top:1px solid black; border-bottom:1px solid black; padding-top:30px; text-align:center;}
	#catenum {width:1000px; text-align:left; border:1px solid black;display:inline-block;}
	.search_cate {display:inline-block; width:230px; padding-left:15px; padding-top:10px; padding-bottom:5px}
	.search_op {display:inline-block;  padding:10px;padding-top:100px; padding-bottom:5px;}
	.img_1 {width:250px; height:300px}
	a {text-decoration:none; color:black}
	a:hover {text-decoration:underline;}
</style>
</head>
<body>
<div id="search">
	<div style="text-align:center; padding-top:100px"><h3>신상품</h3></div>
	<div style="display:inline-block; width:1000px; padding-top:20px;  text-align:center; padding-bottom:50px;">
	<c:forEach var="pdto" items="${plist}">
		<div style="display:inline-block; padding-left:65px; padding-top:40px; float:left">
			<a href="../product/readnum?id=${pdto.id}&chk=1&fb=0">
			<img src="${pdto.prd_img}" class="img_1"> 
			</a><hr>
			<div style="width:250px; height:50px;">
				<a href="../product/readnum?id=${pdto.id}&chk=1&fb=0">${pdto.prd_name}</a>
			</div>
			<span>${pdto.price} 원</span>
		</div>
	</c:forEach>
	</div>
	<div>
		<c:if test="${pagestart != 1}">
			<a href="search?search=${search1}&cate=${cate}&chk=${chk}&page=${pagestart-1}"> << </a>
		</c:if>
		<c:if test="${page != 1}">
			<a href="search?search=${search1}&cate=${cate}&chk=${chk}&page=${page-1}"> < </a>
		</c:if>
		<c:forEach var="i" begin="${pagestart}" end="${pageend}">
			<c:if test="${page == i}">
				<span style="color:red">${i}</span>
			</c:if>
			<c:if test="${page != i}">
				<a href="search?search=${search1}&cate=${cate}&chk=${chk}&page=${i}">${i}</a>
			</c:if>
		</c:forEach>
		<c:if test="${page != pagecnt}">
			<a href="search?search=${search1}&cate=${cate}&chk=${chk}&page=${page+1}"> > </a>
		</c:if>
		<c:if test="${page != pagecnt}">
			<a href="search?search=${search1}&cate=${cate}&chk=${chk}&page=${pageend +1}"> >></a>
		</c:if>
	</div>
</div>
</body>
</html>