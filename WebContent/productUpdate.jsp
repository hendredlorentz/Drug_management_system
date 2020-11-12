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
                    productid: {
                        required: true,
                        maxlength: 6,
                        minlength: 6
                    },
                    price: "required",
                    begin: {
                        required: true,
                    },
                    destination: {
                        required: true,
                    },
                    jiphone: {
                        required: true,
                        maxlength: 11,
                        minlength: 11
                    },
                    dephone: {
                        required: true,
                        maxlength: 11,
                        minlength: 11
                    },
                    isDeal: {
                        required: true,
                        maxlength: 1,
                        minlength: 1
                    },
                    time: {
                        required: true,
                        maxlength: 1,
                        minlength: 1
                    },
                    date: {
                        required: true
                    }
                },
                messages: { //这里为填写出错的报错信息
                    price: "请输入价格",
                    productid: {
                        required: "必须输入",
                        maxlength: "最大长度为6",
                        minlength: "最小长度为6"
                    },
                    begin: {
                        required: "必须输入",
                    },
                    destination: {
                        required: "必须输入",
                    },
                    jiphone: {
                        required: "必须输入",
                        maxlength: "最大长度为11",
                        minlength: "最小长度为11"
                    },
                    dephone: {
                        required: "必须输入",
                        maxlength: "最大长度为11",
                        minlength: "最小长度为11"
                    },
                    isDeal: {
                        required: "必须输入",
                        maxlength: "仅输入1位数字",
                        minlength: "仅输入1位数字"
                    },
                    time: {
                        required: "必须输入",
                        maxlength: "仅输入1位数字",
                        minlength: "仅输入1位数字"
                    },
                    date: {
                        required: "必须输入"
                    }
                }
            })
        });
    </script>

    <body>
        <!-- <span style="padding-left: 130px;color: #f00;">${info }</span> -->
        <form class="form-horizontal" id="registForm" role="form" action="productUpdate" method="post">
            <h2 style="text-align: center;">物流修改</h2>
            <input type="hidden" name="uid" value="${product.uid}" />
            <div class="form-group" style="margin-top: 40px;">
                <label for="productid" class="col-sm-2 control-label">物流码</label>
                <div class="col-sm-8">
                    <input type="text" value="${product.productID}" class="form-control" id="productid" name="productid" placeholder="物流码">
                </div>
            </div>
            <div class="form-group ">
                <label for="price" class="col-sm-2 control-label ">价格</label>
                <div class="col-sm-8 ">
                    <input type="text" value="${product.price}" class="form-control " id="price" name="price" placeholder="价格">
                </div>
            </div>
            <div class="form-group ">
                <label for="begin" class="col-sm-2 control-label ">出发地</label>
                <div class="col-sm-8 ">
                    <input type="text" value="${product.begin}" class="form-control " id="begin" name="begin" placeholder="出发地">
                </div>
            </div>
            <div class="form-group">
                <label for="destination" class="col-sm-2 control-label ">目的地</label>
                <div class="col-sm-8 ">
                    <input type="text" value="${product.dest}" class="form-control " id="destination" name="destination" placeholder="目的地">
                </div>
            </div>
            <div class="form-group">
                <label for="jiphone" class="col-sm-2 control-label ">寄件人电话</label>
                <div class="col-sm-8 ">
                    <input type="text" value="${product.jiphone}" class="form-control " id="jiphone" name="jiphone" placeholder="寄件人电话">
                </div>
            </div>
            <div class="form-group">
                <label for="dephone" class="col-sm-2 control-label ">收件人电话</label>
                <div class="col-sm-8 ">
                    <input type="text" value="${product.dephone}" class="form-control " id="dephone" name="dephone" placeholder="收件人电话">
                </div>
            </div>
            <div class="form-group">
                <label for="isDeal" class="col-sm-2 control-label ">是否处理</label>
                <div class="col-sm-8 ">
                    <input type="number" value="${product.isDeal}" class="form-control " id="isDeal" name="isDeal" placeholder="处理(为2),处理中(为1),未处理(为0)">
                </div>
            </div>
            <div class="form-group">
                <label for="time" class="col-sm-2 control-label ">是否加急</label>
                <div class="col-sm-8 ">
                    <input type="number" value="${product.time}" class="form-control " id="time" name="time" placeholder="加急(为1),不加急为(为0)">
                </div>
            </div>
            <div class="form-group ">
                <label for="date" class="col-sm-2 control-label ">日期</label>
                <div class="col-sm-8 ">
                    <input type="text" value="${product.date}" class="form-control " id="date" name="date" placeholder="日期">
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