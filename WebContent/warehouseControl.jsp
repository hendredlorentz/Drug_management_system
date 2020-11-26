<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>药品信息管理</title>
            <link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.css">
            <script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
            <script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
            <script type="text/javascript" src="./valid/jquery.validate.js"></script>
            <script type="text/javascript" src="./toastr/toastr.js"></script>
            <link rel="stylesheet" type="text/css" href="./toastr/toastr.css">
        </head>
        <script type="text/javascript">
            toastr.options = {
                "timeOut": "2000"
            };
            let uid = " ";
            var objline;
            $(function() {
                <%--console.log(${userlist}+"!!!!!");--%>
                $('#ok').click(function() {
                    //关闭模态框
                    $('#myModal').modal('hide');
                    $.ajax({
                        url: "medicinedel",
                        type: "post",
                        dataType: "json",
                        async: true,
                        data: "uid=" + uid + "&isD=0",
                        success: function(data) {
                            if (data == 1) {
                                objline.hide();
                                toastr.success("删除成功");
                                //隐藏当前行

                            } else {
                                toastr.error("删除失败");
                            }
                        }
                    })

                })
            })
            function clickTip(){
                alert("对不起，由于您是普通管理员，您无权对其进行操作！");
            }
            function showIt(uid_, obj) {
                uid = uid_;
                objline = $(obj).parent().parent();
                console.log("拿到的数据"+" "+uid )
                $('#myModal').modal('show'); //手动打开modal
            }
        </script>

        <body style=" padding-top: 70px;">
            <div class="container">
                <h2 class="page-header">药品信息列表</h2>
                <form class="form-inline" method="POST" action="medicineControl">
                    <div class="form-group">
                        <label for="medicineName">药品名称：</label>
                        <input type="text" class="form-control input-sm" id="medicineName" name="medicineName" placeholder="药品名称">
                    </div><br>
                    <div class="form-group" style="margin-top: 5px;">
                        <label for="dosage">用法用量：</label>
                        <input type="text" class="form-control input-sm" id="dosage" name="dosage" placeholder="用法用量">
                    </div>

                    <button type="submit" class="btn btn-sm btn-success" style="margin-top: 5px;">查询</button>
                    <a href="addproduct.jsp" style="margin-top: 4px;" class="btn btn-warning btn-sm">添加</a>
                </form>
                <hr> ${info }
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
<%--                            medicineList--%>
                            <th>药品ID</th>
                            <th>药品名称</th>
                            <th>药品介绍</th>
                            <th>药品类型</th>
                            <th>用法用量</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="medicine" items="${medicineList}">
                            <tr>
                                <!-- 从后端拿到的数据，加以显示 -->
                                <td>${medicine.medicineId}</td>
                                <td>${medicine.medicineName}</td>
                                <td>${medicine.medicineIntroduce}</td>
                                <td>
                                     <c:if test="${medicine.isOTC == 0}">
                                         非处方药
                                     </c:if>
                                    <c:if test="${medicine.isOTC == 1}">
                                        处方药
                                    </c:if>
                                </td>
                                <td>${medicine.dosage}</td>

                                <td>

                                        <button type="button" class="btn btn-danger btn-xs" onclick="showIt('${medicine.medicineId}' ,this )">删除</button>

                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
                            <h4 class="modal-title" id="myModalLabel">
                                系统提示：
                            </h4>
                        </div>
                        <div class="modal-body">
                            是否确认删除
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
							取消
						</button>
                            <button id="ok" type="button" class="btn btn-primary">
							确认
						</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal -->
            </div>
            <!-- 尾部 -->
            <hr style="margin-top: 300px;">
        </body>

        </html>