<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left2.aspx.cs" Inherits="left2" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
     <link rel="stylesheet" href="skin/css/iconfont.css" type="text/css" />
    <link rel="stylesheet" href="skin/css/nav.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language='javascript'>var curopenItem = '1';</script>
<script language="javascript" type="text/javascript" src="js/jquery.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/nav.js"></script><base target="main" />
</head>
<body target="main">
    <form id="form1" runat="server">
    <div>
 

        <div class="bg clearfloat">
	<!---左边菜单栏---->
	<div class="menu" style="height: 1016.33px;">
		<ul>
			<li><span></span>个人信息</li>
			<li><a href="yhmod.aspx" class="on">修改密码</a></li>
			<li><a href="yonghuzhuce_updt2.aspx" >我的资料</a></li>
		</ul>
		<ul>
			<li><span></span>订单中心</li>
			<li><a href="goupiaojilu_list2.aspx">购票记录</a></li>
			<li><a href="tuipiaojilu_list2.aspx">退票记录</a></li>
			
		</ul>
		<ul>
			<li><span></span>我的收藏</li>
			<li><a href="shoucangjilu_list2.aspx">我的收藏</a></li>
		</ul>
	</div>
	<!--end---->
	<!----右边内容部分--->
	<div class="menu-right"><!-- End Template component://ecsite/widget/userCenter/accountCenterTitle.ftl -->
<!-- Begin Template component://ecsite/widget/userCenter/userInfo/userData.ftl -->
    <style>
        .menu {
                min-height: 1000px;
                width: 210px;
                background-color:#3897d8;
                float: left;
                margin-top: 15px;
            }
            .menu ul {
                padding-top: 20px;
                padding-bottom: 20px;
                border-bottom: 1px solid white;
            }
            .menu > ul:first-child li:first-child span {
                background-position: 0 -1089px;
                background-image: url(skin/images/frame/vipPic1-s79177fa464.png);
                background-repeat: no-repeat;
                margin-left: -12px;
                margin-right: 12px;
                margin-bottom: -4px;
                display: inline-block;
                height: 20px;
                width: 20px;
            }
           .menu > ul:nth-child(2) li:first-child span {
            background-position: 0 -1109px;
            background-image: url(skin/images/frame/vipPic1-s79177fa464.png);
            background-repeat: no-repeat;
            margin-left: -12px;
            margin-right: 12px;
            margin-bottom: -4px;
             display: inline-block;
                height: 20px;
                width: 20px;
}
           .menu ul li a:hover, .menu ul li a.on {
            background-color: white;
            background-image: url(skin/images/frame/tx-56.png);
            background-repeat: no-repeat;
            background-position: 0 0;
            color: #000;
        }
        .menu ul li a {
            color: white;
            display: inline-block;
            height: 40px;
            width: 75%;
            line-height: 40px;
            padding-left: 50px;
        }
        a:hover {
            color: #009eda;
        }
        a {
            color: #555555;
            text-decoration: none;
            background-repeat: no-repeat;
            outline: none;
        }
            .menu > ul:nth-child(3) li:first-child span {
                background-position: 0 -880px;
                 background-image: url(skin/images/frame/vipPic1-s79177fa464.png);
                    background-repeat: no-repeat;
                    margin-left: -12px;
                    margin-right: 12px;
                    margin-bottom: -4px;
                     display: inline-block;
                        height: 20px;
                        width: 20px;
            }
            .menu ul li:first-child {
                padding-left: 29px;
                color: white;
                margin-bottom: 15px;
                font-size: 16px;
                font-weight: bold;
            }
            ul li {
                list-style: none;
            }
            user agent stylesheet
            li {
                display: list-item;
                text-align: -webkit-match-parent;
            }
    	.update{
			width: 70%;
		    border: 1px solid #ddd;
		    height: 25px;
		    padding-left: 5px;
		    font-size: 1.4rem;
		    border-radius: 3px;
		    color: #355976;
		}
		.resetpage:hover{
			cursor: pointer;
		}
		.sure{
			cursor: pointer;
		}
    </style>
</div>
<script type="text/javascript">
    seajs.use(["layer"], function () {
        var flag = false;
        $(".sbbb span").on("click", function (e) {
            e.stopPropagation();
            var t = $(this);
            if (t.hasClass("resetpage")) {
                var a = $(".updateSpan");
                var b = $(".update");
                a.addClass("hide");
                b.removeClass("hide");
                $(".sbbb span").removeClass("hide");
                $(this).addClass("hide");

            } else if (t.hasClass("sure")) {
                if ($("#allForm").isValid(function (v) {
					if (v) {
						var idNumber = $("#idNumber").val();
						var telphone = $("#telphone").val();
						if (telphone.length != 11) {
							layer.msg('手机号长度不对', {
                    icon: 2,
                    time: 2000 //2秒关闭（如果不配置，默认是3秒）
                });
							return;
                }
						if (idNumber.length != 15 && idNumber.length != 18) {
							layer.msg('身份证长度不对', {
                    icon: 2,
                    time: 2000 //2秒关闭（如果不配置，默认是3秒）
                });
							return;
                }
						var c = $(".updateSpan");
						var d = $(".update");
						c.addClass("hide");
						d.removeClass("hide");
						var form = $(".searchcontainer");
						var param = serializeContainer(form);
						var layerone = layer.load('正在提交..');
						$.post("/ecsite/control/updateSelfInformation", param, function (result) {
							layer.close(layerone);
							if (result.errorCode == "0") {
								layer.open({
                    content: '修改成功',
                    btn: '确认',
                    yes: function () {
                    // 										reloadPage();
										location.href = location.href;
                }
                });
                } else {
								layer.alert(result.errorContent || "修改信息失败!!", { icon: 2 }, function (index) {
									layer.close(index);
                });
                }

                }, "json");

                } else {
						layer.open({
                    content: $('.msg-box .n-msg').html(),
                    btn: '现在修改'
                });
                }
                }));
            }

        });


        $("#sign").on("click", function (e) {
            e.stopPropagation();
            var t = $(this);
            var pocTypeId = t.attr("data_pocTypeId");
            var siteId = t.attr("data_siteId");
            var data = { pocTypeId: pocTypeId, siteId: siteId };
            $.post("/ecsite/control/everydayRegister", data, function (result) {
                if (result.errorCode == "0") {
                    window.location.reload();//刷新页面
                } else {
                    layer.alert(result.errorContent || "签到积分失败!", function (index) {
                        layer.close(index);//关闭layer
                    });
                }
            }, "json");
        });
    });
</script><!-- End Template component://ecsite/widget/userCenter/userInfo/userData.ftl -->
<!-- Begin Template component://ecsite/widget/userCenter/accountCenterTitleEnd.ftl -->
	</div>
  
	
    </div>
    </form>
</body>
</html>

