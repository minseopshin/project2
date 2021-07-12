<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(function(){
	
});

$(function()
{
	var chkObj=document.getElementsByName("RowCheck");
	var rowCnt=chkObj.length;
	
	$("input[name='allCheck']").click(function()
	{				
		var chk_listArr=$("input[name='RowCheck']");
		for (var i=0; i<chk_listArr.length; i++)
			{
				chk_listArr[i].checked=this.checked;
			}
	});
	$("input[name='RowCheck']").click(function()
	{
		if($("input[name='RowCheck']:checked").length==rowCnt)
		{
			$("input[name='allCheck']")[0].checked=true;
		}
		else
		{
			$("input[name='allCheck']")[0].checked=false;
		}
	});
});
function deleteValue()
{
	var url="prd_delete";
	var valueArr=new Array();
	var list=$("input[name='RowCheck']");			
	for (var i=0; i<list.length; i++)
	{
		if(list[i].checked)
		{
			valueArr.push(list[i].value);
		}
	}
	if (valueArr.length==0)
	{
		alert("선택 된 상품이 없습니다.");
	}
	else
	{
		var chk=confirm("삭제하시겠습니까?");
		if(chk==true)
		{
			$.ajax(
					{
						url:url,
						type:'POST',
						traditional:true,
						data:{valueArr:valueArr},
						success:function(jdata)
						{
							if (jdata=1)
							{
								alert("선택하신 상품이 삭제 되었습니다.");
								location.replace("product")
							}
							else
							{
								alert("선택하신 상품의 삭제가 실패했습니다.");
							}
						}
					});
		}
		else
		{
			location.replace("product")
		}
		
	}
}

</script>

<head>

    
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
                                    <h6 class="m-0 font-weight-bold text-primary">상품목록</h6>
                                </div>                              
                                <div class="card-body">
	                                <div>
	                                  <form>
	                                  <table width="900" align="center">	                                    
									    <colgroup>
									      <col style="width:2%">
									      <col style="width:8%">
									      <col style="width:50%">
									      <col style="width:10%">
									      <col style="width:15%">
									      <col style="width:15%">
									    </colgroup>
									    <thead>
	                                    <tr style="font-size:14px; font-weight:800;">
	                                      <td><input id="allCheck" name="allCheck" type="checkbox"></td>
	                                      <td align="center">품　번</td>
	                                      <td align="center">제품명</td>
	                                      <td align="center">가　격</td>
	                                      <td align="center">대분류</td>
	                                      <td align="center">소분류</td>	                                                                           
	                                    </tr>
	                                    </thead>
	                                   <c:forEach items="${plist}" var="pdto">
	                                    <tr style="font-size:14px;">
	                                      <td><input name="RowCheck" type="checkbox" value="${pdto.id}"></td>
	                                      <td align="center">${pdto.id}</td>
	                                      <td><b><a href="product_info?id=${pdto.id}">${pdto.prd_name}</a></b></td>
	                                      <td align="center">${pdto.price}</td>
	                                      <td align="center">${pdto.category1}</td>
	                                      <td align="center">${pdto.category2}</td>	                                      
	                                    </tr>
	                                   </c:forEach>
	                                    <!-- 페이징 처리 시작 -->
									    <tr>
									      <td colspan="6" align="center">
									        <c:if test="${pstart != 1}">
									          <a href="product?page=${pstart-1}"> << </a>
									        </c:if>
									        <c:if test="${pstart == 1}">
									          <<
									        </c:if>
									        
									        <c:if test="${page > 1}">
									          <a href="product?page=${page-1}"> < </a>
									        </c:if>
									        <c:if test="${page == 1}">
									          <
									        </c:if>
									        
									      <c:forEach begin="${pstart}" end="${pend}" var="i">
									        <c:if test="${page == i}">
									          <a href="product?page=${i}" style="color:red;"> ${i} </a>
									        </c:if>
									        <c:if test="${page != i}">
									          <a href="product?page=${i}"> ${i} </a>
									        </c:if>
									      </c:forEach>
									      
									        <c:if test="${page != pagecnt}">
									          <a href="product?page=${page+1}"> > </a>
									        </c:if>
									        <c:if test="${page == pagecnt}">
									          >
									        </c:if>
									        
									        <c:if test="${pend != pagecnt}">
									          <a href="product?page=${pend+1}"> >> </a>
									        </c:if>
									        <c:if test="${pend == pagecnt}">
									          >>
									        </c:if>
									      </td>
									    </tr>
									    <!-- 페이징 처리 끝 -->
									    <tr> <!-- 검색행 -->
						 		          <td colspan="6" align="center">
								            <form method="post" action="product">
								              <select name="cla">
									            <option value="prd_name">제품명</option>
									            <option value="id">품　번</option>									            
									          </select>
									          <input type="text" name="sword">
									          <input type="submit" value="검색">
									        </form>									          
									      </td>
									    </tr>
									    <tr>  									      
									      <td colspan="6" align="center">
									        <form method="post" action="product_write">
									          <input type="submit" value="상품 등록">
									          <input type="button" value="선택 삭제" onclick="deleteValue();">
									        </form>  
									      </td>
									    </tr>
	                                  </table>
	                                  </form>
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

            <!-- Footer -->
           
            <!-- End of Footer -->

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