<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <style>
  	#wrap {
  		width:1500px;

  	}
    #title1 {
    	width:1100px;
    	height:100px;
    	text-align:center;
    	vertical-align:middle;
    	font-size:32px;
    }
    #title2 {
    	width:1100px;
    	height:100px;
    	text-align:center;
    	vertical-align:middle;
    	font-size:36px;
    	font-weight:800;
    }
    #title3 {
    	width:1100px;
    	height:100px;
    	text-align:center;
    	vertical-align:middle;
    	font-size:26px;
    }
    #best_btn {
    	width:320px;
    	height:80px;
    	border:1px solid black;
    	border-radius: 10px;
    	display:table-cell;
    	vertical-align:middle;
	    text-align:center;
	    align:center;
    }
    #best_btn:hover {
    	color:#FF9436;
    	border:1px solid #FF9436;
    	border-radius: 10px;
    }
    #best a {
    	text-decoration:none;
    	color:black;
    }
    #best a:hover {
    	text-decoration:none;
    	color:pink;
    }
    #prd_name {
    	font-weight:600;
    }
    #rprice {
    	text-decoration:line-through;
    	color:gray;
    	font-size:14px;
    }
    #first_dc {
    	color:red;
    	font-weight:600;
    	font-size:20px;
    }
    #hprice {
    	font-weight:600;
    	font-size:20px;
    }
    #notice {
    	color:#464646;
    	list-style-type:none;
    	font-size:14px;
    	text-align:left;
    	padding-left:400px;
    }
  </style>
</head>
<body>
  <div id="wrap" align="center">
  <div style="width:1100px;">
    <div id="1st_title" align="center">
      <div id="title1">첫 구매 이벤트</div> <p>
      <span id="title2">인기 상품 100원!</span> <p>
      <span id="title3"><b>배송 상품 2만원 이상 주문</b> 시,</span> <br>
      <span id="title3">구매하실 수 있습니다.</span>
    </div>
    <hr>
    <div id="1st_list" align="center">
      <c:set var="i" value="1"/>
      <table width="1200" align="center">
        <tr>
        <c:forEach var="bdto" items="${rlist}">        
          <td align="center">
            <img src="${bdto.prd_img}" width="300" height="300"> <p>
            <span id="prd_name">[첫구매 이벤트] ${bdto.prd_name}</span> <p>
            <span id="rprice">${bdto.price}원</span> &nbsp; <span id="first_dc">100원</span>
          </td>
          <c:if test="${i%3==0}">
           </tr>
           <tr>
          </c:if>
        <c:set var="i" value="${i+1}" />
        </c:forEach> 
        </tr>    
      </table>
    </div>
    <p>
    <br>
    <div id="1st_notice">
      <ul id="notice">
        <li>배송 상품 <b>2만원 이상 주문 시</b> 구매 가능합니다.</li>
        <li><b>구매 이력이 있는 계정, 전화번호</b>는 이벤트에서 <b>제외</b>됩니다.</li>
        <li>이벤트 내 상품 구성 및 금액은 <b>사전 공지 없이 변경</b> 될 수 있습니다.</li>
      </ul>
    </div>
    <p>
    <br>
    
    <div id="best_tit" align="center">
      <span id="title2">인기 상품 BEST</span>
    </div>
    <div id="best_list" align="center">
      <c:set var="i" value="1"/>
      <table width="1200" align="center">
        <tr>
          <c:forEach var="bdto" items="${hlist}">        
            <td align="center">
              <a href="../product/readnum?id=${bdto.id}&chk=1&fb=0" style="color:black;text-decoration:none">
                <img src="${bdto.prd_img}" width="300" height="300"> <p>
                <span id="prd_name">${bdto.prd_name}</span> <p>
                <span id="hprice">${bdto.price}원</span>
              </a>
            </td>
          <c:if test="${i%3==0}">
        </tr>
        <tr>
          </c:if>
        <c:set var="i" value="${i+1}" />
        </c:forEach> 
        </tr>    
      </table>
    </div>
    <p>
    <br>
    <div id="best" align="center">
      <div id="best_btn">
        <a href="../product/heart_product">
          <b>인기상품</b> 더 보러가기 >
        </a>
      </div>
    </div>
    </div>
  </div>
</body>
</html>