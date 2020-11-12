<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>物流信息</title>
        <link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.css">
        <script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
        <script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
        <script type="text/javascript" src="./valid/jquery.validate.js"></script>
    </head>

    <body style=" padding-top: 70px;">
        <div class="container">
            <div class="row">
                <div class="col-md-3">

                </div>
                <div class="col-md-6">
                    <h2 style="display: flex;align-items: center;justify-content: center;color: red;">物流详情</h2>
                    <table class="table table-striped table-hover" style="margin-top: 30pxs;">
                        <tbody>
                            <tr>
                                <td>物流码：</td>
                                <td>${product.productID }</td>
                            </tr>
                            <tr>
                                <td>物流价格：</td>
                                <td>${product.price }</td>
                            </tr>
                            <tr>
                                <td>邮件者电话：</td>
                                <td>${product.jiphone }</td>
                            </tr>
                            <tr>
                                <td>收件人电话：</td>
                                <td>${product.dephone }</td>
                            </tr>
                            <tr>
                                <td>邮寄日期：</td>
                                <td>${product.date }</td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="javascript:void(0)" onclick="history.go(-1)" class="btn btn-danger btn-xs">返回</a>

                </div>
                <div class="col-md-3">
                </div>
            </div>
        </div>

        <!-- 尾部 -->
        <hr style="margin-top: 300px;">
    </body>

    </html>