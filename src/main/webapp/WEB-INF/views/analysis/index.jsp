<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(function(){
	var ctx = document.getElementById("myPieChart");
	var myPieChart = new Chart(ctx, {
	  type: 'doughnut',
	  data: {
	    labels: ["10대","20대", "30대", "40대","50대","기타"],
	    datasets: [{
	      data: [${pie_10},${pie_20},${pie_30},${pie_40},${pie_50},${pie_60},${pie_100-pie_10-pie_20-pie_30-pie_40-pie_50-pie_60}],
	      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc','#A566FF','#F361DC','#FAED7D'],
	      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf','#8041D9','#D941C5','#E5D85C'],
	      hoverBorderColor: "rgba(234, 236, 244, 1)",
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    tooltips: {
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      caretPadding: 10,
	    },
	    legend: {
	      display: false
	    },
	    cutoutPercentage: 80,
	  },
	});	
	var ctx1 = document.getElementById("myAreaChart1");
	var myLineChart = new Chart(ctx1, {
	  type: 'line',
	  data: {
	    labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
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
	      data: [${price_mon},${price_tue},${price_wed},${price_thu},${price_fri},${price_sat},${price_sun}],
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
	          maxTicksLimit: 7
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          maxTicksLimit: 5,
	          padding: 10,
	          // Include a dollar sign in the ticks
	          callback: function(value, index, values) {
	            return  number_format(value); +"원"
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
	          return datasetLabel + ':' + number_format(tooltipItem.yLabel);+"원"
	        }
	      }
	    }
	  }
	});
});
</script>
<style>
	.table1 {display:inline-block; float:left; padding-top:8px;height:30px; text-align:center;}
	.table2 {display:inline-block; float:left; padding-top:45px; height:100px; text-align:center;}
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

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                               	 전체 상품</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${cnt}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                              	  일일 매출</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${adto.p}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4" >
                            <div class="card border-left-info shadow h-100 py-2"style="width:513px">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                           best item
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800" >${adto2.prd_name }</div>
                                                </div>
                                                <div class="col">
                                                
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                
                    </div>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">주간매출</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                       <!--  <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div> -->
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

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">구매 연령비율</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 20대 여성
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 20대 남성
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 30대 여성 
                                        </span>
                                        &nbsp;&nbsp;&nbsp;
                                        <span class="mr-2"  >
                                            <i class="fas fa-circle" style="color:#A566FF"></i> 30대 남성
                                        </span>
                                        <span class="mr-2" >
                                            <i class="fas fa-circle" style="color:#F361DC"></i> 40대 여성
                                        </span>
                                        <span class="mr-2" >
                                            <i class="fas fa-circle" style="color:#FAED7D"></i> 기타
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block;width:1050px" >
                            
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">매출 순위</h6>
                                </div>
                                <div class="card-body">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">매출</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                </div>  
	                                <c:forEach var="adto" items="${alist}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto.p} 원</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto.readnum}</h4></div>
	                                </div> 
	                                </c:forEach>
                        
                                    
                  </div>

                </div>
                <div class="card shadow mb-4"style="display:inline-block;width:1050px" >
                            
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">판매량 순위</h6>
                                </div>
                                <div class="card-body">
	                                <div style="height:30px">
	                                    <div class="table1" style="width:100px"><h4 class="small font-weight-bold">제품사진</h4></div>
	                                    <div class="table1"style="width:548px"><h4 class="small font-weight-bold">제품명</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">판매량</h4></div>
	                                    <div class="table1"style="width:80px"><h4 class="small font-weight-bold">매출</h4></div>
	                                    <div class="table1"style="width:100px"><h4 class="small font-weight-bold">조회수</h4></div>
	                                </div>  
	                                <c:forEach var="adto2" items="${alist2}"> 
	                                <div style="border-top:1px solid black; height:107px">
	                                	<div class="table2"style="width:100px; padding-top:5px"><img src="${adto2.prd_img}" style="width:100px; height:100px"></div>
	                                    <div class="table2"style="width:548px"><h4 class="small font-weight-bold">${adto2.prd_name}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.n}</h4></div>
	                                    <div class="table2"style="width:80px"><h4 class="small font-weight-bold">${adto2.p} 원</h4></div>
	                                    <div class="table2"style="width:100px"><h4 class="small font-weight-bold">${adto2.readnum}</h4></div>
	                                </div> 
	                                </c:forEach>
                        
                                    
                  </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

           

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../sitemesh/bottom.jsp"/>
</body>

</html>