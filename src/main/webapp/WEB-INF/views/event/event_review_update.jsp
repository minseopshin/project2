<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      font-size:14px;           
    }
    #ereview_tbl #tit {      
      align:center;
      text-align:center;
      font-size:14px;
      font-weight:600;           
    }
    #ereview_sbm {
      width:200px;
      height:40px;
      background-color:#FF9436;
      margin-top:50px;
      font-size:20px;
      font-weight:600;    
    }
    #ereview_sbm:hover {
      color:white;
    }
    
  </style>
  <script>
    function setThumbnail() {
	  for(var image of event.target.files) {
		  var reader=new FileReader();
		  reader.onload=function(event)
		  {
			  var img=document.createElement("img");
			  img.setAttribute("src",event.target.result);
			  img.setAttribute("width","50");
			  document.getElementById("imgview").innerHTML="";
			  document.getElementById("imgview").appendChild(img);
		  }
		  
		  reader.readAsDataURL(image)
	  }
    }
  </script>
</head>
<body>
  <div id="container">
  <form method="post" action="event_review_update_ok" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${edto.id}">
    <div id="ereview_tbl">
    <table>
      <tr>
        <td id="tit">제목&nbsp;</td>
        <td><input type="text" name="title" value="${edto.title}"></td>
      </tr>
      <tr>
        <td id="tit">내용&nbsp;</td>
        <td><textarea cols="50" rows="3" name="content">${edto.content}</textarea></td>
      </tr>
      <tr>
        <td id="tit">사진&nbsp;</td>
        <td><input type="file" name="fname"></td>
      </tr>
      <br>
      <tr>
        <td colspan="2" align="center">
          <input id="ereview_sbm" type="submit" value="수정">
        </td>
      </tr>
    </table>
    </div>
  </form>
  </div>
</body>
</html>