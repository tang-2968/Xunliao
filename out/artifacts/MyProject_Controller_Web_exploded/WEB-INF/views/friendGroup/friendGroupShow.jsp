<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-17
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><head>
    <meta charset="utf-8">
    <title>新的朋友</title>
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
        $(window).resize(function(){
            res();
            scrolls();
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
            $(".bcen_box").height(winds - 62);
            $(".buju_right").width(windw - 310);
            $(".bri_bottom").width(windw - 310);
        }

        $(".bcen_friends").mouseenter(function (){
            $(this).not(".bcen_background").css("background-color","#ddd");
        })
        $(".bcen_friends").mouseleave(function (){
            $(this).not(".bcen_background").css("background-color","#e7e8e9");
        })

        $(".bcen_friends").click(function (){
            $(this).removeAttr("style");
            $(this).addClass("bcen_background");
            $(".bcen_friends").not(this).removeClass("bcen_background");
            if(!$(this).hasClass("bcen_new")){
                $(".bri_detail").css("display","block");
                $(".bri_top").css("display","none");
            }else{
                $(".bri_detail").css("display","none");
                $(".bri_top").css("display","block");
            }
            /*bcen_new*/
        })

    })
</script></head>


<body style="">
<div class="buju">
    <!-- 最左侧功能图标 -->
    <div class="buju_left fl" style="height: 1366px;">
        <div class="bleft_face fl">
            <img src="common/img/face001.jpg" style="width: 100%; margin-top: 0px;">
        </div>
        <div class="bleft_iconone fl">
            <a href="index.html"><img src="common/img/chat010.png" width="100%"></a>
        </div>
        <div class="bleft_iconnum">1</div>
        <div class="bleft_iconone fl">
            <a href="friends.html"><img src="common/img/chat021.png" width="100%"></a>
        </div>
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

            $(".bri_deb_two").eq(0).click(function (){
                $(this).removeClass("bri_deb_tip");
                $(this).find("label").css("display","none");
                $(".bri_deb_input").attr("type","text");
                $(".bri_deb_input").focus();
            })
            $(".bri_deb_input").blur(function (){
                var inputs = $(this).val();
                $(".bri_deb_two").eq(0).find("label").css("display","block");
                if(inputs != ""){
                    $(".bri_deb_two").eq(0).css("width","fit-content");
                    $(".bri_deb_two").eq(0).css("padding-right","2px");
                    $(".bri_deb_two").eq(0).find("label").html(inputs);

                }else{
                    $(".bri_deb_two").eq(0).find("label").html("点击添加备注");
                }
                $(".bri_deb_two").eq(0).addClass("bri_deb_tip");

                $(".bri_deb_input").attr("type","hidden");
                $(".bri_deb_input").focus();
            })
        })
    </script>
    <!-- 最左侧功能图标 -->
    <!-- 中间功能列表-->
    <div class="buju_center fl" style="height: 1366px;">
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
        <div class="bcen_scroll" style="position: absolute; right: 0px; top: 62px; display: block; height: 261px;"></div>
        <div class="clear"></div>
        <div class="bcen_box" style="height: 1304px;">
            <div class="bcen_jilu">
                <div class="bcen_first">新的朋友</div>
                <div class="bcen_friends bcen_new" style="border-bottom:1px #dcdbda solid;">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/newfriend.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">新的朋友</div>
                </div>
                <div class="bcen_first">A</div>
                <div class="bcen_friends" style="background-color: rgb(231, 232, 233);">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face006.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">A.呵呵呵</div>
                </div>
                <div class="bcen_friends" style="background-color: rgb(231, 232, 233);">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face007.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">A...</div>
                </div>
                <div class="bcen_friends" style="background-color: rgb(231, 232, 233);">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face008.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">Angle</div>
                </div>
                <div class="bcen_friends" style="background-color: rgb(231, 232, 233);">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face009.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">阿姐</div>
                </div>
                <div class="bcen_friends" style="background-color: rgb(231, 232, 233);">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">阿卡姆骑士</div>
                </div>
                <div class="bcen_friends" style="background-color: rgb(231, 232, 233);">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face010.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">安安</div>
                </div>
                <div class="bcen_friends bcen_background">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face011.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">安好</div>
                </div>
                <div class="bcen_borders"></div>
                <div class="bcen_first">B</div>
                <div class="bcen_friends" style="background-color: rgb(231, 232, 233);">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face012.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">BVS</div>
                </div>
                <div class="bcen_friends" style="background-color: rgb(231, 232, 233);">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face013.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">本宝宝</div>
                </div>
                <div class="bcen_friends">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face014.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">毕业了</div>
                </div>
                <div class="bcen_friends">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face003.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">冰雪</div>
                </div>
                <div class="bcen_borders"></div>
                <div class="bcen_first">D</div>
                <div class="bcen_friends">
                    <div class="bcen_friends_face fl">
                        <img src="common/img/face015.jpg" style="width: 100%; margin-top: 0px;">
                    </div>
                    <div class="bcen_friends_font fl">戴安娜</div>
                </div>
                <script>
                    $(function (){
                        var image_widths=$(".bcen_friends_face").width();
                        var image_heights=$(".bcen_friends_face").height();
                        var image_bis=image_widths/image_heights;
                        $(".bcen_friends_face img").each(function (){
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
    <!-- 中间功能列表-->
    <!-- 右边好友详情 -->
    <div class="buju_right fl" style="height: 1366px; width: 670px;">
        <div class="bri_top" style="display: none;">
            <div class="bri_top_font fl">
                新的朋友
            </div>
            <a href="javascript:void(0);">
                <img src="common/img/more.png" class="bri_top_more fr">
            </a>
            <div class="clear"></div>
        </div>
        <div class="bri_detail" style="display: block;">
            <div class="bri_detail_one">
                <div class="bri_deb_left fl">
                    <div class="bri_deb_name fl over">阿卡姆骑士</div>
                    <div class="bri_deb_sex fl">
                        <img src="common/img/man.jpg">
                    </div>
                    <div class="bri_deb_sign fl">我是二筒</div>
                    <div class="clear"></div>
                </div>
                <div class="bri_deb_face fr">
                    <img src="common/img/face005.jpg" style="width: 100%; margin-top: 0px;">
                </div>
            </div>
            <div class="bri_detail_two">
                <div class="bri_deb_one fl">备&nbsp;&nbsp;&nbsp;注</div>
                <div class="bri_deb_two bri_deb_tip fl">
                    <label>点击添加备注</label>
                    <input type="hidden" class="bri_deb_input">
                </div>
                <div class="clear"></div>
                <div class="bri_deb_one fl">地&nbsp;&nbsp;&nbsp;区</div>
                <div class="bri_deb_two fl">山东 济南</div>
                <div class="clear"></div>
                <div class="bri_deb_one fl">微信号</div>
                <div class="bri_deb_two fl">Arkham_Knight117</div>
            </div>
            <a href="index.html"><div class="bri_detail_but">发消息</div></a>
        </div>
        <script>
            $(function (){
                var img_width = $(".bri_deb_face").width();
                var img_height = $(".bri_deb_face").height();
                var img_bi=img_width/img_height;
                $(".bri_deb_face img").each(function (){
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
            })
        </script>
    </div>
    <!-- 右边好友详情 -->


    <!-- 添加弹框 -->
    <div class="yinyings" style="display: none; height: 1366px;"></div>
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
