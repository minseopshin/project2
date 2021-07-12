<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    	padding-left:540px;
    	width:420px;
    	align:center;
    	text-align:center;
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
    #wrap {
    	width:1500px;
    }
    #container li {
    	list-style:none;
    }
  </style>
</head>
<body>
  <div id=event_top>
    <div class=sub><a href="event">이벤트</a></div>
    <div class=sub id=chuga></div>
    <div class=sub><a href="event_review">이벤트 후기</a></div>
    <!-- 
    <span class=sub id=chuga></span>
    <span class=sub>이벤트3</span>
     -->
  </div>
  <hr>
  <div id="wrap">
    <div id="container">
      <ul id="event_list" align="center">
        <li>
          <a href="firstbuy">
            <img src="../resources/event/11.png" width="640" height="360">
          </a> <p>
        </li>
        <li>
          <a href="coupon">
            <img src="../resources/event/22.png" width="640" height="360">
          </a> <p>
        <!-- 
        </li>
        <li><img src="resources/event/3.jpg" width="960" height="540"></li>
         -->
      </ul>
    </div>	
  </div>
</body>
</html>