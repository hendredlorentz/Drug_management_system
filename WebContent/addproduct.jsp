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
                    productID: {
                        required: true,
                        maxlength: 6,
                        minlength: 6,
                    },
                    price: {
                        required: true,
                    },
                    begin: {
                        required: true,
                    },
                    dest: {
                        required: true,
                    },
                    jiphone: {
                        required: true,
                        maxlength: 11,
                        minlength: 11,
                    },
                    dephone: {
                        required: true,
                        maxlength: 11,
                        minlength: 11,
                    },
                    isDeal: {
                        required: true,
                        maxlength: 1,
                        minlength: 1,
                    },
                    time: {
                        required: true,
                        maxlength: 1,
                        minlength: 1,
                    },
                    Date: {
                        required: true,
                    },
                },
                messages: { //这里为填写出错的报错信息
                    productID: {
                        required: "不能为空",
                        maxlength: "最大长度为6",
                        minlength: "最小长度为6"
                    },
                    price: {
                        required: "不能为空",
                    },
                    begin: {
                        required: "不能为空",
                    },
                    dest: {
                        required: "不能为空",
                    },
                    jiphone: {
                        required: "不能为空",

                        maxlength: "最大长度为11",
                        minlength: "最小长度为11"
                    },
                    dephone: {
                        required: "不能为空",
                        maxlength: "最大长度为11",
                        minlength: "最小长度为11"
                    },
                    isDeal: {
                        required: "不能为空",
                        maxlength: "最大长度为1",
                        minlength: "最小长度为1"
                    },
                    time: {
                        required: "不能为空",
                        maxlength: "最大长度为1",
                        minlength: "最小长度为1"
                    },
                    Date: {
                        required: "不能为空",
                    },
                }
            })
        });
    </script>

    <body>
        <span style="padding-left: 130px;color: #f00;">${info }</span>
        <form class="form-horizontal" id="registerForm" role="form" action="addproduct" method="post">
            <h2 style="text-align: center;">添加</h2>
            <div class="form-group" style="margin-top: 40px;">
                <label for="productID" class="col-sm-2 control-label">物流码</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="productID" name="productID" placeholder="物流码">
                </div>
            </div>
            <div class="form-group">
                <label for="price" class="col-sm-2 control-label">价格</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="price" name="price" placeholder="价格">
                </div>
            </div>
            <div class="form-group">
                <label for="begin" class="col-sm-2 control-label">始发地</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="begin" name="begin" placeholder="始发地">
                </div>
            </div>
            <div class="form-group">
                <label for="dest" class="col-sm-2 control-label">目的地</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="dest" name="dest" placeholder="目的地">
                </div>
            </div>
            <div class="form-group">
                <label for="jiphone" class="col-sm-2 control-label">寄者电话</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="jiphone" name="jiphone" placeholder="寄者电话">
                </div>
            </div>
            <div class="form-group">
                <label for="dephone" class="col-sm-2 control-label">收者电话</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="dephone" name="dephone" placeholder="收者电话">
                </div>
            </div>
            <div class="form-group">
                <label for="isDeal" class="col-sm-2 control-label">物流状态</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="isDeal" name="isDeal" placeholder="0为未处理，1为正在处理，2为处理完成">
                </div>
            </div>
            <div class="form-group">
                <label for="time" class="col-sm-2 control-label">是否加急</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="time" name="time" placeholder="0为不加急，1为加急">
                </div>
            </div>
            <div class="form-group">
                <label for="Date" class="col-sm-2 control-label">日期</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="Date" name="Date" placeholder="寄出日期">
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