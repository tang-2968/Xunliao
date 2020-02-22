<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-19
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
    <meta charset="utf-8">
    <title>无标题文档</title>
    <link rel="stylesheet" type="text/css" href="common/css/common.css">
    <link rel="stylesheet" type="text/css" href="common/css/style.css">
    <script type="text/javascript" src="common/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="common/js/seach.js"></script>
    <script type="text/javascript" src="common/js/scrolls.js"></script>
    <script type="text/javascript" src="common/js/addfriends.js"></script>
    <style>
        ::-webkit-scrollbar{width:0px;}
    </style><script>
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

        $(".bin_four_more").click(function (){
            var hts = $(this).find("label").html();
            if(hts == "查看更多群成员"){
                $(this).find("label").html("收起群成员");
                $(this).find("img").attr("src","common/img/up001.png");
            }else if(hts == "收起群成员"){
                $(this).find("label").html("查看更多群成员");
                $(this).find("img").attr("src","common/img/down001.png");
            }
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

</script></head>


<body style="">
<div class="buju">
    <!-- 最左侧功能图标 -->
    <div class="buju_left fl" style="height: 1394px;">
        <div class="bleft_face fl">
            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
        </div>
        <div class="bleft_iconone fl">
            <a href="index.html"><img src="common/img/chat011.png" width="100%"></a>
        </div>
        <div class="bleft_iconnum">1</div>

        <div class="bleft_iconone fl">
            <a href="install.html"><img src="common/img/chat030.png" width="100%"></a>
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
    <div class="buju_center fl" style="height: 1394px;">
        <div class="bcen_seach fl">
            <div class="bcen_seach_font fl">搜索</div>
            <input type="text" style="display:none;" class="fl">
            <div class="bcen_seach_close fr" style="display:none;"><img src="common/img/close.png"></div>
            <div class="bcen_seach_but fr">
                <img src="common/img/seach.png" width="100%">
            </div>
        </div>
        <a href="javascript:void(0);" onclick="addfris()">
            <div class="bcen_add fl">
                <img src="common/img/add001.png">
            </div>
        </a>
        <div class="bcen_scroll" style="position: absolute; right: 0px; top: 62px; display: none; height: 220px;"></div>
        <div class="clear"></div>
        <div class="bcen_box" style="height: 1332px;">
            <div class="bcen_jilu">
                <div class="bcen_block bcen_background">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face002.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_block_dian"></div>
                    <!--<div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">单机游戏交流群</div>
                        <div class="bcen_block_fonts over">卖兜的小麦兜：今天有去的吗</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">8:42</div>
                        <div class="bcen_block_note fr">
                            <img src="common/img/nonote.png" width="100%">
                        </div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face003.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <!--<div class="bcen_block_dian"></div>
                    <div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">冰雪</div>
                        <div class="bcen_block_fonts over">出去玩吗？</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">4:44</div>
                        <!--<div class="bcen_block_note fr">
                                  <img src="common/img/nonote.png" width="100%"/>
                        </div>-->
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg" style="height: 40px; margin-left: -2.51407px;">
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
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <!--<div class="bcen_block_dian"></div>-->
                    <div class="bcen_block_nums">1</div>
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">阿卡姆骑士</div>
                        <div class="bcen_block_fonts over">出去玩不？</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">8:42</div>
                        <div class="bcen_block_note fr">
                            <img src="common/img/nonote.png" width="100%">
                        </div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg" style="height: 40px; margin-left: -2.51407px;">
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
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <!--<div class="bcen_block_dian"></div>
                    <div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">阿卡姆骑士</div>
                        <div class="bcen_block_fonts over">出去玩不？</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">8:42</div>
                        <div class="bcen_block_note fr">
                            <img src="common/img/nonote.png" width="100%">
                        </div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg" style="height: 40px; margin-left: -2.51407px;">
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
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <!--<div class="bcen_block_dian"></div>
                    <div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">阿卡姆骑士</div>
                        <div class="bcen_block_fonts over">出去玩不？</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">8:42</div>
                        <div class="bcen_block_note fr">
                            <img src="common/img/nonote.png" width="100%">
                        </div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg" style="height: 40px; margin-left: -2.51407px;">
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
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <!--<div class="bcen_block_dian"></div>
                    <div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">阿卡姆骑士</div>
                        <div class="bcen_block_fonts over">出去玩不？</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">8:42</div>
                        <div class="bcen_block_note fr">
                            <img src="common/img/nonote.png" width="100%">
                        </div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg" style="height: 40px; margin-left: -2.51407px;">
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
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <!--<div class="bcen_block_dian"></div>
                    <div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">阿卡姆骑士</div>
                        <div class="bcen_block_fonts over">出去玩不？</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">8:42</div>
                        <div class="bcen_block_note fr">
                            <img src="common/img/nonote.png" width="100%">
                        </div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg" style="height: 40px; margin-left: -2.51407px;">
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
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <!--<div class="bcen_block_dian"></div>
                    <div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">阿卡姆骑士</div>
                        <div class="bcen_block_fonts over">出去玩不？</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">8:42</div>
                        <div class="bcen_block_note fr">
                            <img src="common/img/nonote.png" width="100%">
                        </div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg" style="height: 40px; margin-left: -2.51407px;">
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
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <!--<div class="bcen_block_dian"></div>
                    <div class="bcen_block_nums">1</div>-->
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">阿卡姆骑士</div>
                        <div class="bcen_block_fonts over">出去玩不？</div>
                    </div>
                    <div class="bcen_block_right fr">
                        <div class="bcen_block_time">8:42</div>
                        <div class="bcen_block_note fr">
                            <img src="common/img/nonote.png" width="100%">
                        </div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face004.jpg" style="height: 40px; margin-left: -2.51407px;">
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

            <div class="bcen_jilu" style="display:none;">
                <div class="bsea_first">联系人</div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face003.jpg" style="width: 100%;">
                    </div>
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title" style="line-height:40px;">冰雪</div>
                        <!--<div class="bcen_block_fonts over">出去玩吗？</div>-->
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face003.jpg" style="width: 100%;">
                    </div>
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">冰雪</div>
                        <div class="bcen_block_fonts over">昵称：劳拉·克劳馥</div>
                    </div>
                </div>
                <div class="bsea_first">群聊</div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face003.jpg" style="width: 100%;">
                    </div>
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">家庭一群</div>
                        <div class="bcen_block_fonts over">包含：阿姐</div>
                    </div>
                </div>
                <div class="bcen_block">
                    <div class="bcen_block_face fl">
                        <img src="common/img/face003.jpg" style="width: 100%;">
                    </div>
                    <div class="bcen_block_font fl">
                        <div class="bcen_block_title">单机游戏交流群</div>
                        <div class="bcen_block_fonts over">包含：哥哥（阿T）</div>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <!-- 中间消息列表-->
    <!-- 右边对话框 -->
    <div class="buju_right fl" style="height: 1394px; width: 670px;">
        <div class="bri_top">
            <div class="bri_top_font fl">
                单机游戏交流群
            </div>
            <div class="bri_top_more fr"></div>
            <div class="clear"></div>
        </div>
        <div class="bri_center" style="height: 1189px;">
            <div class="bri_center_scroll" style="display: none; height: 63px; top: 0px;"></div>
            <div class="bri_center_block">
                <div class="brce_block_box" style="width: 670px; height: 1189px;"><div>
                    <div class="brce_left">
                        <div class="brce_left_face fl">
                            <img src="common/img/face003.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fl">
                            <div class="brce_lt_name">冰雪</div>
                            <div class="brce_lt_jiao fl"></div>
                            <div class="brce_lt_block fl">
                                <div>什么电影？</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_right">
                        <div class="brce_left_face fr">
                            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fr">
                            <div class="brce_rt_jiao fr"></div>
                            <div class="brce_rt_block fr">
                                <div>复联四啊</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_right">
                        <div class="brce_left_face fr">
                            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fr">
                            <div class="brce_rt_jiao fr"></div>
                            <div class="brce_rt_block fr"><img src="common/img/img001.jpg"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_left">
                        <div class="brce_left_face fl">
                            <img src="common/img/face003.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fl">
                            <div class="brce_lt_name">冰雪</div>
                            <div class="brce_lt_jiao fl"></div>
                            <div class="brce_lt_block fl">
                                <div>再说吧，不一定有空</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_right">
                        <div class="brce_left_face fr">
                            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fr">
                            <div class="brce_rt_jiao fr"></div>
                            <div class="brce_rt_block fr">
                                <div>好吧</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_time">4:44</div>

                    <div class="brce_left">
                        <div class="brce_left_face fl">
                            <img src="common/img/face010.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fl">
                            <div class="brce_lt_name">卖兜的小麦兜</div>
                            <div class="brce_lt_jiao fl"></div>
                            <div class="brce_lt_block fl">
                                <div>今天有去的吗？</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>



                    <div class="brce_left">
                        <div class="brce_left_face fl">
                            <img src="common/img/face003.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fl">
                            <div class="brce_lt_name">冰雪</div>
                            <div class="brce_lt_jiao fl"></div>
                            <div class="brce_lt_block fl">
                                <div>什么电影？</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_right">
                        <div class="brce_left_face fr">
                            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fr">
                            <div class="brce_rt_jiao fr"></div>
                            <div class="brce_rt_block fr">
                                <div>复联四啊</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_right">
                        <div class="brce_left_face fr">
                            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fr">
                            <div class="brce_rt_jiao fr"></div>
                            <div class="brce_rt_block fr"><img src="common/img/img001.jpg"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_left">
                        <div class="brce_left_face fl">
                            <img src="common/img/face003.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fl">
                            <div class="brce_lt_name">冰雪</div>
                            <div class="brce_lt_jiao fl"></div>
                            <div class="brce_lt_block fl">
                                <div>再说吧，不一定有空</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_right">
                        <div class="brce_left_face fr">
                            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fr">
                            <div class="brce_rt_jiao fr"></div>
                            <div class="brce_rt_block fr">
                                <div>好吧</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="brce_time">4:44</div>

                    <div class="brce_left">
                        <div class="brce_left_face fl">
                            <img src="common/img/face010.jpg" style="width: 100%; margin-top: 0px;">
                        </div>
                        <div class="brce_left_talk fl">
                            <div class="brce_lt_name">卖兜的小麦兜</div>
                            <div class="brce_lt_jiao fl"></div>
                            <div class="brce_lt_block fl">
                                <div>今天有去的吗？</div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <script>
            $(function (){
                img();
            })
            function img(){
                var img_width = $(".brce_left_face").width();
                var img_height = $(".brce_left_face").height();
                var img_bi=img_width/img_height;
                $(".brce_left_face img").each(function (){
                    var imgs_width=$(this).width();
                    var imgs_height=$(this).height();
                    var imgs_bi=imgs_width/imgs_height;
                    if(img_bi < imgs_bi){
                        $(this).css("height",img_height);
                        var imgswidth = img_height * imgs_bi;
                        var wid= 0 - (imgswidth - img_width) / 2;
                        $(this).css("margin-left",wid);
                    }else{
                        $(this).css("width","100%");
                        var imgsheight=img_width / img_bi;
                        var hei=0 - (imgsheight - img_height) / 2;
                        $(this).css("margin-top",hei);
                    }
                })
            }
        </script>
        <div class="bri_bottom" style="width: 670px;">
            <div class="bri_bottom_face fl" title="表情"></div>
            <div class="bri_bottom_look" style="display:none;">
                <div class="bri_blook_center">
                    <div class="fl">
                        <img src="common/img/look001.png" title="微笑">
                    </div>
                    <div class="fl">
                        <img src="common/img/look002.png" title="撇嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look003.png" title="色">
                    </div>
                    <div class="fl">
                        <img src="common/img/look004.png" title="发呆">
                    </div>
                    <div class="fl">
                        <img src="common/img/look005.png" title="得意">
                    </div>
                    <div class="fl">
                        <img src="common/img/look006.png" title="流泪">
                    </div>
                    <div class="fl">
                        <img src="common/img/look007.png" title="害羞">
                    </div>
                    <div class="fl">
                        <img src="common/img/look008.png" title="闭嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look009.png" title="睡">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0010.png" title="大哭">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0011.png" title="尴尬">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0012.png" title="发怒">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0013.png" title="调皮">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0014.png" title="龇牙">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0015.png" title="惊讶">
                    </div>

                    <div class="fl">
                        <img src="common/img/look001.png" title="微笑">
                    </div>
                    <div class="fl">
                        <img src="common/img/look002.png" title="撇嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look003.png" title="色">
                    </div>
                    <div class="fl">
                        <img src="common/img/look004.png" title="发呆">
                    </div>
                    <div class="fl">
                        <img src="common/img/look005.png" title="得意">
                    </div>
                    <div class="fl">
                        <img src="common/img/look006.png" title="流泪">
                    </div>
                    <div class="fl">
                        <img src="common/img/look007.png" title="害羞">
                    </div>
                    <div class="fl">
                        <img src="common/img/look008.png" title="闭嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look009.png" title="睡">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0010.png" title="大哭">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0011.png" title="尴尬">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0012.png" title="发怒">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0013.png" title="调皮">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0014.png" title="龇牙">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0015.png" title="惊讶">
                    </div>

                    <div class="fl">
                        <img src="common/img/look001.png" title="微笑">
                    </div>
                    <div class="fl">
                        <img src="common/img/look002.png" title="撇嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look003.png" title="色">
                    </div>
                    <div class="fl">
                        <img src="common/img/look004.png" title="发呆">
                    </div>
                    <div class="fl">
                        <img src="common/img/look005.png" title="得意">
                    </div>
                    <div class="fl">
                        <img src="common/img/look006.png" title="流泪">
                    </div>
                    <div class="fl">
                        <img src="common/img/look007.png" title="害羞">
                    </div>
                    <div class="fl">
                        <img src="common/img/look008.png" title="闭嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look009.png" title="睡">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0010.png" title="大哭">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0011.png" title="尴尬">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0012.png" title="发怒">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0013.png" title="调皮">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0014.png" title="龇牙">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0015.png" title="惊讶">
                    </div>

                    <div class="fl">
                        <img src="common/img/look001.png" title="微笑">
                    </div>
                    <div class="fl">
                        <img src="common/img/look002.png" title="撇嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look003.png" title="色">
                    </div>
                    <div class="fl">
                        <img src="common/img/look004.png" title="发呆">
                    </div>
                    <div class="fl">
                        <img src="common/img/look005.png" title="得意">
                    </div>
                    <div class="fl">
                        <img src="common/img/look006.png" title="流泪">
                    </div>
                    <div class="fl">
                        <img src="common/img/look007.png" title="害羞">
                    </div>
                    <div class="fl">
                        <img src="common/img/look008.png" title="闭嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look009.png" title="睡">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0010.png" title="大哭">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0011.png" title="尴尬">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0012.png" title="发怒">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0013.png" title="调皮">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0014.png" title="龇牙">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0015.png" title="惊讶">
                    </div>

                    <div class="fl">
                        <img src="common/img/look001.png" title="微笑">
                    </div>
                    <div class="fl">
                        <img src="common/img/look002.png" title="撇嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look003.png" title="色">
                    </div>
                    <div class="fl">
                        <img src="common/img/look004.png" title="发呆">
                    </div>
                    <div class="fl">
                        <img src="common/img/look005.png" title="得意">
                    </div>
                    <div class="fl">
                        <img src="common/img/look006.png" title="流泪">
                    </div>
                    <div class="fl">
                        <img src="common/img/look007.png" title="害羞">
                    </div>
                    <div class="fl">
                        <img src="common/img/look008.png" title="闭嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look009.png" title="睡">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0010.png" title="大哭">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0011.png" title="尴尬">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0012.png" title="发怒">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0013.png" title="调皮">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0014.png" title="龇牙">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0015.png" title="惊讶">
                    </div>

                    <div class="fl">
                        <img src="common/img/look001.png" title="微笑">
                    </div>
                    <div class="fl">
                        <img src="common/img/look002.png" title="撇嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look003.png" title="色">
                    </div>
                    <div class="fl">
                        <img src="common/img/look004.png" title="发呆">
                    </div>
                    <div class="fl">
                        <img src="common/img/look005.png" title="得意">
                    </div>
                    <div class="fl">
                        <img src="common/img/look006.png" title="流泪">
                    </div>
                    <div class="fl">
                        <img src="common/img/look007.png" title="害羞">
                    </div>
                    <div class="fl">
                        <img src="common/img/look008.png" title="闭嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look009.png" title="睡">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0010.png" title="大哭">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0011.png" title="尴尬">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0012.png" title="发怒">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0013.png" title="调皮">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0014.png" title="龇牙">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0015.png" title="惊讶">
                    </div>

                    <div class="fl">
                        <img src="common/img/look001.png" title="微笑">
                    </div>
                    <div class="fl">
                        <img src="common/img/look002.png" title="撇嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look003.png" title="色">
                    </div>
                    <div class="fl">
                        <img src="common/img/look004.png" title="发呆">
                    </div>
                    <div class="fl">
                        <img src="common/img/look005.png" title="得意">
                    </div>
                    <div class="fl">
                        <img src="common/img/look006.png" title="流泪">
                    </div>
                    <div class="fl">
                        <img src="common/img/look007.png" title="害羞">
                    </div>
                    <div class="fl">
                        <img src="common/img/look008.png" title="闭嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look009.png" title="睡">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0010.png" title="大哭">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0011.png" title="尴尬">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0012.png" title="发怒">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0013.png" title="调皮">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0014.png" title="龇牙">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0015.png" title="惊讶">
                    </div>

                    <div class="fl">
                        <img src="common/img/look001.png" title="微笑">
                    </div>
                    <div class="fl">
                        <img src="common/img/look002.png" title="撇嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look003.png" title="色">
                    </div>
                    <div class="fl">
                        <img src="common/img/look004.png" title="发呆">
                    </div>
                    <div class="fl">
                        <img src="common/img/look005.png" title="得意">
                    </div>
                    <div class="fl">
                        <img src="common/img/look006.png" title="流泪">
                    </div>
                    <div class="fl">
                        <img src="common/img/look007.png" title="害羞">
                    </div>
                    <div class="fl">
                        <img src="common/img/look008.png" title="闭嘴">
                    </div>
                    <div class="fl">
                        <img src="common/img/look009.png" title="睡">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0010.png" title="大哭">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0011.png" title="尴尬">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0012.png" title="发怒">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0013.png" title="调皮">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0014.png" title="龇牙">
                    </div>
                    <div class="fl">
                        <img src="common/img/look0015.png" title="惊讶">
                    </div>
                </div>
            </div>
            <div class="bri_bottom_file fl" title="发送文件"></div>
            <input type="file" class="bri_bottom_files" style="display:none;">
            <div class="bri_bottom_iphone fr" title="语音聊天"></div>
            <div class="clear"></div>
            <textarea style="width: 620px;"></textarea>
            <div class="bri_bottom_but fr">发送</div>
            <div class="bri_bottom_empty" style="display:none;">不能发送空白信息</div>
        </div>
    </div>
    <!-- 右边对话框 -->
    <!-- 最右设置框 -->
    <div class="buju_install fr" style="display: none; height: 1333px;">

        <!-- 单聊设置 -->
        <!--<div class="bin_one">
                  <div class="bin_one_face">
                            <img src="common/img/face003.jpg"/>
                        </div>
                        <div class="bin_one_name over">冰雪</div>
              </div>
              <div class="bin_two">
                  <div class="bin_two_font">消息免打扰</div>
                        <div class="bin_two_but">
                            <img src="common/img/butclose.png"/>
                        </div>
              </div>-->
        <!-- 单聊设置 -->
        <!-- 群聊设置 -->
        <div class="bin_four_box">
            <div>
                <div class="bin_three">
                    <input type="text" placeholder="搜索群成员" class="fl">
                    <img src="common/img/seach.png" class="bin_three_seach fr">
                    <img src="common/img/close.png" class="bin_three_close fr" style="display:none">
                </div>
                <div class="bin_four">
                    <div class="fl" onclick="addfris()">
                        <div class="bin_four_add"></div>
                        <div class="bin_four_name over">添加</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face003.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">冰雪</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face001.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">小圣贤庄张三</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face010.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">卖兜的小麦兜</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face016.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">斯塔克</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face017.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">明教教主</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face012.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">BVS</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face005.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">阿卡姆骑士</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face006.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">A.呵呵呵</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face015.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">戴安娜</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face009.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">阿姐</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face004.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">首席铲屎官</div>
                    </div>

                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face016.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">斯塔克</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face017.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">明教教主</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face012.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">BVS</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face005.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">阿卡姆骑士</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face006.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">A.呵呵呵</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face015.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">戴安娜</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face009.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">阿姐</div>
                    </div>
                    <div class="fl">
                        <div class="bin_one_face">
                            <img src="common/img/face004.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_four_name over">首席铲屎官</div>
                    </div>
                    <div class="clear"></div>
                    <div class="bin_four_more"><label>查看更多群成员</label> <img src="common/img/down001.png"></div>
                    <div class="bin_four_border"></div>
                </div>
                <!-- 群聊设置 -->
                <script>
                    $(function (){
                        var iw = $(".bin_one_face").width();
                        var ih = $(".bin_one_face").height();
                        var ib = iw/ih;
                        $(".bin_one_face img").each(function (){
                            var isw=$(this).width();
                            var ish=$(this).height();
                            var isb=isw/ish;
                            if(ib<isb){
                                $(this).css("height",ih);
                                var iwi=ih * isb;
                                var ws= 0 - (iwi - iw) / 2;
                                $(this).css("margin-left",ws);
                            }else{
                                $(this).css("width","100%");
                                var ihe=iw / isb;
                                var hs=0 - (ihe - ih) / 2;
                                $(this).css("margin-top",hs);
                            }

                        })
                    })
                </script>
                <div class="bin_five">
                    <p>群名</p>
                    <div class="bin_five_text fl">单机游戏交流群</div>
                    <input type="hidden" value="单机游戏交流群" class="bin_five_name">
                    <img src="common/img/edit.jpg" class="fl" style="display:none;">
                    <div class="clear"></div>
                    <p>群公告</p>
                    <div class="bin_five_note over3">别忘了今天下午交流群见面会</div>
                    <p>我在本群的昵称</p>
                    <div class="bin_five_text fl">小圣贤庄张三</div>
                    <input type="hidden" value="小圣贤庄张三" class="bin_five_name">
                    <img src="common/img/edit.jpg" class="fl" style="display:none;">
                    <div class="clear"></div>
                    <p>显示群成员昵称</p>
                    <img class="bin_five_butname" src="common/img/butopen.png">
                    <p>消息免打扰</p>
                    <img class="bin_five_but" src="common/img/butclose.png">
                </div>
                <a href=""><div class="bin_six">删除并退出</div></a>
                <div class="bin_note" style="display:none;">
                    <div class="bin_note_title fl">群公告</div>
                    <div class="bin_note_close fr" title="关闭"></div>
                    <div class="clear"></div>
                    <div class="bin_note_detail">
                        <div class="bin_nd_face fl">
                            <img src="common/img/face003.jpg" style="width: 100%;">
                        </div>
                        <div class="bin_nd_font fl">
                            <p>冰雪</p>
                            <p>昨天</p>
                        </div>
                        <div class="clear"></div>
                        <div class="bin_nd_detail">别忘了今天下午交流群见面会</div>
                        <div class="bin_nd_warn">————— 仅群主可编辑 —————</div>
                    </div>
                </div>
                <script>
                    $(function (){
                        var iw = $(".bin_nd_face").width();
                        var ih = $(".bin_nd_face").height();
                        var ib = iw/ih;
                        $(".bin_nd_face img").each(function (){
                            var isw=$(this).width();
                            var ish=$(this).height();
                            var isb=isw/ish;
                            if(ib<isb){
                                $(this).css("height",ih);
                                var iwi=ih * isb;
                                var ws= 0 - (iwi - iw) / 2;
                                $(this).css("margin-left",ws);
                            }else{
                                $(this).css("width","100%");
                                var ihe=iw / isb;
                                var hs=0 - (ihe - ih) / 2;
                                $(this).css("margin-top",hs);
                            }

                        })
                    })
                </script>
            </div>
        </div>
    </div>
    <!-- 最右设置框 -->
    <!-- 添加弹框 -->
    <div class="yinyings" style="display: none; height: 1394px;"></div>
    <div class="buju_add" style="display:none;">
        <div class="ba_left fl">
            <div class="ba_left_seach">
                <input type="text" class="fl" placeholder="搜索">
                <img class="ba_lefts_seach fr" src="common/img/seach.png">
                <img class="ba_lefts_close fr" style="display:none;" src="common/img/close.png">
            </div>
            <div class="ba_left_fri">
                <div class="ba_leftf_scroll" style="position:absolute;right:0px;display:none;"></div>
                <div class="ba_leftf_box">
                    <div>
                        <div class="ba_leftf_first">A</div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face006.jpg">
                            </div>
                            <div class="ba_lfb_font fl">A.呵呵呵</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face007.jpg">
                            </div>
                            <div class="ba_lfb_font fl">A...</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face008.jpg">
                            </div>
                            <div class="ba_lfb_font fl">Angle</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face009.jpg">
                            </div>
                            <div class="ba_lfb_font fl">阿姐</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face005.jpg">
                            </div>
                            <div class="ba_lfb_font fl">阿卡姆骑士</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face010.jpg">
                            </div>
                            <div class="ba_lfb_font fl">安安</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face011.jpg">
                            </div>
                            <div class="ba_lfb_font fl">安好</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                        <div class="ba_leftf_first">B</div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face012.jpg">
                            </div>
                            <div class="ba_lfb_font fl">BVS</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                        <div class="ba_leftf_block">
                            <div class="ba_lfb_face fl">
                                <img src="common/img/face013.jpg">
                            </div>
                            <div class="ba_lfb_font fl">本宝宝</div>
                            <div class="ba_lfb_circle fr"><img src="common/img/circle010.png"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="ba_right fl">
            <div class="buju_add_close" onclick="addclose()"></div>
            <div class="ba_right_top">请勾选需要添加的联系人</div>
            <div class="ba_right_fri">
                <div class="ba_rif_scroll" style="position:absolute;right:0px;display:none;"></div>
                <div class="ba_rif_box">
                    <div></div>
                </div>
            </div>
            <div class="ba_ri_exit fr" onclick="addclose()">取消</div>
            <div class="ba_ri_but fr">确定</div>


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
    <!-- 添加弹框 -->
</div>


</body></html>
