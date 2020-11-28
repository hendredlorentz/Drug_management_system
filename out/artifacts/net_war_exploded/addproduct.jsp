<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>添加</title>
        <link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.css">
        <script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
        <script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
        <script type="text/javascript" src="./valid/jquery.validate.js"></script>
    </head>
    <script>
        $().ready(function() {
            $("#registerForm").validate({
                rules: {
                    medicineIntroId: {
                        required: true,
                        maxlength: 8,
                        minlength: 8,
                    },
                    medicineName: {
                        required: true,
                    },
                    medicineIntroduce: {
                        required: true,
                    },
                    isOTC: {
                        required: true,
                        maxlength: 1,
                        minlength: 1,
                    },
                    dosage: {
                        required: true,
                    },
                    img: {
                        required: true,
                    }
                },
                messages: { //这里为填写出错的报错信息
                    medicineIntroId: {
                        required: "不能为空",
                        maxlength: "最大长度为8",
                        minlength: "最小长度为8"
                    },
                    medicineName: {
                        required: "不能为空",
                    },
                    medicineIntroduce: {
                        required: "不能为空",
                    },
                    isOTC: {
                        required: "不能为空",
                        maxlength: "最大长度为1",
                        minlength: "最小长度为1"
                    },
                    dosage: {
                        required: "不能为空",
                    },
                    img: {
                        required: "不能为空",
                    }
                }
            })
        });
    </script>

    <body>
        <span style="padding-left: 130px;color: #f00;">${info }</span>
        <form class="form-horizontal" id="registerForm" role="form" action="addproduct" method="post">
            <h2 style="text-align: center;">药品信息添加</h2>
            <div class="form-group" style="margin-top: 40px;">
                <label for="medicineIntroId" class="col-sm-2 control-label">药品ID</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="medicineIntroId" name="medicineIntroId" placeholder="药品ID">
                </div>
            </div>
            <div class="form-group">
                <label for="medicineName" class="col-sm-2 control-label">药品名称</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="medicineName" name="medicineName" placeholder="药品名称">
                </div>
            </div>
            <div class="form-group">
                <label for="medicineIntroduce" class="col-sm-2 control-label">药品介绍</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="medicineIntroduce" name="medicineIntroduce" placeholder="药品介绍">
                </div>
            </div>
            <div class="form-group">
                <label for="isOTC" class="col-sm-2 control-label">是否为非处方药</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="isOTC" name="isOTC" placeholder="1为处方药，0为非处方药">
                </div>
            </div>
            <div class="form-group">
                <label for="dosage" class="col-sm-2 control-label">用法用量</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="dosage" name="dosage" placeholder="用法用量">
                </div>
            </div>
            <div class="form-group">
                <label for="img" class="col-sm-2 control-label">照片地址</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="img" name="img" placeholder="照片地址">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-8" style="text-align: center;">
                    <button type="submit" class="btn btn-success">添加</button>
                    <button type="reset" class="btn btn-warning">重置</button>
                </div>
            </div>
        </form>
    </body>

    </html>