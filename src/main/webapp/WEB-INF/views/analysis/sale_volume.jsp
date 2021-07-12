<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(function(){
	var month=[];
	var labels=[];
	<c:if test="${menu == '6'}">
	var ctx1 = document.getElementById("myAreaChart1");
	var myLineChart = new Chart(ctx1, {
		type: 'line',
	  	data: {
	    	labels: ['상반기','하반기'],
	    	datasets: [{
				label: "Earnings",
				lineTension: 0.3,
				backgroundColor: "rgba(78, 115, 223, 0.05)",
				borderColor: "rgba(78, 115, 223, 1)",
				pointRadius: 3,
				pointBackgroundColor: "rgba(78, 115, 223, 1)",
				pointBorderColor: "rgba(78, 115, 223, 1)",
				pointHoverRadius: 3,
				pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
				pointHoverBorderColor: "rgba(78, 115, 223, 1)",
				pointHitRadius: 10,
				pointBorderWidth: 2,
				data: [${num1},${num2}]
	    	}],
	    } ,
	  	options: {
			maintainAspectRatio: false,
		    layout: {
		      	padding: {
		        left: 10,
		        right: 25,
		        top: 25,
		        bottom: 0
		      }
		    },
		    scales: {
		    	xAxes: [{
		        	time: {
		          	unit: 'date'
		        	},
		       	 	gridLines: {
		          	display: false,
		          	drawBorder: false
		        	},
		        	ticks: {
		          	maxTicksLimit: 2
		        	}
		      	}],
		      	yAxes: [{
		        	ticks: {
		          		maxTicksLimit: 10,
		          		padding: 10,
		          		// Include a dollar sign in the ticks
		          		callback: function(value, index, values) {
		            	return  number_format(value) +"개";
		          		}
		        	},
		        	gridLines: {
		          		color: "rgb(234, 236, 244)",
		          		zeroLineColor: "rgb(234, 236, 244)",
		          		drawBorder: false,
		          		borderDash: [2],
		          		zeroLineBorderDash: [2]
		        	}
		      	}],
		    },
		    legend: {
		      display: false
		    },
		    tooltips: {
			      backgroundColor: "rgb(255,255,255)",
			      bodyFontColor: "#858796",
			      titleMarginBottom: 10,
			      titleFontColor: '#6e707e',
			      titleFontSize: 14,
			      borderColor: '#dddfeb',
			      borderWidth: 1,
			      xPadding: 5,
			      yPadding: 15,
			      displayColors: false,
			      intersect: false,
			      mode: 'index',
			      caretPadding: 10,
			      callbacks: {
			        label: function(tooltipItem, chart) {
			          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
			          return datasetLabel + ':' + number_format(tooltipItem.yLabel)+"개";
			        }
		    	}
		    }
		  }
		});
	    </c:if>
	<c:if test="${menu == '3'}">
	var ctx1 = document.getElementById("myAreaChart1");
	var myLineChart = new Chart(ctx1, {
	  type: 'line',
	  data: {
	    // labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
	    labels: ['1분기','2분기','3분기','4분기'],
	    datasets: [{
	      label: "Earnings",
	      lineTension: 0.3,
	      backgroundColor: "rgba(78, 115, 223, 0.05)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: [${num1},${num2},${num3},${num4}],
	    }],
	  },
	  options: {
		    maintainAspectRatio: false,
		    layout: {
		      padding: {
		        left: 10,
		        right: 25,
		        top: 25,
		        bottom: 0
		      }
		    },
		    scales: {
		      xAxes: [{
		        time: {
		          unit: 'date'
		        },
		        gridLines: {
		          display: false,
		          drawBorder: false
		        },
		        ticks: {
		          maxTicksLimit: 4
		        }
		      }],
		      yAxes: [{
		        ticks: {
		          maxTicksLimit: 5,
		          padding: 10,
		          // Include a dollar sign in the ticks
		          callback: function(value, index, values) {
		            return  number_format(value) +"개";
		          }
		        },
		        gridLines: {
		          color: "rgb(234, 236, 244)",
		          zeroLineColor: "rgb(234, 236, 244)",
		          drawBorder: false,
		          borderDash: [2],
		          zeroLineBorderDash: [2]
		        }
		      }],
		    },
		    legend: {
		      display: false
		    },
		    tooltips: {
		      backgroundColor: "rgb(255,255,255)",
		      bodyFontColor: "#858796",
		      titleMarginBottom: 10,
		      titleFontColor: '#6e707e',
		      titleFontSize: 14,
		      borderColor: '#dddfeb',
		      borderWidth: 1,
		      xPadding: 15,
		      yPadding: 15,
		      displayColors: false,
		      intersect: false,
		      mode: 'index',
		      caretPadding: 10,
		      callbacks: {
		        label: function(tooltipItem, chart) {
		          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
		          return datasetLabel + ':' + number_format(tooltipItem.yLabel)+"개";
		        }
		      }
		    }
		  }
		});
	    </c:if>
	<c:if test="${menu == 'm'}">
	<c:forEach var="adto1" items="${alist1}">
		var label = "${adto1.month}"
		var month_price = ${adto1.num}
		month.push(month_price);
		labels.push(label);
	</c:forEach>
	var ctx1 = document.getElementById("myAreaChart1");
	var myLineChart = new Chart(ctx1, {
	  type: 'line',
	  data: {
	    // labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
	    labels: [labels[0],labels[1],labels[2],labels[3],labels[4],labels[5],labels[6],labels[7],labels[8],labels[9],labels[10],labels[11]],
	    datasets: [{
	      label: "Earnings",
	      lineTension: 0.3,
	      backgroundColor: "rgba(78, 115, 223, 0.05)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: [month[0],month[1],month[2],month[3],month[4],month[5],month[6],month[7],month[8],month[9],month[10],month[11]],
	    }],
	  } ,
	  options: {
		    maintainAspectRatio: false,
		    layout: {
		      padding: {
		        left: 10,
		        right: 25,
		        top: 25,
		        bottom: 0
		      }
		    },
		    scales: {
		      xAxes: [{
		        time: {
		          unit: 'date'
		        },
		        gridLines: {
		          display: false,
		          drawBorder: false
		        },
		        ticks: {
		          maxTicksLimit: 8
		        }
		      }],
		      yAxes: [{
		        ticks: {
		          maxTicksLimit: 10,
		          padding: 10,
		          // Include a dollar sign in the ticks
		          callback: function(value, index, values) {
		            return  number_format(value) +"개";
		          }
		        },
		        gridLines: {
		          color: "rgb(234, 236, 244)",
		          zeroLineColor: "rgb(234, 236, 244)",
		          drawBorder: false,
		          borderDash: [2],
		          zeroLineBorderDash: [2]
		        }
		      }],
		    },
		    legend: {
		      display: false
		    },
		    tooltips: {
		      backgroundColor: "rgb(255,255,255)",
		      bodyFontColor: "#858796",
		      titleMarginBottom: 10,
		      titleFontColor: '#6e707e',
		      titleFontSize: 14,
		      borderColor: '#dddfeb',
		      borderWidth: 1,
		      xPadding: 3,
		      yPadding: 10,
		      displayColors: false,
		      intersect: false,
		      mode: 'index',
		      caretPadding: 10,
		      callbacks: {
		        label: function(tooltipItem, chart) {
		          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
		          return datasetLabel + ':' + number_format(tooltipItem.yLabel)+"개";
		        }
		      }
		    }
		  }
		});
	    </c:if>
	<c:if test="${menu == 'w'}">
	<c:forEach var="adto" items="${alist}">
		var start = "${adto.start}"
		var end = "${adto.end}"
		var se = start+"~"+end
		
		var month_price = ${adto.num}
		month.push(month_price);
		labels.push(se);
		
	</c:forEach>
	var ctx1 = document.getElementById("myAreaChart1");
	var myLineChart = new Chart(ctx1, {
	  type: 'line',
	  data: {
	    // labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
	    labels: [labels[0],labels[1],labels[2],labels[3],labels[4],labels[5],labels[6]],
	    datasets: [{
	      label: "Earnings",
	      lineTension: 0.3,
	      backgroundColor: "rgba(78, 115, 223, 0.05)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: [month[0],month[1],month[2],month[3],month[4],month[5],month[6]],
	    }],
	  } ,
	  options: {
		    maintainAspectRatio: false,
		    layout: {
		      padding: {
		        left: 10,
		        right: 25,
		        top: 25,
		        bottom: 0
		      }
		    },
		    scales: {
		      xAxes: [{
		        time: {
		          unit: 'date'
		        },
		        gridLines: {
		          display: false,
		          drawBorder: false
		        },
		        ticks: {
		          maxTicksLimit: 7
		        }
		      }],
		      yAxes: [{
		        ticks: {
		          maxTicksLimit: 5,
		          padding: 10,
		          // Include a dollar sign in the ticks
		          callback: function(value, index, values) {
		            return  number_format(value) +"개";
		          }
		        },
		        gridLines: {
		          color: "rgb(234, 236, 244)",
		          zeroLineColor: "rgb(234, 236, 244)",
		          drawBorder: false,
		          borderDash: [2],
		          zeroLineBorderDash: [2]
		        }
		      }],
		    },
		    legend: {
		      display: false
		    },
		    tooltips: {
		      backgroundColor: "rgb(255,255,255)",
		      bodyFontColor: "#858796",
		      titleMarginBottom: 10,
		      titleFontColor: '#6e707e',
		      titleFontSize: 14,
		      borderColor: '#dddfeb',
		      borderWidth: 1,
		      xPadding: 15,
		      yPadding: 15,
		      displayColors: false,
		      intersect: false,
		      mode: 'index',
		      caretPadding: 10,
		      callbacks: {
		        label: function(tooltipItem, chart) {
		          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
		          return datasetLabel + ':' + number_format(tooltipItem.yLabel)+"개";
		        }
		      }
		    }
		  }
		});
	    </c:if>
	<c:if test="${menu == 'd'}">
	<c:forEach var="adto" items="${alist}">
		var label = "${adto.orderday}"
		var day_price = ${adto.num}
		month.push(day_price);
		labels.push(label);
	</c:forEach>
	var ctx1 = document.getElementById("myAreaChart1");
	var myLineChart = new Chart(ctx1, {
	  type: 'line',
	  data: {
	    // labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
	    labels: [labels[0],labels[1],labels[2],labels[3],labels[4],labels[5],labels[6]],
	    datasets: [{
	      label: "Earnings",
	      lineTension: 0.3,
	      backgroundColor: "rgba(78, 115, 223, 0.05)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: [month[0],month[1],month[2],month[3],month[4],month[5],month[6]],
	    }],
	  } ,
	  options: {
		    maintainAspectRatio: false,
		    layout: {
		      padding: {
		        left: 10,
		        right: 25,
		        top: 25,
		        bottom: 0
		      }
		    },
		    scales: {
		      xAxes: [{
		        time: {
		          unit: 'date'
		        },
		        gridLines: {
		          display: false,
		          drawBorder: false
		        },
		        ticks: {
		          maxTicksLimit: 7
		        }
		      }],
		      yAxes: [{
		        ticks: {
		          maxTicksLimit: 5,
		          padding: 10,
		          // Include a dollar sign in the ticks
		          callback: function(value, index, values) {
		            return  number_format(value) +"개";
		          }
		        },
		        gridLines: {
		          color: "rgb(234, 236, 244)",
		          zeroLineColor: "rgb(234, 236, 244)",
		          drawBorder: false,
		          borderDash: [2],
		          zeroLineBorderDash: [2]
		        }
		      }],
		    },
		    legend: {
		      display: false
		    },
		    tooltips: {
		      backgroundColor: "rgb(255,255,255)",
		      bodyFontColor: "#858796",
		      titleMarginBottom: 10,
		      titleFontColor: '#6e707e',
		      titleFontSize: 14,
		      borderColor: '#dddfeb',
		      borderWidth: 1,
		      xPadding: 15,
		      yPadding: 15,
		      displayColors: false,
		      intersect: false,
		      mode: 'index',
		      caretPadding: 10,
		      callbacks: {
		        label: function(tooltipItem, chart) {
		          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
		          return datasetLabel + ':' + number_format(tooltipItem.yLabel)+"개";
		        }
		      }
		    }
		  }
		});
	    </c:if>
	$("#angle1").click(function(){
		if ($("#angle_body1").css("display") == "none")	{
			$("#angle_body1").css("display","block")
			$("#angle_i1").attr("class","fas fa-angle-up")	
		}
		else	{
			$("#angle_body1").css("display","none")
			$("#angle_i1").attr("class","fas fa-angle-down")	
		}
	});
	$("#angle2").click(function(){
		if ($("#angle_body2").css("display") == "none")	{
			$("#angle_body2").css("display","block")
			$("#angle_i2").attr("class","fas fa-angle-up")	
		}
		else	{
			$("#angle_body2").css("display","none")
			$("#angle_i2").attr("class","fas fa-angle-down")	
		}
	});
	$("#angle3").click(function(){
		if ($("#angle_body3").css("display") == "none")	{
			$("#angle_body3").css("display","block")
			$("#angle_i3").attr("class","fas fa-angle-up")	
		}
		else	{
			$("#angle_body3").css("display","none")
			$("#angle_i3").attr("class","fas fa-angle-down")	
		}
	});
	$("#angle4").click(function(){
		if ($("#angle_body4").css("display") == "none")	{
			$("#angle_body4").css("display","block")
			$("#angle_i4").attr("class","fas fa-angle-up")	
		}
		else	{
			$("#angle_body4").css("display","none")
			$("#angle_i4").attr("class","fas fa-angle-down")	
		}
	});
	$("#angle5").click(function(){
		if ($("#angle_body5").css("display") == "none")	{
			$("#angle_body5").css("display","block")
			$("#angle_i5").attr("class","fas fa-angle-up")	
		}
		else	{
			$("#angle_body5").css("display","none")
			$("#angle_i5").attr("class","fas fa-angle-down")	
		}
	});
	$("#angle6").click(function(){
		if ($("#angle_body6").css("display") == "none")	{
			$("#angle_body6").css("display","block")
			$("#angle_i6").attr("class","fas fa-angle-up")	
		}
		else	{
			$("#angle_body6").css("display","none")
			$("#angle_i6").attr("class","fas fa-angle-down")	
		}
	});
	$("#angle7").click(function(){
		if ($("#angle_body7").css("display") == "none")	{
			$("#angle_body7").css("display","block")
			$("#angle_i7").attr("class","fas fa-angle-up")	
		}
		else	{
			$("#angle_body7").css("display","none")
			$("#angle_i7").attr("class","fas fa-angle-down")	
		}
	});
	$("#angle8").click(function(){
		if ($("#angle_body8").css("display") == "none")	{
			$("#angle_body8").css("display","block")
			$("#angle_i8").attr("class","fas fa-angle-up")	
		}
		else	{
			$("#angle_body8").css("display","none")
			$("#angle_i8").attr("class","fas fa-angle-down")	
		}
	});
	$("#prod_cate1").change(function(){
		$("#prod_cate1 option:selected").each(function(){ 
	       var p = $(this).val();
	      	location="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1="+p+"#card_body"
	});
	});
	$("#prod_cate2").change(function(){
		$("#prod_cate2 option:selected").each(function(){
			var p = $("#prod_cate1").val();
	       var p2 = $(this).val();
	      	location="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1="+p+"&cate2="+p2+"#card_body"
	});
	});
	$("#prod_cate3").change(function(){
		$("#prod_cate3 option:selected").each(function(){
			var p = $("#prod_cate1").val();
			var p2 = $("#prod_cate2").val();
	      	var p3 = $(this).val();
	      	location="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1="+p+"&cate2="+p2+"&cate3="+p3+"#card_body"
	});
	});
});
</script>
<style>
	.table1 {display:inline-block; float:left; padding-top:8px;height:30px; text-align:center;}
	.table2 {display:inline-block; float:left; padding-top:45px; height:100px; text-align:center;}
	#angle_body1 {display:none;}
	#angle_body2 {display:none;}
	#angle_body3 {display:none;}
	#angle_body4 {display:none;}
	#angle_body5 {display:none;}
	#angle_body6 {display:none;}
	#angle_body7 {display:none;}
	#angle_body8 {display:none;}
</style>
<head>
<jsp:include page="../sitemesh/top.jsp"/>
        <!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
		<!-- Main Content -->
		<div id="content">
			<!-- Begin Page Content -->
			<div class="container-fluid">
            	<!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                	<h1 class="h3 mb-0 text-gray-800"></h1>
                </div>
                <div class="row">
                	<!-- Area Chart -->
					<div class="col-xl-8 col-lg-7" >
						<div class="card shadow mb-4" style="width:950px">
							<!-- Card Header - Dropdown -->
							<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">
									<c:if test="${menu == '6'}">
									반기별 판매량
									</c:if>
									<c:if test="${menu == '3'}">
									분기별 판매량
									</c:if>
									<c:if test="${menu == 'm'}">
									월별 판매량
									</c:if>
									<c:if test="${menu == 'w'}">
									주간 판매량
									</c:if>
									<c:if test="${menu == 'd'}">
									일일 판매량  (${year}년${month}월${day}일  +-3일)
									</c:if>
                                </h6>
                                <div class="dropdown no-arrow">
                                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                    </a>
                                </div>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                                <div class="chart-area">
                                    <canvas id="myAreaChart1"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Content Row -->
                    <div class="row">
                        <!-- Content Column -->
                        <c:if test="${menu == '6'}">
                        <div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <form method="post" action="sale_volume?menu=6">
           					<div class="card shadow mb-4"style="display:inline-block; left:24px; width:952px" >
                                <div class="card-header py-3" >
                                	<h6 class="m-0 font-weight-bold text-primary" style="display:inline-block">연도 선택</h6>
                                	<div style="display:inline-block">
                                    <select name="h_year">
                                    	<c:forEach var="i" begin="01" end="12">
                                    	<option value="${i}"<c:if test="${m == i}">selected</c:if>>${i}월</option>
                                    	</c:forEach>
                                    </select>
                                    
                                    <input type="submit" value="선택">
                                    </div>
                                </div>
                       		 </div>
                        	</form>
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">상반기 판매 best</h6><div></div></div><div style="display:inline-block;float:right" id="angle1"><i class="fas fa-angle-down" id="angle_i1"></i></div>
                                </div>
                                <div class="card-body" id="angle_body1">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto1" items="${alist1}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto1.prd_img}" style="width:98px; height:98px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto1.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto1.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto1.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto1.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			 <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">상반기 판매 worst</h6></div><div style="display:inline-block;float:right" id="angle2"><i class="fas fa-angle-down" id="angle_i2"></i></div>
                                </div>
                                <div class="card-body" id="angle_body2">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto2" items="${alist2}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto2.prd_img}" style="width:98px; height:98px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto2.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto2.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">하반기 판매 best</h6></div><div style="display:inline-block;float:right" id="angle3"><i class="fas fa-angle-down" id="angle_i3"></i></div>
                                </div>
                                <div class="card-body" id="angle_body3">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto3" items="${alist3}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto3.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
            			</div>
            			 <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">하반기 판매 worst</h6></div><div style="display:inline-block;float:right" id="angle4"><i class="fas fa-angle-down" id="angle_i4"></i></div>
                                </div>
                                <div class="card-body" id="angle_body4">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto4" items="${alist4}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto4.prd_img}" style="width:98px; height:98px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto4.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto4.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto4.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto4.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">상품 상세정보</h6>
                                </div>
                                <div class="card-body" id="card_body">
	                                <div style="height:30px"> 
	                                    <select id="prod_cate1" name="prod_cate1">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto1" items="${plist1}">
	                                    	<option value="${pdto1.category1}"<c:if test="${cate1 == pdto1.category1}">selected</c:if>>${pdto1.category1}</option>
	                                    	</c:forEach>
	                                    </select>
	                                    <select id="prod_cate2">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto2" items="${plist2}">
	                                    	<option value="${pdto2.category2}" <c:if test="${cate2 == pdto2.category2}">selected</c:if>>${pdto2.category2}</option>
	                                    	</c:forEach>
	                                    </select>
	                                    <select id="prod_cate3">
	                                    	<option value="n">선택</option>
	                                    	<option value="h1" <c:if test="${cate3 == 'h1'}">selected</c:if>>상반기</option>
	                                    	<option value="h2" <c:if test="${cate3 == 'h2'}">selected</c:if>>하반기</option>
	                                    </select>
	                        
	                                </div>  
	                                <div style="border-top:1px solid black; height:107px">
	                                	<c:forEach var="pdto3" items="${plist3}">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${pdto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${pdto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.n }</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${pdto3.p}</h4></div>
	                                    </c:forEach>
	                                </div> 
	                                <div style="text-align:center; padding-left:5px">
										<c:if test="${pagestart != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${pagestart-1}#card_body"> << </a>
										</c:if>
										<c:if test="${page != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${page-1}#card_body"> < </a>
										</c:if>
										<c:forEach var="i" begin="${pagestart}" end="${pageend}">
											<c:if test="${page == i}">
												<span style="color:red">${i}</span>
											</c:if>
											<c:if test="${page != i}">
												<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${i}#card_body">${i}</a>
											</c:if>
										</c:forEach>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${page+1}#card_body"> > </a>
										</c:if>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${pageend +1}#card_body"> >></a>
										</c:if>
									</div>
                                </div>
                			</div>
            			</div>
           				</c:if>
           				<c:if test="${menu == '3'}">
                        <div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <form method="post" action="sale_volume?menu=3">
           					<div class="card shadow mb-4"style="display:inline-block; left:24px; width:952px" >
                                <div class="card-header py-3" >
                                	<h6 class="m-0 font-weight-bold text-primary" style="display:inline-block">연도 선택</h6>
                                	<div style="display:inline-block">
                                    <select name="q_year">
                                    	<c:forEach var="i" begin="01" end="12">
                                    	<option value="${i}"<c:if test="${m == i}">selected</c:if>>${i}월</option>
                                    	</c:forEach>
                                    </select>
                                    
                                    <input type="submit" value="선택">
                                    </div>
                                </div>
                        	</div>
                        	</form>
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">1분기 판매 best</h6></div><div style="display:inline-block;float:right" id="angle1"><i class="fas fa-angle-down" id="angle_i1"></i></div>
                                </div>
                                <div class="card-body" id="angle_body1">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto1" items="${alist1}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto1.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto1.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto1.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto1.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto1.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"> <h6 class="m-0 font-weight-bold text-primary">1분기 판매 worst</h6></div><div style="display:inline-block;float:right" id="angle2"><i class="fas fa-angle-down" id="angle_i2"></i></div>
                                </div>
                                <div class="card-body" id="angle_body2">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto2" items="${alist2}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto2.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto2.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto2.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">2분기 판매 best</h6></div><div style="display:inline-block;float:right" id="angle3"><i class="fas fa-angle-down" id="angle_i3"></i></div>
                                </div>
                                <div class="card-body" id="angle_body3">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto3" items="${alist3}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto3.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"> <h6 class="m-0 font-weight-bold text-primary">2분기 판매 worst</h6></div><div style="display:inline-block;float:right" id="angle4"><i class="fas fa-angle-down" id="angle_i4"></i></div>
                                </div>
                                <div class="card-body" id="angle_body4">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto4" items="${alist4}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto4.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto4.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto4.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto4.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto4.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                   <div style="display:inline-block"> <h6 class="m-0 font-weight-bold text-primary">3분기 판매 best</h6></div><div style="display:inline-block;float:right" id="angle5"><i class="fas fa-angle-down" id="angle_i5"></i></div>
                                </div>
                                <div class="card-body"id="angle_body5">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto5" items="${alist5}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto5.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto5.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto5.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto5.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto5.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"> <h6 class="m-0 font-weight-bold text-primary">3분판매 worst</h6></div><div style="display:inline-block;float:right" id="angle6"><i class="fas fa-angle-down" id="angle_i6"></i></div>
                                </div>
                                <div class="card-body" id="angle_body6">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto6" items="${alist6}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto6.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto6.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto6.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto6.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto6.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                   <div style="display:inline-block"> <h6 class="m-0 font-weight-bold text-primary">4분기 판매 best</h6></div><div style="display:inline-block;float:right" id="angle7"><i class="fas fa-angle-down" id="angle_i7"></i></div>
                                </div>
                                <div class="card-body" id="angle_body7">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto7" items="${alist7}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto7.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto7.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto7.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto7.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto7.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"> <h6 class="m-0 font-weight-bold text-primary">4분기 판매 worst</h6></div><div style="display:inline-block;float:right" id="angle8"><i class="fas fa-angle-down" id="angle_i8"></i></div>
                                </div>
                                <div class="card-body" id="angle_body8">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto8" items="${alist8}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto8.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto8.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto8.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto8.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto8.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">상품 상세정보</h6>
                                </div>
                                <div class="card-body" id="card_body">
	                                <div style="height:30px"> 
	                                    <select id="prod_cate1" name="prod_cate1">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto1" items="${plist1}">
	                                    	<option value="${pdto1.category1}"<c:if test="${cate1 == pdto1.category1}">selected</c:if>>${pdto1.category1}</option>
	                                    	</c:forEach>
	                                    </select>
	                                    <select id="prod_cate2">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto2" items="${plist2}">
	                                    	<option value="${pdto2.category2}" <c:if test="${cate2 == pdto2.category2}">selected</c:if>>${pdto2.category2}</option>
	                                    	</c:forEach>
	                                    </select>
	                                    <select id="prod_cate3" name="prod_cate3">
	                                    	<option value="n">선택</option>
	                                    	<option value="q1" <c:if test="${cate3 == 'q1'}">selected</c:if>>1분기</option>
	                                    	<option value="q2" <c:if test="${cate3 == 'q2'}">selected</c:if>>2분기</option>
	                                    	<option value="q3" <c:if test="${cate3 == 'q3'}">selected</c:if>>3분기</option>
	                                    	<option value="q4" <c:if test="${cate3 == 'q4'}">selected</c:if>>4분기</option>
	                                    </select>
	                        
	                                </div>  
	                                <div style="border-top:1px solid black; height:107px">
	                                	<c:forEach var="pdto3" items="${plist3}">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${pdto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${pdto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.n }</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${pdto3.p}</h4></div>
	                                    </c:forEach>
	                                </div> 
	                                <div style="text-align:center; padding-left:5px">
										<c:if test="${pagestart != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${pagestart-1}#card_body"> << </a>
										</c:if>
										<c:if test="${page != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${page-1}#card_body"> < </a>
										</c:if>
										<c:forEach var="i" begin="${pagestart}" end="${pageend}">
											<c:if test="${page == i}">
												<span style="color:red">${i}</span>
											</c:if>
											<c:if test="${page != i}">
												<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${i}#card_body">${i}</a>
											</c:if>
										</c:forEach>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${page+1}#card_body"> > </a>
										</c:if>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&page=${pageend +1}#card_body"> >></a>
										</c:if>
									</div>
                                </div>
                			</div>
            			</div>
            			</div>
           				</c:if>
           				<c:if test="${menu == 'm'}">
           				<form method="post" action="sale_volume?menu=m">
           				<div class="card shadow mb-4"style="display:inline-block; left:24px; width:952px" >
                                <div class="card-header py-3" >
                                	<h6 class="m-0 font-weight-bold text-primary" style="display:inline-block">월 선택</h6>
                                	<div style="display:inline-block">
                                    <select name="month_click">
                                    	<c:forEach var="i" begin="01" end="12">
                                    	<option value="${i}"<c:if test="${m == i}">selected</c:if>>${i}월</option>
                                    	</c:forEach>
                                    </select>
                                    
                                    <input type="submit" value="선택">
                                    </div>
                                </div>
                        </div>
                        </form>
                        <div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"> <h6 class="m-0 font-weight-bold text-primary">월별 판매 best</h6></div><div style="display:inline-block;float:right" id="angle1"><i class="fas fa-angle-down" id="angle_i1"></i></div>
                                </div>
                                <div class="card-body" id="angle_body1">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto2" items="${alist2}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto2.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto2.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto2.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"> <h6 class="m-0 font-weight-bold text-primary">월별 판매 worst</h6></div><div style="display:inline-block;float:right" id="angle2"><i class="fas fa-angle-down" id="angle_i2"></i></div>
                                </div>
                                <div class="card-body" id="angle_body2">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto3" items="${alist3}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto3.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">상품 상세정보</h6>
                                </div>
                                <div class="card-body" id="card_body">
	                                <div style="height:30px"> 
	                                    <select id="prod_cate1" name="prod_cate1">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto1" items="${plist1}">
	                                    	<option value="${pdto1.category1}"<c:if test="${cate1 == pdto1.category1}">selected</c:if>>${pdto1.category1}</option>
	                                    	</c:forEach>
	                                    </select>
	                                    <select id="prod_cate2">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto2" items="${plist2}">
	                                    	<option value="${pdto2.category2}" <c:if test="${cate2 == pdto2.category2}">selected</c:if>>${pdto2.category2}</option>
	                                    	</c:forEach>
	                                    </select>
	                        
	                                </div>  
	                                <div style="border-top:1px solid black; height:107px">
	                                	<c:forEach var="pdto3" items="${plist3}">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${pdto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${pdto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.n }</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${pdto3.p}</h4></div>
	                                    </c:forEach>
	                                </div> 
	                                <div style="text-align:center; padding-left:5px">
										<c:if test="${pagestart != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${pagestart-1}#card_body"> << </a>
										</c:if>
										<c:if test="${page != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${page-1}#card_body"> < </a>
										</c:if>
										<c:forEach var="i" begin="${pagestart}" end="${pageend}">
											<c:if test="${page == i}">
												<span style="color:red">${i}</span>
											</c:if>
											<c:if test="${page != i}">
												<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${i}#card_body">${i}</a>
											</c:if>
										</c:forEach>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${page+1}#card_body"> > </a>
										</c:if>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${pageend +1}#card_body"> >></a>
										</c:if>
									</div>
                                </div>
                			</div>
            			</div>
            			</div>
           				</c:if>
           				<c:if test="${menu == 'w'}">
           				<form method="post" action="sale_volume?menu=w">
           				<div class="card shadow mb-4"style="display:inline-block; left:24px; width:952px" >
                                <div class="card-header py-3" >
                                	<h6 class="m-0 font-weight-bold text-primary" style="display:inline-block">주 선택</h6>
                                	<div style="display:inline-block; padding-left:10px">
                                    <select name="week_click">
                                    	<c:forEach var="adto4" items="${alist4}">
                                    	<option value="${adto4.start}" <c:if test="${start == adto4.start}">selected</c:if>>${adto4.start}~${adto4.end} (${adto4.date}주차)</option>
                                    	</c:forEach>
                                    </select>
                                    
                                    <input type="submit" value="선택">
                                    </div>
                                </div>
                        </div>
                        </form>
                        <div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">주간 판매량 best</h6></div><div style="display:inline-block;float:right" id="angle1"><i class="fas fa-angle-down" id="angle_i1"></i></div>
                                </div>
                                <div class="card-body" id="angle_body1">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto2" items="${alist2}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto2.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto2.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto2.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">주간 판매량 worst</h6></div><div style="display:inline-block;float:right" id="angle2"><i class="fas fa-angle-down" id="angle_i2"></i></div>
                                </div>
                                <div class="card-body" id="angle_body2">
	                                <div style="height:30px"> 
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto3" items="${alist3}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto3.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">상품 상세정보</h6>
                                </div>
                                <div class="card-body" id="card_body">
	                                <div style="height:30px"> 
	                                    <select id="prod_cate1" name="prod_cate1">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto1" items="${plist1}">
	                                    	<option value="${pdto1.category1}"<c:if test="${cate1 == pdto1.category1}">selected</c:if>>${pdto1.category1}</option>
	                                    	</c:forEach>
	                                    </select>
	                                    <select id="prod_cate2">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto2" items="${plist2}">
	                                    	<option value="${pdto2.category2}" <c:if test="${cate2 == pdto2.category2}">selected</c:if>>${pdto2.category2}</option>
	                                    	</c:forEach>
	                                    </select>
	                        
	                                </div>  
	                                <div style="border-top:1px solid black; height:107px">
	                                	<c:forEach var="pdto3" items="${plist3}">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${pdto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${pdto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.n }</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${pdto3.p}</h4></div>
	                                    </c:forEach>
	                                </div> 
	                                <div style="text-align:center; padding-left:5px">
										<c:if test="${pagestart != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${pagestart-1}#card_body"> << </a>
										</c:if>
										<c:if test="${page != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${page-1}#card_body"> < </a>
										</c:if>
										<c:forEach var="i" begin="${pagestart}" end="${pageend}">
											<c:if test="${page == i}">
												<span style="color:red">${i}</span>
											</c:if>
											<c:if test="${page != i}">
												<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${i}#card_body">${i}</a>
											</c:if>
										</c:forEach>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${page+1}#card_body"> > </a>
										</c:if>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${pageend +1}#card_body"> >></a>
										</c:if>
									</div>
                                </div>
                			</div>
            			</div>
            			</div>
           				</c:if>
           				<c:if test="${menu == 'd'}">
           				<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">판매순위</h6>
                                </div>
                                <div class="card-body">
	                                 <table class="my_reserve" height="50px" align="center">
										<tr height="60px" style="border-bottom:2px solid navy;">
											<td>
												<c:if test="${month == 1}">
													<a href="sale_volume?menu=d&year=${year-1}&month=${month}&day=1"> ◀ </a>
												</c:if>
												<c:if test="${month != 1}">
													<a href="sale_volume?menu=d&year=${year}&month=${month-1}&day=1"> ◀ </a>
												</c:if>
												</td>
												<td colspan="5" align="center">${month}월</td>
												<td>
												<c:if test="${month == 12}">
													<a href="sale_volume?menu=d&year=${year+1}&month=1&day=1"> ◀  </a>
												</c:if>
												<c:if test="${month != 12}">
													<a href="sale_volume?menu=d&year=${year}&month=${month+1}&day=1"> ▶  </a>
												</c:if>
											</td>
										</tr>
										<tr>
											<td>일</td>
											<td>월</td>
											<td>화</td>
											<td>수</td>
											<td>목</td>
											<td>금</td>
											<td>토</td>
										</tr>
										<c:set var="d" value="1"/>
										<c:forEach var="i" begin="0" end="${week-1}">
											<tr>
												<c:forEach var="j" begin="0" end="6">
													<c:if test="${((firstdate > j && i == 0) || (total_days < day))}">
														<td>&nbsp;</td>
													</c:if>
													
													<c:if test="${!((firstdate > j && i == 0) || (total_days < day))}">
														 <td><a href="sale_volume?menu=d&year=${year}&month=${month}&day=${d}">${d}</a></td>
														<c:set var="d" value="${d+1}"/>
													</c:if>
												</c:forEach>
											</c:forEach>
									</table>
                                </div>
                			</div>
                        <div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">일일 판매 best</h6></div><div style="display:inline-block;float:right" id="angle1"><i class="fas fa-angle-down" id="angle_i1"></i></div>
                                </div>
                                <div class="card-body"  id="angle_body1">
	                                <div style="height:30px"> 
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto2" items="${alist2}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto2.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto2.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto2.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			<div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <div style="display:inline-block"><h6 class="m-0 font-weight-bold text-primary">일일 판매 worst</h6></div><div style="display:inline-block;float:right" id="angle2"><i class="fas fa-angle-down" id="angle_i2"></i></div>
                                </div>
                                <div class="card-body" id="angle_body2">
	                                <div style="height:30px"> 
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">매출</h4></div>
	                                </div>  
	                                <c:forEach var="adto3" items="${alist3}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto3.p}</h4></div>
	                                </div> 
	                                </c:forEach>
                                </div>
                			</div>
                			
                			<div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">상품 상세정보</h6>
                                </div>
                                <div class="card-body" id="card_body">
	                                <div style="height:30px"> 
	                                    <select id="prod_cate1" name="prod_cate1">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto1" items="${plist1}">
	                                    	<option value="${pdto1.category1}"<c:if test="${cate1 == pdto1.category1}">selected</c:if>>${pdto1.category1}</option>
	                                    	</c:forEach>
	                                    </select>
	                                    <select id="prod_cate2">
	                                    	<option value="n">선택</option>
	                                    	<c:forEach var="pdto2" items="${plist2}">
	                                    	<option value="${pdto2.category2}" <c:if test="${cate2 == pdto2.category2}">selected</c:if>>${pdto2.category2}</option>
	                                    	</c:forEach>
	                                    </select>
	                        
	                                </div>  
	                                <div style="border-top:1px solid black; height:107px">
	                                	<c:forEach var="pdto3" items="${plist3}">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${pdto3.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${pdto3.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.n }</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${pdto3.readnum}</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${pdto3.p}</h4></div>
	                                    </c:forEach>
	                                </div> 
	                                <div style="text-align:center; padding-left:5px">
										<c:if test="${pagestart != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${pagestart-1}#card_body"> << </a>
										</c:if>
										<c:if test="${page != 1}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${page-1}#card_body"> < </a>
										</c:if>
										<c:forEach var="i" begin="${pagestart}" end="${pageend}">
											<c:if test="${page == i}">
												<span style="color:red">${i}</span>
											</c:if>
											<c:if test="${page != i}">
												<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${i}#card_body">${i}</a>
											</c:if>
										</c:forEach>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${page+1}#card_body"> > </a>
										</c:if>
										<c:if test="${page != pagecnt}">
											<a href="sale_volume?year=${year}&month=${month}&day=${day}&menu=${menu}&cate1=${cate1}&cate2=${cate2}&page=${pageend +1}#card_body"> >></a>
										</c:if>
									</div>
                                </div>
                			</div>
            			</div>
            			</div>
            			</div>
           				</c:if>
            <!-- End of Main Content -->
       				</div>
        <!-- End of Content Wrapper -->
				</div>
    <!-- End of Page Wrapper -->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../resources/js/demo/chart-area-demo.js"></script>

<jsp:include page="../sitemesh/bottom.jsp"/>
</body>

</html>