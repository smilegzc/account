<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>商品采购统计</title>
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
</head>

<body>
<%
    String start = request.getParameter("start");
    String end = request.getParameter("end");
    rkxxop rkop = new rkxxop();
    rkxx rk;
    ArrayList<rkxx> tables = rkop.getByDate(start, end);

    for(int i = 0; i<tables.size(); i++) {
    	rk = tables.get(i);
%>
    <table width="500" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc"
           style="font-size:12px">
        <!--DWLayoutTable-->
        <tr>
            <td height="25" colspan="7" align="left" valign="middle" bgcolor="#00cccc"><span
                    class="STYLE1"><%=rk.getDate()%></span></td>
        </tr>
        <tr>
            <td width="161" height="25" align="center" valign="middle" bgcolor="#F9FCFF">商品名称</td>
            <td width="105" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">入库数量</td>
        </tr>
       <%
           String[] names = rk.getGoodsName().split(",");
           String[] nums = rk.getGoodsNum().split(",");
           for(int j = 0; j<names.length; j++) {
       %>
        <tr>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=names[j] %></span></td>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=nums[j] %></span></td>
        </tr>
        <%
            }
        %>
    </table>
<%
    }
%>
</body>
</html>
