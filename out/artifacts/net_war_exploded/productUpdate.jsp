<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>注册</title>
        <link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.css">
        <script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
        <script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
        <script type="text/javascript" src="./valid/jquery.validate.js"></script>
    </head>
    <script>
        $().ready(function() {
            $("#registForm").validate({
                rules: {
                    isAdmin: {
                        required: true,
                        maxlength: 1,
                        minlength: 1
                    }
                },
                messages: { //这里为填写出错的报错信息
                    isAdmin: {
                        required: "必须输入",
                        maxlength: "最大长度为1",
                        minlength: "最小长度为1"
                    }
                }
            })
        });
    </script>

    <body>
        <!-- <span style="padding-left: 130px;color: #f00;">${info }</span> -->
        <form class="form-horizontal" id="registForm" role="form" action="productUpdate" method="post">
            <h2 style="text-align: center;">用户信息修改</h2>
            <div class="form-group" style="margin-top: 40px;">
                <label for="name" class="col-sm-2 control-label">管理员姓名</label>
                <div class="col-sm-8">
                    <input type="text" readonly value="${product.name}" class="form-control" id="name" name="name" placeholder="姓名">
                </div>
            </div>
            <div class="form-group" style="margin-top: 40px;">
                <label for="workerID" class="col-sm-2 control-label">管理员工号</label>
                <div class="col-sm-8">
                    <input type="text"  value="${product.workerID}" class="form-control" id="workerID" name="workerID" placeholder="工号">
                </div>
            </div>
            <div class="form-group ">
                <label for="isAdmin" class="col-sm-2 control-label ">管理员权限(0为普通管理员,1为高级管理员)</label>
                <div class="col-sm-8 ">
                    <input type="text" value="${product.isAdmin}" class="form-control " id="isAdmin" name="isAdmin" placeholder="管理员权限">
                </div>
            </div>

            <div class="form-group ">
                <div class="col-sm-offset-2 col-sm-8 " style="text-align: center; ">
                    <button type="submit" class="btn btn-success ">修改</button>
                    <button type="reset" class="btn btn-warning ">重置</button>
                </div>
            </div>
        </form>
    </body>

    </html>