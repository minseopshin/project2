<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	function update_addr()	{
		var id = $("input[name='addr_list']:checked").val()
		var result = confirm("수정하시겠습니까?")
		if(result)	{
			location = "update_addr?id="+id
		}
		else	{
			return false
		}
	}
	function delete_addr()	{
		var id = $("input[name='addr_list']:checked").val()
		var result = confirm("삭제하시겠습니까?")
		if(result)	{
			location = "delete_addr?id="+id
		}
		else	{
			return false
		}
	}
	function insert_addr()	{
		if (${chk == 5})	{
			alert("주소는 최대 5개까지 등록됩니다.")
		}
		else	{
			location="insert_addr";
		}
	}
	function close1()	{
		window.opener.location="../payment/payment?a=bb";
		window.close();
	}
</script>
<style>
	#addr {width:800px; text-align:center; }
	.addr1 {display:inline-block; float:left; width:800px; }
	.addr2 {display:inline-block; float:left; height:30px; padding-top:15px}
	.addr3 {display:inline-block; float:left; height:30px; padding-top:15px}
	.addr4 {display:inline-block; float:left; height:30px; padding-top:15px}
</style>
</head>
<body>
	<div id="addr">
	<div style=""><h3>배송지선택</h3></div>
		<div class="addr1" style="border-top:3px solid black; border-bottom:1px solid black;">
			<div class="addr2"></div>
			<div class="addr2" style="width:135px">이름</div>
			<div class="addr2" style="width:180px">휴대폰</div>
			<div class="addr2" style="width:475px"> 주소</div>
		</div>
		<div class="addr1" style="border-bottom:1px solid black;">
			<c:forEach var="adto" items="${alist}">
				<div class="addr3"><input type="radio" value="${adto.id}" name="addr_list"></div>
				<div class="addr3" style="width:120px">${adto.name}</div>
				<div class="addr3" style="width:180px">${adto.phone}</div>
				<div class="addr3" style="width:450px">${adto.addr1} ${adto.addr2} ${adto.addr3}</div>
			</c:forEach>
		</div>
		<div class="addr1" style="border-top:1px solid black; border-bottom:1px solid black">
			<div class="addr4"><input type="button" value="배송지등록" onclick="insert_addr()"></div>
			<div class="addr4" style="float:right">
				<input type="button" value="배송지수정" onclick="return update_addr()">
				<input type="button" value="배송지삭제" onclick="return delete_addr()">
			</div>
		</div>
		<div style="display:inline-block; padding-top:30px; height:50px;"> 
			<input type="button" value="확인" id="close" onclick="close1()">
		</div>
	</div>
</body>
</html>