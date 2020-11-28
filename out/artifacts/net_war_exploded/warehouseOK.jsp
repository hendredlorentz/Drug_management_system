<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>仓库管理</title>
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
    console.log(${warehouseList[0].medicine_name})
    let workerID = "";
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
                data: "workerID=" + workerID + "&isD=0",
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
        workerID = uid_;
        objline = $(obj).parent().parent();
        console.log(workerID+"!!!"+objline)
        $('#myModal').modal('show'); //手动打开modal
    }
</script>

<body style=" padding-top: 70px;">
<div class="container">
    <h2 class="page-header">药品仓库列表</h2>
    <form class="form-inline" method="POST" action="warehouseControl">
        <div class="form-group">
            <label for="medicine_id">药品编号：</label>
            <input type="text" class="form-control input-sm" id="medicine_id" name="medicine_id" placeholder="药品编号">
        </div><br>
        <div class="form-group" style="margin-top: 5px;">
            <label for="medicine_name">药品名称：</label>
            <input type="text" class="form-control input-sm" id="medicine_name" name="medicine_name" placeholder="药品名称">
        </div>

        <button type="submit" class="btn btn-sm btn-success" style="margin-top: 5px;">查询</button>

    </form>
    <hr> ${info }
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th>药品编号</th>
            <th>药品名称</th>
            <th>数量</th>
            <th>单个进价</th>
            <th>单个售价</th>
            <th>负责人</th>
            <th>出库数量</th>
            <th>入库时间</th>
            <th>药品类型</th>
            <th>地点</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="wh" items="${warehouseList}">
            <tr>
                <!-- 从后端拿到的数据，加以显示 -->
                <td>${wh.medicine_id}</td>
                <td>${wh.medicine_name}</td>
                <td>${wh.medicineNumber}</td>
                <td>${wh.medicineInPrice}</td>
                <td>${wh.medicineOutPrice}</td>
                <td>${wh.medicineCheckMan}</td>
                <td>${wh.medicineOutNumber}</td>
                <td>${wh.inTime}</td>
                <td>
                    <c:if test="${wh.isOTC == 0}">
                        非处方药
                    </c:if>
                    <c:if test="${wh.isOTC == 1}">
                        处方药
                    </c:if>
                </td>
                <td>${wh.location}</td>


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