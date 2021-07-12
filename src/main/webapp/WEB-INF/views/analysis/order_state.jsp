<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4"style="display:inline-block; left:11px; width:952px" >
                                <div class="card-header py-3" >
                                    <h6 class="m-0 font-weight-bold text-primary">주문상태</h6>
                                </div>                              
                                <div class="card-body">
	                                <div>
	                                  <form method="post" action="order_state_ok">
	                                    <input type="hidden" name="id" value="${odto.id}">
	                                    <input type="hidden" name="order_num" value="${odto.order_num}">
	                                    <div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">주문번호</h4>
	                                      <h4 class="small font-weight-bold">${odto.order_num}</h4>
	                                    </div> <p>
	                                    <div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">주문고객</h4>
	                                      <h4 class="small font-weight-bold">${odto.userid}</h4>
	                                    </div> <p>
	                                    <div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">주문품번</h4>
	                                      <h4 class="small font-weight-bold">${odto.product_id}</h4>
	                                     
	                                    </div> <p>
	                                    <div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">결제수단</h4>	                                      
	                                      <h4 class="small font-weight-bold">${odto.payment_method1}</h4>
	                                    </div> <p>
	                                    <c:if test="${odto.payment_method1 == 'card'}">
	                                    <div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">금융사</h4>	                                      
	                                      <h4 class="small font-weight-bold">
	                                        <c:choose>
	                                          <c:when test="${odto.payment_method2 == 'kb'}"> 국민 </c:when>
	                                          <c:when test="${odto.payment_method2 == 'shinhan'}"> 신한 </c:when>
	                                          <c:when test="${odto.payment_method2 == 'hana'}"> 하나 </c:when>	                                                                                    
	                                        </c:choose>
	                                      </h4>
	                                    </div> <p>	                                    
	                                    <div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">할부개월</h4>	                                      
	                                      <h4 class="small font-weight-bold">
	                                        <c:choose>
	                                          <c:when test="${odto.payment_method3 == '0m'}"> 일시불 </c:when>
	                                          <c:when test="${odto.payment_method3 == '3m'}"> 3개월 </c:when>
	                                          <c:when test="${odto.payment_method3 == '6m'}"> 6개월 </c:when>	                                                                                    
	                                        </c:choose>
	                                      </h4>
	                                    </div> <p>
	                                    </c:if>
	                                    <div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">주문상태</h4>
	                                      <h4 class="small font-weight-bold">
	                                        <c:choose>
	                                          <c:when test="${odto.state == 0}"> 입금 전 </c:when>
	                                          <c:when test="${odto.state == 1}"> 입금 완료 </c:when>
	                                          <c:when test="${odto.state == 2}"> 발송 준비 </c:when>
	                                          <c:when test="${odto.state == 3}"> 발송 완료 </c:when>
	                                          <c:when test="${odto.state == 4}"> 배송 중 </c:when>
	                                          <c:when test="${odto.state == 5}"> 배송 완료 </c:when>	                                          
	                                        </c:choose>
	                                      </h4>
	                                    </div> <p>
	                                    <div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">주문상태변경</h4>
	                                      <select id="state" name="state">
	                                        <option>-----</option>  
   										    <option value="0">입금 전</option>
										    <option value="1">입금 완료</option>
										    <option value="2">발송 준비</option>
										    <option value="3">발송 완료</option>
										    <option value="4">배송 중</option>
										    <option value="5">배송 완료</option>											  
										  </select>
										</div> <p>
										<div style="display:inline-block">
										  <h4 class="small font-weight-bold">사용쿠폰</h4>
										  <c:if test="${odto.coupon_id != null}">	                                        
	                                        <h4 class="small font-weight-bold">${odto.coupon_id}</h4>
	                                      </c:if>
	                                      <c:if test="${odto.coupon_id == null}">	                                        
	                                        <h4 class="small font-weight-bold">사용안함</h4>
	                                      </c:if> 
	                                    </div> <p>
										<div style="display:inline-block">
	                                      <h4 class="small font-weight-bold">주문금액</h4>
	                                      <h4 class="small font-weight-bold">${odto.price}</h4>
	                                    </div> <p>
										<div style="display:inline-block">
										  <input type="submit" value="수정">
										</div>
	                                  </form>
	                                </div>                                                                   
                   </div> 
            </div>
            <!-- End of Main Content -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
</div>
</div>
</div>
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
    <script src="../resources/js/demo/chart-pie-demo.js"></script>
<jsp:include page="../sitemesh/bottom.jsp"/>
</body>

</html>