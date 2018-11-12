<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>商品信息</title>
    <style type="text/css">
        <!--
        .STYLE1 {
            font-size: 14px;
            font-weight: bold;
        }

        .STYLE4 {
            font-size: 14px
        }

        -->
    </style>
    <script language="javascript">
        function check() {
            var myReg = new RegExp("^[0-9]+(\.[0-9]{1,4})?$");
            var identityCard = /^(\d{15}|\d{18})$/;
            var agetest = /^(\d{1,3})$/;
            if (document.opform.shotName.value == "") {
                alert("请输入名称缩写！");
                return false;
            }
            if (document.opform.goodsName.value == "") {
                alert("请输入商品名称！");
                return false;
            }
            if (document.opform.sale.value == "") {
                alert("请输入售货价！");
                return false;
            }
            if (document.opform.factory.value == "") {
                alert("请输入进货价！");
                return false;
            }
            document.all.regButton.disabled = true;


        }
    </script>
</head>
<%
    String shotName = DateFormate.toGb(request.getParameter("shotName"));
    ypxxop ypop = new ypxxop();
    ypxx yp = ypop.getByShotName2(shotName);
%>
<body>
<form name="opform" method="post" action="ypxxop.jsp" onSubmit="javascript:return check();">
    <table width="545" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#00cccc"
           style="font-size:12px">
        <!--DWLayoutTable-->
        <tr>
            <td height="25" colspan="2" align="left" valign="middle" bgcolor="#00cccc"><span
                    class="STYLE3">商品基本信息</span></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">名称缩写</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="shotName" type="text" id="shotName"
                                                                      value="<%=yp.getShotName()%>"/></td>
        </tr>
        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">商品名称</td>
            <td width="427" align="left" valign="middle" bgcolor="#F9FCFF"><input name="goodsName" type="text"
                                                                                  id="goodsName"
                                                                                  value="<%=yp.getGoodsName()%>"/></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">进货价</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="factory" type="text" id="factory"
                                                                      value="<%=yp.getFactory()%>"/></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">售货价</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="sale" type="text" id="sale"
                                                                      value="<%=yp.getSale()%>"/></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">剩余数量</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="num" type="text" id="num"
                                                                      value="<%=yp.getNum()%>"/></td>
        </tr>

    </table>


    <table width="551" border="0" cellpadding="0" cellspacing="0" align="center">
        <!--DWLayoutTable-->
        <tr>
            <td width="551" height="30" align="center" valign="middle"><input name="regButton" type="submit"
                                                                              id="regButton" value="保存"/>
                &nbsp;
            </td>
        </tr>
    </table>
    <input type="hidden" name="op" value="mod"/>


</form>
</body>
</html>
