<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      font-size:18px;
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
  <form method="post" action="event_review_write_ok" enctype="multipart/form-data">   
    <div id="ereview_tbl">
    <table align="center">
      <tr>
        <td id="tit">제목</td>
        <td><input type="text" name="title"></td>
      </tr>
      <tr>
        <td id="tit">내용</td>
        <td><textarea cols="50" rows="10" name="content"></textarea></td>
      </tr>
      <tr>
        <td id="tit">사진</td>
        <td><input type="file" name="fname"></td>
      </tr>
      <br>      
      <tr>
        <td colspan="2" align="center">
          <input type="submit" id="ereview_sbm" value="등록">
        </td>
      </tr>
    </table>
    </div>   
  </form>
 </div>
</body>
</html>