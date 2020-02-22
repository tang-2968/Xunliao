<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-18
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
    <meta charset="utf-8">
    <title>无标题文档</title>
    <link rel="stylesheet" type="text/css" href="common/css/common.css">
    <script type="text/javascript" src="common/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="common/js/seach.js"></script>
    <style>
        ::-webkit-scrollbar{width:0px;}
        .bir_block_one{
            margin-left:28px;
            margin-top:24px;
        }
        .bir_block_one > div{
            margin-bottom:26px;
        }
        input[type="time"]{
            font-size:14px;
            width:80px;
            height:25px;
        }
    </style><script>
    $(function (){
        var winds = $(window).height();
        var windw = $(window).width();
        $(".buju_left").height(winds);
        $(".buju_center").height(winds);
        $(".buju_right").height(winds);
        $(".bcen_box").height(winds - 60);
        $(".buju_right").width(windw - 310);


        $(".bcen_menu_block").mouseenter(function (){
            $(this).not(".bcen_background").css("background-color","#ddd");
        })
        $(".bcen_menu_block").mouseleave(function (){
            $(this).not(".bcen_background").css("background-color","#e7e8e9");
        })

        $(".bir_block_but").click(function (){
            var imgs = $(this).find("img").attr("src");
            imgs = imgs.replace("common/img/","");
            imgs = imgs.replace(".png","");
            if(imgs == "butclose"){
                $(this).find("img").attr("src","common/img/butopen.png");
                if($(this).hasClass("bir_block_time")){
                    $(".intime").css("display","block");
                }
            }else if(imgs == "butopen"){
                $(this).find("img").attr("src","common/img/butclose.png");
                if($(this).hasClass("bir_block_time")){
                    $(".intime").css("display","none");
                }
            }
        })

    })
</script></head>


<body style="">
<div class="buju">
    <div class="buju_left fl" style="height: 607px;">
        <div class="bleft_face fl">
            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
        </div>
        <div class="bleft_iconone fl">
            <a href="main.jsp"><img src="common/img/chat010.png" width="100%"></a>
        </div>
        <div class="bleft_iconnum">1</div>
        <div class="bleft_iconone fl">
            <a href="friends.jsp"><img src="common/img/chat020.png" width="100%"></a>
        </div>
        <div class="bleft_iconone fl">
            <a href="install.jsp"><img src="common/img/chat031.png" width="100%"></a>
        </div>
    </div>
    <script>
        $(function (){
            var image_width=$(".bleft_face").width();
            var image_height=$(".bleft_face").height();
            var image_bi=image_width/image_height;
            $(".bleft_face img").each(function (){
                var images_width=$(this).width();
                var images_height=$(this).height();
                var images_bi=images_width/images_height;
                if(image_bi<images_bi){
                    $(this).css("height",image_height);
                    var imgwidth=image_height * images_bi;
                    var widths= 0 - (imgwidth - image_width) / 2;
                    $(this).css("margin-left",widths);
                }else{
                    $(this).css("width","100%");
                    var imgheight=image_width / images_bi;
                    var heights=0 - (imgheight - image_height) / 2;
                    $(this).css("margin-top",heights);
                }
            })
        })
    </script>
    <!-- 中间功能列表-->
    <div class="buju_center fl" style="height: 607px;">
        <!--<div class="bcen_seach fl">
                  <div class="bcen_seach_font fl">搜索</div>
                  <input type="text" style="display:none;" class="fl"/>
                        <div class="bcen_seach_close fr" style="display:none;"><img src="common/img/close.png"/></div>
                        <div class="bcen_seach_but fr">
                            <img src="common/img/seach.png" width="100%"/>
                        </div>
              </div>
              <a href="javascript:void(0);">
                        <div class="bcen_add fl">
                                  <img src="common/img/add001.png"/>
                        </div>
              </a>-->
        <div class="clear"></div>
        <div class="bcen_menu">
            <div class="bcen_menu_block">
                <a href="install.jsp">
                    <img src="common/img/install001.png">
                    <label>账号设置</label>
                </a>
            </div>
            <div class="bcen_menu_block bcen_background">
                <a href="commoninstall.jsp">
                    <img src="common/img/install002.png">
                    <label>通用设置</label>
                </a>
            </div>
            <div class="bcen_menu_block" style="background-color: rgb(231, 232, 233);">
                <a href="aboutus.jsp">
                    <img src="common/img/install003.png">
                    <label>关于菲信</label>
                </a>
            </div>
        </div>
    </div>
    <!-- 中间功能列表-->
    <!-- 右边详情框 -->
    <div class="buju_right fl" style="height: 607px; width: 1056px;">
        <div class="bri_top">
            <div class="bri_top_font fl">
                通用设置
            </div>
            <div class="clear"></div>
        </div>
        <div class="bir_block">
            <div class="bir_block_one">
                <p>新消息提醒</p>
                <div class="bir_block_but"><img src="common/img/butclose.png"></div>
                <p>勿扰模式</p>
                <div class="bir_block_but bir_block_time"><img src="common/img/butclose.png"></div>
                <div class="intime" style="display:none;">
                    <p>勿扰时间</p>
                    <div class="" style="margin-top:12px;font-size:14px;">
                        <input type="time">&nbsp;&nbsp;&nbsp;&nbsp;至&nbsp;&nbsp;&nbsp;&nbsp;<input type="time">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 右边详情框 -->
</div>


</body></html>
