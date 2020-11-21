<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>药品管理</title>
    <link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="./Semantic-UI-CSS-master/semantic.css">
    <script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="./Semantic-UI-CSS-master/semantic.js"></script>
    <script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script type="text/javascript" src="./valid/jquery.validate.js"></script>
</head>
<script>
    function time() {
        var date = new Date();
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        var house = date.getHours();
        var minutes = date.getMinutes();
        var second = date.getSeconds();
        var milsecond = date.getMilliseconds();
        document.getElementById("showtime").innerHTML = year + "-" + month + "-" + day + " " + house + ":" + minutes + ":" + second;
        setTimeout("time()", 100);
    }
    function showUserModel() {
        $('#userModal').modal('toggle');
        console.log($('#userModel'))
        console.log("点击事件");
    };
    function special(){
        $('.special.cards .image').dimmer({

            on: 'hover'
        });
    }

</script>
<style>
    .centerOf {
        align-items: center;
        justify-content: center;
        display: flex;
    }
    .showit{
        height: 100px;
    }
    .backgr {
        background-color: rgb(159, 195, 209);
        margin-top: 5px;
    }
</style>

<body  onload="time();special()" style="padding-top: 55px;padding-right: 10px">
<!-- 导航栏 -->
<nav class="navbar navbar-fixed-top navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index">药品管理系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="index">首页<span class="sr-only">(current)</span></a></li>
                <li ><a onclick="showUserModel()">欢迎：${name}</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多功能
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="userControlOf" target="_blank">用户列表</a></li>
                        <li><a href="medicineControl" target="_blank">药品介绍</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#" target="_blank">药品仓库</a></li>
                        <li><a href="Adress.jsp" target="_blank">仓库地址</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a id="showtime"></a></li>
                <li><a href="login.jsp">注销</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- 轮播图 -->
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>

    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="static/image/lunbo1.jpg" width="100%" alt="First slide">

        </div>

        <div class="item">
            <img src="static/image/ok3.jpg" width="100%" alt="Third slide">

        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
                                                                                               aria-hidden="true"></span> <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
                                                                                                aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- 轮播图结束 -->


<%--测试后台数据是否存在--%>
<%--<div style="background-color:red;height: 20px">--%>
<%--    <p>${medicineList[0].medicineName}</p>--%>
<%--</div>--%>


<!-- 巨幕开始 -->
<div class="jumbotron" style="margin-top: 30px;margin-right: 10px;margin-left:10px;">

    <div class="centerOf">
        <h3>有任何系统问题请及时联系：崔文轩</h3>
    </div>
    <p class="centerOf">
        <c:if test="${name==null}">
        <a class="btn btn-success btn-large" href="login.jsp">登录后进行了解</a>
        </c:if>
        <c:if test="${name!=null}">
        <button class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myModal" style="margin-top: 40px">点击查看</button>
        <!-- 介绍框开始 -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h2 class="modal-title" id="myModalLabel">联系方式</h2>
                    </div>
                    <div class="modal-body ">
    <p style="font-size: 17px; margin-top: 30px;">电话：17608430056</p>

    <p style="font-size: 17px;">住址：长沙市长沙理工大学</p>

</div>
<div class="modal-footer">
    <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
</div>
</div>
<!-- /.modal-content -->
</div>
<!-- /.modal -->
</div>
<!-- 介绍框结束 -->
</c:if>
</p>
</div>
<!-- 巨幕结束 -->
<hr style="margin:0px;background-color:rgba(238, 238, 238, 0.637);height:0.5px;border:none;" />


<%--<div style="background-color:red;height: 20px;width: 100%">--%>
<%--    ${userList[0].name}--${list[0].price}--%>

<%--</div>--%>

<%--一行三个卡片--%>
<div class="ui four column grid">
    <%--    --%>
    <c:forEach var="medicineList" items="${medicineList}" varStatus="i">
        <div class="column">
                <%--        --%>
            <div class="ui special cards ">
                    <%--            --%>

                <div class="card">
                    <div class="blurring dimmable image">
                        <div class="ui dimmer">
                            <div class="content">
                                <div class="center">
                                    <a class="ui inverted button" href="medicineInfo?uid=${medicineList.medicineId}">了解更多</a>
                                </div>
                            </div>
                        </div>
                        <img src="${medicineList.img}" class="showit">
                    </div>
                    <div class="content">
                        <a class="header">${medicineList.medicineName}</a>
                        <div class="meta">
                            <span class="date">Created in 11 2020</span>
                        </div>
                    </div>
                    <div class="extra content">
                        <a><i class="users icon"></i> 2 warehouse </a>
                    </div>
                </div>
            </div>
                <%--        --%>
        </div>
    </c:forEach>

</div>


<%--用户点击后触发模态框--%>
<div class="modal fade" id="userModal" tabindex="-1" role="dialog" aria-labelledby="userModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h2 class="modal-title" id="userModalLabel">${name}</h2>
            </div>
            <div class="modal-body ">

                <p style="font-size: 17px; margin-top: 30px;">好兄弟姓名: ${brotherName}</p>
                <p style="font-size: 17px;">邮箱: ${email}</p>
                <p style="font-size: 17px;">是否为管理员: <c:if test="${isAdmin == 0}">否</c:if>   <c:if test="${isAdmin == 1}">是</c:if></p>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
</div>




<hr style="margin:20px;background-color:rgba(238, 238, 238, 0.637);height:3px;border:none;" />
<footer class="centerOf" style="margin: 20px;">
    <p>崔文轩于2020-11-09制作</p>
</footer>
</body>

</html>
