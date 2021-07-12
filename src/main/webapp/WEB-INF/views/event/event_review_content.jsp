<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <style>    
    #container {
      width:1000px;
      margin:auto;
    }
    #ereview_tbl {         
      display:inline-block;
      font-size:16px;           
    }
    #ereview_tbl #tit {      
      align:center;
      text-align:center;
      font-size:16px;
      font-weight:600;           
    }
    #ereview_sbm {
      display:inline-block;
      width:200px;
	  height:40px;
	  border:1px solid #FF9436;
	  display:table-cell;
      vertical-align:middle;
	  text-align:center;
	  align:center;
	  margin-top:50px;
	  margin-left:20px;
	  font-weight:600; 
    }
    #ereview_sbm:hover {
      background:#FF9436;
	  color:white;
    }
    #ereview_sbm a {
      text-decoration:none;
      color:black;
    }
    #ereview_sbm a:hover {
      text-decoration:none;
      color:white;
    }
  </style>
  <script>    
    function event_review_delete(id)
    {
    	if(confirm("삭제하시겠습니까?")==true)
    	{
    		location.href="erdelete?id="+id;
    		alert("삭제가 완료 되었습니다.")
    	}
    	else
    	{    		
    		alert("삭제가 취소 되었습니다.")
    	}
    }
  </script>
</head>
<body>
  <div id="container">
  <div id="ereview_tbl">
  <table align="center" width="600">
    <colgroup>
      <col style="width:10%">
      <col style="width:40%">
      <col style="width:10%">
      <col style="width:10%">
      <col style="width:10%">
      <col style="width:20%">
    </colgroup>
    <thead>
    <tr>
      <td id="tit">제목</td>
      <td>${edto.title}</td>
      <td id="tit">조회수</td>
      <td>${edto.readnum}</td>
      <td id="tit">작성일</td>
      <td>${edto.writeday}</td>
    </tr>
    </thead>
    <tr>
      <td id="tit">내용</td>
      <td>${edto.content}</td>
    </tr>
    <br>  
    <tr>
      <td colspan="6" align="center">
        <span id="ereview_sbm"><a href="event_review">목록</a></span>
        <c:if test="${userid==edto.userid}">
          <span id="ereview_sbm"><a href="event_review_update?id=${edto.id}">수정</a></span>
          <span id="ereview_sbm"><a href="javascript:event_review_delete(${edto.id})">삭제</a></span>
        </c:if>
      </td>
    </tr>
  </table>
  </div>
  </div>
</body>
</html>