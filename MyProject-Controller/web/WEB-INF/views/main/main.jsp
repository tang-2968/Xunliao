<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-05
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>无标题文档</title>
    <link rel="stylesheet" type="text/css" href="common/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="common/css/style.css"/>
    <script type="text/javascript" src="common/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="common/js/seach.js"></script>
    <script type="text/javascript" src="common/js/scrolls.js"></script>
    <script type="text/javascript" src="common/js/addfriends.js"></script>
</head>
<style>
    ::-webkit-scrollbar{width:0px;}
</style>
<script>
    $(function (){
        res();
        scrolls();
        chatscr();
        $(window).resize(function(){
            res();
            scrolls();
            chatscr();
        })

        function res(){
            var winds = $(window).height();
            var windw = $(window).width();
            //最左边高度
            $(".buju_left").height(winds);
            //中间高度
            $(".buju_center").height(winds);
            //右边高度
            $(".buju_right").height(winds);
            $(".yinyings").height(winds);
            $(".buju_install").height(winds - 61);
            $(".bcen_box").height(winds - 62);
            $(".buju_right").width(windw - 310);
            $(".bri_bottom").width(windw - 310);
            $(".brce_block_box").width(windw - 310);
            $(".buju_right textarea").width(windw - 360);
            $(".bri_center").height(winds - 205);
            $(".brce_block_box").height(winds - 205);
        }

        $(".bcen_block").mouseenter(function (){
            $(this).not(".bcen_background").css("background-color","#ddd");
        })
        $(".bcen_block").mouseleave(function (){
            $(this).not(".bcen_background").css("background-color","#e7e8e9");
        })

        $(".bcen_block").click(function (){
            $(this).removeAttr("style");
            $(this).addClass("bcen_background");
            $(".bcen_block").not(this).removeClass("bcen_background");
            $(this).find(".bcen_block_dian").css("display","none");
            $(this).find(".bcen_block_nums").css("display","none");
        })

        $(".bri_bottom textarea").focus(function (){
            $(".bri_bottom").css("background-color","#fff");
        })
        $(".bri_bottom textarea").blur(function (){
            $(".bri_bottom").css("background-color","#f5f5f5");
        })

        $(".bri_bottom_face").click(function (){
            $(".bri_bottom_look").css("display","block");
        })

        $(document).bind("click",function(e){
            //id为menu的是菜单，id为open的是打开菜单的按钮
            if($(e.target).closest(".bri_bottom_look").length == 0 && $(e.target).closest(".bri_bottom_face").length == 0){
                //点击id为menu之外且id不是不是open，则触发
                $(".bri_bottom_look").css("display","none");
            }
        })

        $(".bri_bottom_file").click(function (){
            $(".bri_bottom_files").click();
        })

        $(".bri_bottom_but").click(function (){
            var chats = $(".bri_bottom textarea").val();
            var apps_one = "<div class='brce_right'><div class='brce_left_face fr'><img src='common/img/face001.jpg'/></div><div class='brce_left_talk fr'><div class='brce_rt_jiao fr'></div><div class='brce_rt_block fr'><div>";
            var apps_two = "</div></div></div><div class='clear'></div></div>";
            if(chats == ""){
                $(".bri_bottom_empty").css("display","block");
                setTimeout(function () {$(".bri_bottom_empty").hide();}, 2000)
            }else{
                $(".bri_center").append(apps_one + chats + apps_two);
                img();
                $(".bri_bottom textarea").val("");

            }
        })

        $(".bri_top_more").click(function (){
            var bl = $(".buju_install").css("display");
            if(bl == "block"){
                $(".buju_install").css("display","none");
            }else if(bl == "none"){
                $(".buju_install").css("display","block");
            }
        })

        $(".bin_two_but").click(function (){
            var imgs = $(this).find("img").attr("src");
            imgs = imgs.replace("common/img/","");
            imgs = imgs.replace(".png","");
            if(imgs == "butclose"){
                $(this).find("img").attr("src","common/img/butopen.png");
            }else if(imgs == "butopen"){
                $(this).find("img").attr("src","common/img/butclose.png");
            }
        })

        $(".bin_three input").focus(function (){
            $(".bin_three").css("background-color","#fff");
        })

        $(".bin_three input").keyup(function (){
            var val = $(this).val();
            if(val == ""){
                $(".bin_three_close").css("display","none");
                $(".bin_three_seach").css("display","block");
            }else if(val != ""){
                $(".bin_three_close").css("display","block");
                $(".bin_three_seach").css("display","none");
            }
        })

        $(".bin_three_close").click(function (){
            $(".bin_three input").val("");
            $(".bin_three_close").css("display","none");
            $(".bin_three_seach").css("display","block");
            $(".bin_three").css("background-color","#f5f5f5");
        })

        $(".bin_five_text").mouseenter(function (){
            $(this).next("img").css("display","block");
        })

        $(".bin_five_text").mouseleave(function (){
            $(this).next("img").css("display","none");
        })

        $(".bin_five_text").click(function (){
            $(this).next("input").attr("type","text");
            $(this).css("display","none");
            $(this).next("input").focus();
        })

        $(".bin_five_text").next("input").blur(function (){
            var bin = $(this).val();
            if(bin != ""){
                $(this).prev(".bin_five_text").html(bin);
            }
            $(this).prev(".bin_five_text").css("display","block");
            $(this).attr("type","hidden");
        })

        $(".bin_five_text").eq(0).next("input").blur(function (){
            var bin = $(this).val();
            $(".bri_top_font").html(bin);
        })

        $(".bin_five_butname").click(function (){
            var imgs = $(this).attr("src");
            imgs = imgs.replace("common/img/","");
            imgs = imgs.replace(".png","");
            if(imgs == "butclose"){
                $(this).attr("src","common/img/butopen.png");
                $(".brce_lt_name").css("display","block");
            }else if(imgs == "butopen"){
                $(this).attr("src","common/img/butclose.png");
                $(".brce_lt_name").css("display","none");
            }
        })

        $(".bin_five_but").click(function (){
            var imgs = $(this).attr("src");
            imgs = imgs.replace("common/img/","");
            imgs = imgs.replace(".png","");
            if(imgs == "butclose"){
                $(this).attr("src","common/img/butopen.png");
            }else if(imgs == "butopen"){
                $(this).attr("src","common/img/butclose.png");
            }
        })

        $(".bin_five_note").click(function (){
            $(".bin_note").css("display","block");
        })

        $(".bin_note_close").click(function (){
            $(".bin_note").css("display","none");
        })

    })

</script>
<body>
<div class="buju">
    <!-- 最左侧功能图标 -->
    <div class="buju_left fl">
        <div class="bleft_face fl">
            <img src="common/img/face001.jpg"/>
        </div>
        <div class="bleft_iconone fl">
            <a href="main.jsp"><img src="common/img/chat011.png" width="100%"/></a>
        </div>
        <div class="bleft_iconnum">1</div>
        <div class="bleft_iconone fl">
            <a href="/Friends/getAll"><img src="common/img/chat020.png" width="100%"/></a>
        </div>
        <div class="bleft_iconone fl">
            <a href="/Friends/getAll"><img src="common/img/chat021.png" width="100%"/></a>
        </div>
        <div class="bleft_iconone fl">
            <a href="/install"><img src="common/img/chat030.png" width="100%"/></a>
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
    <!-- 最左侧功能图标 -->
    <!-- 中间消息列表-->
    <div class="buju_center fl">
        <div class="bcen_seach fl">
            <div class="bcen_seach_font fl">搜索</div>
            <input type="text" style="display:none;" class="fl"/>
            <div class="bcen_seach_close fr" style="display:none;"><img src="common/img/close.png"/></div>
            <div class="bcen_seach_but fr">
                <img src="common/img/seach.png" width="100%"/>
            </div>
        </div>
        <a href="javascript:void(0);" onclick="addfris()">
            <div class="bcen_add fl">
                <img src="common/img/add001.png"/>
            </div>
        </a>
        <div class="bcen_scroll" style="position:absolute;right:0px;top:62px;display:none;"></div>
        <div class="clear"></div>
        <div class="bcen_box">
            <div class="bcen_jilu">
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg"/>
                    </div>
                    <!--<div class="bcen_block_dian"></div>
                    <div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">首席铲屎官</div>
                        <div class="bcen_block_fonts over">拜拜</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">昨天</div>
                        <!--<div class="bcen_block_note fr">
                                  <img src="common/img/nonote.png" width="100%"/>
                        </div>-->
                    </div>
                </div>
                <script>
                    $(function (){
                        var image_widths=$(".bcen_block_face").width();
                        var image_heights=$(".bcen_block_face").height();
                        var image_bis=image_widths/image_heights;
                        $(".bcen_block_face img").each(function (){
                            var images_widths=$(this).width();
                            var images_heights=$(this).height();
                            var images_bis=images_widths/images_heights;
                            if(image_bis<images_bis){
                                $(this).css("height",image_heights);
                                var imgwidths=image_heights * images_bis;
                                var widthss= 0 - (imgwidths - image_widths) / 2;
                                $(this).css("margin-left",widthss);
                            }else{
                                $(this).css("width","100%");
                                var imgheights=image_widths / images_bis;
                                var heightss=0 - (imgheights - image_heights) / 2;
                                $(this).css("margin-top",heightss);
                            }
                        })
                    })
                </script>
            </div>
     </div>

    </div>
        <script>
            function friface(){
                var image_width=$(".ba_lfb_face").width();
                var image_height=$(".ba_lfb_face").height();
                var image_bi=image_width/image_height;
                $(".ba_lfb_face img").each(function (){
                    images_width=$(this).width();
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
            }
        </script>
    </div>
</div>
</body>
</html>
