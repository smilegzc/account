<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>管理员界面</title>
    <style type="text/css">
        <!--
        .STYLE1 {
            font-size: 12px
        }

        .STYLE3 {
            font-size: 12px;
            font-weight: bold;
        }

        -->
    </style>
    <script language="javascript">
        function changeColor() {
            document.getElementById("no1").style.background = "#F9FCFF";
            document.getElementById("no2").style.background = "#F9FCFF";
            document.getElementById("no3").style.background = "#F9FCFF";
        }

        function changeFrame(filename) {
            parent.mainFrame.location.href = filename;
        }
    </script>
</head>

<body leftmargin="0" topmargin="0" bgcolor="#F7F7F7">
<table width="200" border="0" cellpadding="0" cellspacing="0" style="border-right:1px solid #9EC3F2">
    <!--DWLayoutTable-->
    <tr>
        <td height="13" colspan="3" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
    <tr>
        <td width="11" height="104">&nbsp;</td>
        <td width="175" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#00cccc" style="font-size:12px">
                <!--DWLayoutTable-->

                <tr>
                    <td width="173" height="25" align="center" valign="middle" bgcolor="#006699" class="STYLE3" id="no3"
                        style="cursor:hand;" onmousedown="javascript:changeColor();this.style.background='#FFFFFF'">
                        货物管理系统
                    </td>
                </tr>
                <tr>
                    <td id="no3" height="25" align="center" valign="middle" bgcolor="#00CCCC" class="STYLE1"
                        onmousedown="javascript:changeColor();this.style.background='#FFFFFF'"
                        onclick="javascript:changeFrame('ypmanager.jsp');" style="cursor:hand;">商品信息管理
                    </td>
                </tr>
                <tr>
                    <td id="no3" height="25" align="center" valign="middle" bgcolor="#00CCCC" class="STYLE1"
                        onmousedown="javascript:changeColor();this.style.background='#FFFFFF'"
                        onclick="javascript:changeFrame('pxxmanager.jsp');" style="cursor:hand;"><span class="STYLE1"
                                                                                                       style="cursor:hand;">员工信息管理</span>
                    </td>
                </tr>

                <tr>
                    <td id="no3" height="25" align="center" valign="middle" bgcolor="#00CCCC" class="STYLE1"
                        onmousedown="javascript:changeColor();this.style.background='#FFFFFF'"
                        onclick="javascript:changeFrame('addck.jsp');" style="cursor:hand;">商品销售管理
                    </td>
                </tr>
                <tr>
                    <td id="no3" height="25" align="center" valign="middle" bgcolor="#00CCCC" class="STYLE1"
                        onmousedown="javascript:changeColor();this.style.background='#FFFFFF'"
                        onclick="javascript:changeFrame('ckserach.jsp');" style="cursor:hand;"><span class="STYLE1"
                                                                                                      style="cursor:hand;">商品销售统计</span>
                    </td>
                </tr>
                <tr>
                    <td id="no3" height="25" align="center" valign="middle" bgcolor="#00CCCC" class="STYLE1"
                        onmousedown="javascript:changeColor();this.style.background='#FFFFFF'"
                        onclick="javascript:changeFrame('gukesearch.jsp');" style="cursor:hand;"><span class="STYLE1"
                                                                                                     style="cursor:hand;">顾客购买统计</span>
                    </td>
                </tr>
                <tr>
                    <td id="no3" height="25" align="center" valign="middle" bgcolor="#00CCCC" class="STYLE1"
                        onmousedown="javascript:changeColor();this.style.background='#FFFFFF'"
                        onclick="javascript:changeFrame('addrk.jsp');" style="cursor:hand;">商品进货管理
                    </td>
                </tr>
                <tr>
                    <td id="no3" height="25" align="center" valign="middle" bgcolor="#00CCCC" class="STYLE1"
                        onmousedown="javascript:changeColor();this.style.background='#FFFFFF'"
                        onclick="javascript:changeFrame('rksearch.jsp');" style="cursor:hand;">商品进货统计
                    </td>
                </tr>

                <tr>
                    <td id="no3" height="25" align="center" valign="middle" bgcolor="#00CCCC" class="STYLE1"
                        onmousedown="javascript:changeColor();this.style.background='#FFFFFF'"
                        onclick="javascript:changeFrame('modipass.jsp');" style="cursor:hand;">密码修改
                    </td>
                </tr>

                <tr>
            </table>
        </td>
        <td width="13"></td>
    </tr>
    <tr>
        <td height="483"></td>
        <td></td>
        <td></td>
    </tr>
</table>
</body>
</html>
