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
			location = "update_main_addr?id="+id
		}
		else	{
			return false
		}
	}
	function delete_addr()	{
		var id = $("input[name='addr_list']:checked").val()
		if(id=="base"){
			alert("기본배송지는 삭제불가합니다.")
		}
		else	{
			var result = confirm("삭제하시겠습니까?")
			if(result)	{
				location = "delete_main_addr?id="+id
			}
			else	{
				return false
			}
		}
	}
	function insert_main_addr()	{
		if (${chk == 5})	{
			alert("주소는 최대 5개까지 등록됩니다.")
		}
		else	{
			location="insert_main_addr";
		}
	}
</script>
<style>
	#addr {display:inline-block; width:1500px; text-align:center;  padding-bottom:50px}
	.addr1 {display:inline-block; float:left; width:1100px; }
	.addr2 {display:inline-block; float:left; height:30px; padding-top:15px}
	.addr3 {display:inline-block; float:left; height:30px; padding-top:15px}
	.addr4 {display:inline-block; float:left; height:30px; padding-top:15px; width:130px;}
</style>
</head>
<body>
	<div id="addr">
	<div style="padding-top:30px; padding-bottom:20px "><h3>배송지선택</h3></div>
	<div style="display:inline-block;  width:1100px">
		<div class="addr1">
			<div class="addr2""></div>
			<div class="addr2" style="width:195px">이름</div>
			<div class="addr2" style="width:220px">휴대폰</div>
			<div class="addr2" style="width:675px"> 주소</div>
		</div>
		<div class="addr1">
				<div class="addr3" style="width:1100px; background:#FF9436;border-bottom:2px solid black; border-top:2px solid black">기본 배송지</div>
				<div class="addr3" style="width:30px; padding-left:5px"><input type="radio" value="base" name="addr_list"></div>
				<div class="addr3" style="width:160px">${mdto.name}</div>
				<div class="addr3" style="width:220px">${mdto.phone}</div>
				<div class="addr3" style="width:675px">${mdto.addr1} ${mdto.addr2} ${mdto.addr3}</div>
				<div class="addr3" style="width:1100px; background:#FF9436; border-bottom:2px solid black;border-top:2px solid black" >등록배송지</div>
			<c:forEach var="adto" items="${alist}">
				<div style="display:inline-block; border-bottom:1px solid black">
					<div class="addr3" style="width:30px; padding-left:5px"><input type="radio" value="${adto.id}" name="addr_list"></div>
					<div class="addr3" style="width:160px">${adto.name}</div>
					<div class="addr3" style="width:220px">${adto.phone}</div>
					<div class="addr3" style="width:675px">${adto.addr1} ${adto.addr2} ${adto.addr3}</div>
				</div>
			</c:forEach>
		</div>
		<div class="addr1" style="padding-top:5px">
			<div class="addr4"><input type="button" value="배송지등록" onclick="insert_main_addr()" style="background:#FF9436; width:150px; height:50px; border:none"></div>
			<div style="float:right">
			<div class="addr4" >
				<input type="button" value="배송지수정" onclick="return update_addr()" style="background:#FF9436; width:100px; height:50px; border:none">
			</div>
			<div class="addr4" >
				<input type="button" value="배송지삭제" onclick="return delete_addr()" style="background:#FF9436; width:100px; height:50px; border:none">
			</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>