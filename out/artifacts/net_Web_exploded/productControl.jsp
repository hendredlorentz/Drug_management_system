<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>用户管理</title>
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
            let uid = 0;
            var objline;
            $(function() {
                $('#ok').click(function() {
                    //关闭模态框
                    $('#myModal').modal('hide');
                    $.ajax({
                        url: "productdel",
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

            function showIt(uid_, obj) {
                uid = uid_;
                objline = $(obj).parent().parent();
                $('#myModal').modal('show'); //手动打开modal
            }
        </script>

        <body style=" padding-top: 70px;">
            <div class="container">
                <h2 class="page-header">物流列表</h2>
                <form class="form-inline" method="POST" action="productControl">
                    <div class="form-group">
                        <label for="productid">物流编号：</label>
                        <input type="text" class="form-control input-sm" id="productid" name="productid" placeholder="物流编号">
                    </div><br>
                    <div class="form-group" style="margin-top: 5px;">
                        <label for="begin">地&nbsp;&nbsp;&nbsp;址：</label>
                        <input type="text" class="form-control input-sm" id="begin" name="begin" placeholder="出发地"> TO
                        <input type="text" class="form-control input-sm" id="dest" name="dest" placeholder="目的地">
                    </div>

                    <button type="submit" class="btn btn-sm btn-success" style="margin-top: 5px;">查询</button>
                    <a href="addproduct.jsp" style="margin-top: 4px;" class="btn btn-warning btn-sm">添加</a>
                </form>
                <hr> ${info }
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>物流ID</th>
                            <th>日期</th>
                            <th>始发地</th>
                            <th>目的地</th>
                            <th>物流状态</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="product" items="${list}">
                            <tr>
                                <!-- 从后端拿到的数据，加以显示 -->
                                <td>${product.productID}</td>
                                <td>${product.date}</td>
                                <td>${product.begin}</td>
                                <td>${product.dest}</td>
                                <td>
                                    <!-- 对其进行条件判断 -->
                                    <c:if test="${product.isDeal == 0}">
                                        <span class="label label-danger">未处理</span>
                                    </c:if>
                                    <c:if test="${product.isDeal == 1}">
                                        <span class="label label-warning">正在处理</span>
                                    </c:if>
                                    <c:if test="${product.isDeal == 2}">
                                        <span class="label label-success">已处理</span>
                                    </c:if>
                                </td>
                                <td>
                                    <!-- 对每个物流具有独特的标识符进行查看 -->
                                    <a href="productInfo?uid=${product.uid }" class="btn btn-primary btn-xs">查看</a>
                                 	 <a href="productInfo?flag=update&uid=${product.uid }" class="btn btn-warning btn-xs">修改</a>
                                    <button type="button" class="btn btn-danger btn-xs" onclick="showIt( ${ product.uid} ,this )">删除</button>
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