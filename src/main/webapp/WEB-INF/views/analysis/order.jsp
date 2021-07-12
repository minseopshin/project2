<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(function(){
	
});


</script>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Insert title here</title>

    <!-- Custom fonts for this template-->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top">
<jsp:include page="../sitemesh/top.jsp"/>
    <!-- Page Wrapper -->
    <div id="wrapper">

        
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

                        

                    
                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                            
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">주문조회</h6>
                                </div>                              
                                <div class="card-body">
	                                <div>
	                                  <table width="900" align="center">	                                    
									    <colgroup>
									      <col style="width:30%">
									      <col style="width:20%">
									      <col style="width:10%">
									      <col style="width:10%">
									      <col style="width:15%">
									      <col style="width:15%">
									    </colgroup>
									    <thead>
	                                    <tr style="font-size:14px; font-weight:800;">
	                                      <td align="center">주문번호</td>
	                                      <td align="center">주문상태</td>
	                                      <td align="center">주문고객</td>
	                                      <td align="center">결제수단</td>
	                                      <td align="center">주문금액</td>
	                                      <td align="center">주문일</td>	                                                                           
	                                    </tr>
	                                    </thead>
	                                   <c:forEach items="${olist}" var="odto">
	                                    <tr style="font-size:14px;">
	                                      <td align="center"><b><a href="order_state?id=${odto.id}">${odto.order_num}</a></b></td>
	                                      <td align="center">
	                                        <c:choose>
	                                          <c:when test="${odto.state == 0}"> 입금 전 </c:when>
	                                          <c:when test="${odto.state == 1}"> 입금 완료 </c:when>
	                                          <c:when test="${odto.state == 2}"> 발송 준비 </c:when>
	                                          <c:when test="${odto.state == 3}"> 발송 완료 </c:when>
	                                          <c:when test="${odto.state == 4}"> 배송 중 </c:when>
	                                          <c:when test="${odto.state == 5}"> 배송 완료 </c:when>	                                          
	                                        </c:choose>
	                                      </td>
	                                      <td align="center">${odto.userid}</td>
	                                      <td align="center">${odto.payment_method1}</td>
	                                      <td align="center">${odto.price}</td>
	                                      <td align="center">${odto.orderday}</td>	                                      
	                                    </tr>
	                                   </c:forEach>
	                                    <!-- 페이징 처리 시작 -->
									    <tr>
									      <td colspan="6" align="center">
									        <c:if test="${pstart != 1}">
									          <a href="order?page=${pstart-1}"> << </a>
									        </c:if>
									        <c:if test="${pstart == 1}">
									          <<
									        </c:if>
									        
									        <c:if test="${page > 1}">
									          <a href="order?page=${page-1}"> < </a>
									        </c:if>
									        <c:if test="${page == 1}">
									          <
									        </c:if>
									        
									      <c:forEach begin="${pstart}" end="${pend}" var="i">
									        <c:if test="${page == i}">
									          <a href="order?page=${i}" style="color:red;"> ${i} </a>
									        </c:if>
									        <c:if test="${page != i}">
									          <a href="order?page=${i}"> ${i} </a>
									        </c:if>
									      </c:forEach>
									      
									        <c:if test="${page != pagecnt}">
									          <a href="order?page=${page+1}"> > </a>
									        </c:if>
									        <c:if test="${page == pagecnt}">
									          >
									        </c:if>
									        
									        <c:if test="${pend != pagecnt}">
									          <a href="order?page=${pend+1}"> >> </a>
									        </c:if>
									        <c:if test="${pend == pagecnt}">
									          >>
									        </c:if>
									      </td>
									    </tr>
									    <tr></tr>
									    <!-- 페이징 처리 끝 -->
									    <tr> <!-- 검색행 -->
						 		          <td colspan="6" align="center">
								            <form method="post" action="order">
								              <select name="cla">
									            <option value="order_num">주문번호</option>
									            <option value="userid">주문고객</option>									            
									          </select>
									          <input type="text" name="sword">
									          <input type="submit" value="검색">
									        </form>
									      </td>
									    </tr>
	                                  </table>
	                                </div>
	                           
	                            
                                 <!--    <div class="progress mb-4">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 20%"
                                            aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                              
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 40%"
                                            aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                     <span
                                            class="float-right">60%</span>
                                    <div class="progress mb-4">
                                        <div class="progress-bar" role="progressbar" style="width: 60%"
                                            aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                     <span
                                            class="float-right">80%</span>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 80%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div> -->
                                    <!-- <span
                                            class="float-right">Complete!</span>
                                    <div class="progress">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
                                            aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div> -->

                            <!-- Color System -->
                            <!-- <div class="row">
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-primary text-white shadow">
                                        <div class="card-body">
                                            Primary
                                            <div class="text-white-50 small">#4e73df</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-success text-white shadow">
                                        <div class="card-body">
                                            Success
                                            <div class="text-white-50 small">#1cc88a</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-info text-white shadow">
                                        <div class="card-body">
                                            Info
                                            <div class="text-white-50 small">#36b9cc</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-warning text-white shadow">
                                        <div class="card-body">
                                            Warning
                                            <div class="text-white-50 small">#f6c23e</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-danger text-white shadow">
                                        <div class="card-body">
                                            Danger
                                            <div class="text-white-50 small">#e74a3b</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-secondary text-white shadow">
                                        <div class="card-body">
                                            Secondary
                                            <div class="text-white-50 small">#858796</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-light text-black shadow">
                                        <div class="card-body">
                                            Light
                                            <div class="text-black-50 small">#f8f9fc</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-dark text-white shadow">
                                        <div class="card-body">
                                            Dark
                                            <div class="text-white-50 small">#5a5c69</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div> -->

<!--                         <div class="col-lg-6 mb-4">

                            Illustrations
                         <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                        <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;"
                                            src="img/undraw_posting_photo.svg" alt="...">
                                    </div>
                                    <p>Add some quality, svg illustrations to your project courtesy of <a
                                            target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a
                                        constantly updated collection of beautiful svg images that you can use
                                        completely free and without attribution!</p>
                                    <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on
                                        unDraw &rarr;</a>
                                </div>
                            </div>
                          
                            Approach
                           <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Development Approach</h6>
                                </div>
                                <div class="card-body">
                                    <p>SB Admin 2 makes extensive use of Bootstrap 4 utility classes in order to reduce
                                        CSS bloat and poor page performance. Custom CSS classes are used to create
                                        custom components and custom utility classes.</p>
                                    <p class="mb-0">Before working with this theme, you should become familiar with the
                                        Bootstrap framework, especially the utility classes.</p>
                                </div>
                            </div>

                        </div>
 -->                    </div> 

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
    <script src="../resources/js/demo/chart-pie-demo.js"></script>
<jsp:include page="../sitemesh/bottom.jsp"/>
</body>

</html>