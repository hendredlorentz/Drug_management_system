<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.css">
<script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="./valid/jquery.validate.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=i83fC6UH2zVHyGOgnEGtIe9nSjKItDqp"></script>

<style type="text/css">
    body,
    html,
    #allmap {
        width: 100%;
        height: 100%;
        overflow: hidden;
        margin: 0;
        font-family: "微软雅黑";
    }
</style>
<head>
    <meta charset="UTF-8">
    <title>仓库地址</title>
</head>

<body>
<div id="allmap" style="width: 100%"></div>
</body>

</html>

<script type="text/javascript">
    var points = [{
        "lng": 112.984128,
        "lat": 28.160191,
        "id": "一号仓库",
        "name": "长理金村",
        "contain":"非处方药&&处方药"
    },
        {
            "lng": 113.015628,
            "lat": 28.073469,
            "id": "二号仓库",
            "name": "长理云塘",
            "contain":"非处方药"
        }
    ];

    //创建标注点并添加到地图中
    function addMarker(points) {
        //循环建立标注点
        for (var i = 0, pointsLen = points.length; i < pointsLen; i++) {
            var point = new BMap.Point(points[i].lng, points[i].lat); //将标注点转化成地图上的点
            var marker = new BMap.Marker(point); //将点转化成标注点
            map.addOverlay(marker); //将标注点添加到地图上
            //添加监听事件
            (function () {
                var thePoint = points[i];
                marker.addEventListener("mouseover",
                    function () {
                        showInfo(this, thePoint);
                    });
            })();
        }
    }

    function showInfo(thisMarker, point) {
        //获取点的信息
        var sContent =
            '<ul style="margin:0 0 5px 0;padding:0.2em 0">' +
            '<li style="line-height: 26px;font-size: 15px;">' +
            '<span style="width: 50px;display: inline-block;">标识：</span>' + point.id + '</li>' +
            '<li style="line-height: 26px;font-size: 15px;">' +
            '<span style="width: 50px;display: inline-block;">名称：</span>' + point.name + '</li>' +
            '<li style="line-height: 26px;font-size: 15px;">' +
            '<span style="width: 50px;display: inline-block;">库存：</span>' + point.contain + '</li>' +
            '</ul>';
        var infoWindow = new BMap.InfoWindow(sContent); //创建信息窗口对象
        thisMarker.openInfoWindow(infoWindow); //图片加载完后重绘infoWindow
    }

    //创建地图
    var map = new BMap.Map("allmap");

    map.centerAndZoom("长沙");
    map.setCurrentCity("长沙");
    map.addControl(new BMap.MapTypeControl());
    map.enableScrollWheelZoom(true);
    addMarker(points);
</script>