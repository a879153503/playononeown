<%--
  Created by IntelliJ IDEA.
  User: Marin
  Date: 2019/10/12
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.2</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/sliderVerify.js"></script>
    <!--html5shiv：解决ie9以下浏览器对html5新增标签的不识别，并导致CSS不起作用的问题。
    respond.min:让不支持css3 Media Query的浏览器包括IE6-IE8等其他浏览器支持查询。-->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!--HTML判断是否为此浏览器,根据需要加载所需文件。-->
</head>
<body class="login-bg">

<div class="login layui-anim layui-anim-up">
    <div class="message">Dream start平台</div>
    <div id="darkbannerwrap"></div>

    <form method="post" name="actionForm" id="actionForm" class="layui-form" action="${pageContext.request.contextPath }/user/login">
        <input name="error" type="text" value="${error}" style="display:none;">
        <input name="username"  placeholder="用户名" type="text" lay-verify="required" class="layui-input">
        <hr class="hr15">
        <input name="password"  lay-verify="required" placeholder="密码" type="password" class="layui-input">
        <hr class="hr15">
        <%--滑块--%>
        <div id="slider"></div>
        <hr class="hr15">
        <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr20">
    </form>
</div>

<script>

<%--$(":input:text[name='username']").val()--%>

    $(function () {

        layui.config({
            base: '${pageContext.request.contextPath }/resources/js/'
        }).use(['sliderVerify','form'], function() {

            var tips = $(":input:text[name='error']").val();

            if (tips!=""){

                layer.msg($(":input:text[name='error']").val());
            }

            var sliderVerify = layui.sliderVerify,
                form = layui.form;
            var slider = sliderVerify.render({
                elem: '#slider',
                isAutoVerify:false,//关闭自动验证
                bg : 'layui-bg-green',//自定义背景样式名
                text : '滑动',
                onOk: function(){//当验证通过回调
                    layer.msg("滑块验证通过");
                }
            });
            //监听提交
            form.on('submit(login)', function(data) {
                if(slider.isOk()){//用于表单验证是否已经滑动成功
                }else{
                    layer.msg("请先通过滑块验证");
                    return false;
                }
                // return false;
            });

        });

        // layui.use('form', function () {
        //     var form = layui.form;
        //     // layer.msg('玩命卖萌中', function(){
        //     //   //关闭后的操作
        //     //   });
        //     //监听提交
        //     form.on('submit(login)', function (data) {
        //         // alert(888)
        //         layer.msg(JSON.stringify(data.field), function () {
        //             location.href = 'index.html'
        //         });
        //         return false;
        //     });
        // });
    });
</script>
<!-- 底部结束 -->
<script>
    //百度统计可去掉
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>
