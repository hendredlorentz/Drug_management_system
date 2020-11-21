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
        <%--console.log(${userlist}+"!!!!!");--%>
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
    function clickTip(){
        alert("对不起，由于您是普通管理员，您无权对其进行操作！");
    }
    function showIt(uid_, obj) {
        uid = uid_;
        objline = $(obj).parent().parent();
        $('#myModal').modal('show'); //手动打开modal
    }
</script>

<body style=" padding-top: 70px;">
<div class="container">
    <h2 class="page-header">用户列表</h2>
    <form class="form-inline" method="POST" action="productControl">
        <div class="form-group">
            <label for="workerID">用户编号：</label>
            <input type="text" class="form-control input-sm" id="workerID" name="workerID" placeholder="用户编号">
        </div><br>
        <div class="form-group" style="margin-top: 5px;">
            <label for="name">姓&nbsp;&nbsp;&nbsp;名：</label>
            <input type="text" class="form-control input-sm" id="name" name="name" placeholder="用户姓名">
        </div>

        <button type="submit" class="btn btn-sm btn-success" style="margin-top: 5px;">查询</button>
        <c:if test="${isAdmin == 1}">
            <a href="addproduct.jsp" style="margin-top: 4px;" class="btn btn-warning btn-sm">添加</a>
        </c:if>
    </form>
    <hr> ${info }
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th>用户ID</th>
            <th>姓 名</th>
            <th>邮箱</th>
            <th>好兄弟姓名</th>
            <th>是否为管理员</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${userlist}">
            <tr>
                <!-- 从后端拿到的数据，加以显示 -->
                <td>${user.workerID}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.brotherName}</td>
                <td>
                    <!-- 对其进行条件判断 -->
                    <c:if test="${user.isAdmin == 0}">
                        <span class="label label-warning">普通管理员</span>
                    </c:if>
                    <c:if test="${user.isAdmin == 1}">
                        <span class="label label-danger">高级管理员</span>
                    </c:if>
                </td>
                <td>
                    <!-- 对每个物流具有独特的标识符进行查看 -->
                    <c:if test="${isAdmin == 1}">
                        <a href="productInfo?flag=update&uid=${user.uid }" class="btn btn-primary btn-xs">修改</a>
                        <button type="button" class="btn btn-danger btn-xs" onclick="showIt( ${ user.uid} ,this )">删除</button>
                    </c:if>
                    <c:if test="${isAdmin == 0}">
                        <button type="button" class="btn btn-danger btn-xs" onclick="clickTip()">无权操作</button>
                    </c:if>
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