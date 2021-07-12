<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <style>
    #event_top a {
    	text-decoration:none;
    	color:black;
    }
    #event_top a:hover {
    	color:white;
    }
    #event_top {
    	margin:auto;
    	width:660px;
    }
    .sub {
	    display:inline-block;
        width:200px;
	    height:40px;
	    border:1px solid #FF9436;
	    display:table-cell;
        vertical-align:middle;
	    text-align:center;
	    align:center;
	    margin-left:20px;
	}
	#chuga {
        empty-cells:hide;
	    width:20px;
	}
	.sub:hover {
	    background:#FF9436;
	    color:white;
	}
	#event_board {
		padding-top:50px;
		margin:auto;
	}
	#event_board a{
	   text-decoration:none;
	   color:black;
	}
	#event_board a:hover{
	   text-decoration:underline;
	   color:gray;
	}
	#event_board #tit {      
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
</head>
<body>
  <div id=event_top>
    <span class=sub><a href="event">이벤트</a></span>
    <span class=sub id=chuga></span>
    <span class=sub><a href="event_review">이벤트 후기</a></span>
  </div>
  <hr>
  <table id=event_board width="600"align="center">
    <colgroup>
      <col>
      <col style="width:10%">
      <col style="width:10%">
      <col style="width:15%">
    </colgroup>
    <thead>
      <tr align="center">        
        <td id="tit">제목</td>
        <td id="tit">작성자</td>
        <td id="tit">조회수</td>
        <td id="tit">작성일</td>
      </tr>  
    </thead>
    <tboby>
     <c:forEach items="${list}" var="edto">
      <tr>       
        <td><a href="readnum?id=${edto.id}">${edto.title}</a></td>
        <td align="center">${edto.userid}</td>
        <td align="center">${edto.readnum}</td>
        <td align="center">${edto.writeday}</td>
      </tr>
     </c:forEach>
      <!-- 페이징 처리 시작 -->
      <tr>
        <td colspan="4" align="center">
          <c:if test="${pstart != 1}">
            <a href="event_review?page=${pstart-1}"> << </a>
          </c:if>
          <c:if test="${pstart == 1}">
            <<
          </c:if>
          
          <c:if test="${page > 1}">
            <a href="event_review?page=${page-1}"> < </a>
          </c:if>
          <c:if test="${page == 1}">
            <
          </c:if>
          
        <c:forEach begin="${pstart}" end="${pend}" var="i">
          <c:if test="${page == i}">
            <a href="event_review?page=${i}" style="color:red;"> ${i} </a>
          </c:if>
          <c:if test="${page != i}">
            <a href="event_review?page=${i}"> ${i} </a>
          </c:if>
        </c:forEach>
        
          <c:if test="${page != pagecnt}">
            <a href="event_review?page=${page+1}"> > </a>
          </c:if>
          <c:if test="${page == pagecnt}">
            >
          </c:if>
          
          <c:if test="${pend != pagecnt}">
            <a href="event_review?page=${pend+1}"> >> </a>
          </c:if>
          <c:if test="${pend == pagecnt}">
            >>
          </c:if>
        </td>
      </tr>
      <!-- 페이징 처리 끝 -->
      <tr>
        <td colspan="4" align="center">
          <span id="ereview_sbm"><a href="event_review_write?userid=">글쓰기</a></span>
        </td>
      </tr>
    </tboby>
    
  </table>
</body>
</html>