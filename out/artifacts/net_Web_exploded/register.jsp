<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>注册</title>
    <%--    <link rel="stylesheet" href="./boot">--%>
    <link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.css">
    <%--    <link rel="stylesheet" type="text/css" href="./Semantic-UI-CSS-master/semantic.css">--%>
    <script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <%--    <script type="text/javascript" src="./Semantic-UI-CSS-master/s" ></script>--%>
    <script type="text/javascript" src="./valid/jquery.validate.js"></script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        html {
            background-repeat: no-repeat;
            /*width: 100%;*/
            /*background: 100%;*/
            background-size: 100% 100%;
            background-image: url(static/image/medicine_img.jpg);
            background-attachment: fixed;
        }

        #wrap {
            height: 100%;
            width: 100%;
            background-size: 100% 100%;
            /*background-image: url(./images/medicine_img.jpg);*/
            /*background-image: url('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1891376345,951966405&fm=26&gp=0.jpg');*/
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            position: relative;
        }

        #head {
            height: 46px;
            width: 100%;
            background-color: #66CCCC;
            opacity: 0.4;
            text-align: center;
            position: relative;
        }

        #wrap .logGet {
            margin-top: 50px;
            /*background-color: red;*/
            height: 650px;
            width: 368px;
            position: absolute;
            /*背景色*/
            background-color: rgba(255, 255, 255, 0.3);

            top: 20%;
            right: 15%;
        }

        .logC a button {
            width: 100%;
            height: 45px;
            background-color: #ee7700;
            border: none;
            color: white;
            font-size: 18px;
        }

        .logGet .logD.logDtip .p1 {
            display: inline-block;
            font-size: 28px;
            margin-top: 30px;
            width: 86%;
        }

        #wrap .logGet .logD.logDtip {
            width: 86%;
            border-bottom: 1px solid #ee7700;
            margin-bottom: 60px;
            margin-top: 0px;
            margin-right: auto;
            margin-left: auto;
        }

        .logGet .lgD img {
            position: absolute;
            top: 12px;
            left: 8px;
        }

        .logGet .lgD input {
            width: 100%;
            height: 42px;
            text-indent: 2.5rem;
        }

        #wrap .logGet .lgD {
            width: 86%;
            position: relative;
            margin-bottom: 30px;
            margin-top: 30px;
            margin-right: auto;
            margin-left: auto;
        }

        #wrap .logGet .logC {
            width: 86%;
            margin-top: 0px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
        }


        .title {
            font-family: "楷体";
            color: #FFFFFF;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            /* 使用css3的transform来实现 */
            font-size: 36px;
            height: 40px;
            width: 30%;
        }

        .copyright {
            font-family: "楷体";
            color: #FFFFFF;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            /* 使用css3的transform来实现 */
            height: 60px;
            width: 40%;
            text-align: center;
        }k


        .copyright .img .icon {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            /*  background-image: url(th:'@{/static/41a5da805fd87a785882119e9ff84d8e.jpg}');*/
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }

        .copyright .img .icon1 {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: url(static/image/account_img.png);
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }

        .copyright .img .icon2 {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: url(static/image/password_img.png);
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }

        /*.pwdPlaceHolder{}*/
    </style>
</head>
<script>
    $().ready(function () {
        $("#registerForm").validate({
            rules: {
                name: "required", //密码必须填写
                password: {
                    required: true,
                    maxlength: 20, //最大长度20
                    minlength: 5 //最小长度为5
                },
                Apassword: {
                    required: true,
                    maxlength: 20,
                    minlength: 5,
                    equalTo: "#password" //需要与password相同

                },
                email: {
                    required: true,
                    email: true //验证格式必须为邮箱格式
                }
            },
            messages: { //这里为填写出错的报错信息
                name: "请输入您的用户名",
                password: {
                    required: "请输入您的密码",
                    maxlength: "最大长度为20",
                    minlength: "最小长度为5"
                },
                Apassword: {
                    required: "请输入密码",
                    maxlength: "最大长度为20",
                    minlength: "最小长度为5!!!",
                    equalTo: "两次密码输入不一致"
                },
                email: "请输入正确的邮箱"
            }
        })
    });
</script>
<body>
<form class="form-horizontal" id="registerForm" role="form" method="post" action="register">
<%--    <div class="header" id="head">--%>
<%--        <div class="title">注册</div>--%>
<%--    </div>--%>
    <div class="wrap" id="wrap">
        <%--  开始登录小窗口  --%>
        <div class="logGet">
            <!-- 头部提示信息 -->
            <div class="logD logDtip">
                <p class="p1">注册</p>
                <p style="color: #ff0000">${info}</p>
                <%--                <span style="padding-left: 130px;color: #f00;">${info }</span>--%>
            </div>
            <!-- 输入框 -->
            <div class="lgD form-group">
                <img src="static/image/account_img.png" width="20" height="20" alt=""/>
                <input class="form-control" type="text" placeholder="   输入用户名" name="name" id="name"/>
                <span></span>
            </div>
            <div class="lgD form-group">
                <img src="static/image/password_img.png" width="20" height="20" alt=""/>
                <input class="form-control" type="password" placeholder="   输入用户密码" name="password" id="password"/>
                <span></span>
            </div>
            <div class="lgD form-group">
                <img src="static/image/password_img.png" width="20" height="20" alt=""/>
                <input class="form-control" type="password" placeholder="   确认用户密码" name="Apassword" id="Apassword"/>
                <span></span>
            </div>
            <div class="lgD form-group">
                <img src="static/image/Email_img.png" width="20" height="20" alt=""/>
                <input class="form-control" type="text" placeholder="   邮箱" name="email" id="email"/>
                <span></span>
            </div>
            <div class="lgD form-group">
                <img src="static/image/brother2.png" width="20" height="20" alt=""/>
                <input class="form-control" type="text" placeholder="   好兄弟姓名" name="brotherName" id="brotherName"/>
<%--                <span></span>--%>
            </div>
            <div class="logC form-group" style="text-align: center">
                <button class="btn btn-success" type="submit" style="margin-right: 10px">确认注册</button>
                <a href="login.jsp" class="btn btn-primary" style="margin-right: 10px">返回登录</a>
                <button href="register.jsp" class="btn btn-warning" type="reset">重置</button>
                <%--                <a href="forgetPassword.jsp" class="btn btn-danger" type="button" style="float: right">忘记密码</a>--%>
            </div>
        </div>
    </div>
</form>
</body>
</html>
