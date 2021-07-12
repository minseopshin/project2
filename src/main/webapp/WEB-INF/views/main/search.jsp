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
	<div style="text-align:center"><h3>검색</h3></div>
	<div id="search_bar">
		<form method="post" action="search?cate=all">
			<input type="text" value="${search1}" name="search">
			<input type='submit' value="검색">
		</form>
	</div>
	<div style="height:50px; padding-top:35px;"><span style="color:orange">"${search1}"</span> 총 <span style="color:orange">"${cnt}"</span>건 검색결과 입니다.</div>
	<div id="catenum">
		<c:if test="${cate == 'all'}">
			<div class="search_cate" style="color:orange">전체(${total_cnt})</div>
		</c:if>
		<c:if test="${cate != 'all'}">
			<div class="search_cate"><a href="search?search=${search1}&cate=all" >전체(${total_cnt})</a></div>
		</c:if>
		<c:forEach var="pdto" items="${clist}">
			<c:if test="${cate == pdto.category2}">
			<div class="search_cate" style="color:orange">${pdto.category2}(${pdto.catenum})</div>
			</c:if>
			<c:if test="${cate != pdto.category2}">
			<div class="search_cate"><a href="search?search=${search1}&cate=${pdto.category2}">${pdto.category2}(${pdto.catenum})</a></div>
			</c:if>
		</c:forEach>	
	</div>
	<div style="border-bottom:1px solid black; width:1200px; height:120px; display:inline-block; text-align:center;">
		<div style="float:right; padding-bottom:5px;">
		<c:if test="${chk == '1'}">
			<div class="search_op" style="color:orange">추천순</div> |
		</c:if> 
		<c:if test="${chk != '1'}">
			<div class="search_op"><a href="search?search=${search1}&cate=${cate}&chk=1">추천순</a></div> |
		</c:if> 
		<c:if test="${chk == '2'}"> 
			<div class="search_op" style="color:orange">신상품순</div> |
		</c:if>
		<c:if test="${chk != '2'}"> 
			<div class="search_op"><a href="search?search=${search1}&cate=${cate}&chk=2">신상품순</a></div> |
		</c:if>
		<c:if test="${chk == '3'}"> 
			<div class="search_op" style="color:orange">판매량순</div> |
		</c:if>
		<c:if test="${chk != '3'}"> 
			<div class="search_op"><a href="search?search=${search1}&cate=${cate}&chk=3">판매량순</a></div> |
		</c:if>
		<c:if test="${chk == '4'}">
			<div class="search_op" style="color:orange">낮은가격순</div> |
		</c:if> 
		<c:if test="${chk != '4'}">
			<div class="search_op"><a href="search?search=${search1}&cate=${cate}&chk=4">낮은가격순</a></div> |
		</c:if> 
		<c:if test="${chk == '5'}" >
			<div class="search_op" style="color:orange">높은가격순</div>
		</c:if> 
		<c:if test="${chk != '5'}">
			<div class="search_op"><a href="search?search=${search1}&cate=${cate}&chk=5">높은가격순</a></div>
		</c:if> 
		</div>
	</div> 
	<div style="display:inline-block; width:1000px; padding-top:20px;  text-align:center; padding-bottom:50px;">
	<c:forEach var="sdto" items="${list}">
		<div style="display:inline-block; padding-left:65px; padding-top:40px; float:left">
			<a href="../product/readnum?id=${sdto.id}&chk=1&fb=0">
				<img src="${sdto.prd_img}" class="img_1"> 
			</a><hr>
			<div style="width:250px; height:50px;">
				<a href="../product/readnum?id=${sdto.id}&chk=1&fb=0">${sdto.prd_name}</a>
			</div>
			<span>${sdto.price} 원</span>
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