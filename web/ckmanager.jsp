<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%
    String op = request.getParameter("op");
    ArrayList<ckxx> saleTable = null;
    String start = request.getParameter("start");
    String end = request.getParameter("end");
    ckxxop ckop = new ckxxop();
    if (op.equals("sale")) {
        saleTable = ckop.getByData(start, end, null, null, (String)session.getAttribute("name"), (String)session.getAttribute("s_usertype"));
    } else if (op.equals("guke")) {
    	String gukeName = DateFormate.toGb(request.getParameter("name"));
    	String gukeCall = request.getParameter("call");
    	saleTable = ckop.getByData(start, end, gukeName, gukeCall, (String)session.getAttribute("name"), (String)session.getAttribute("s_usertype"));
    }
%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title></title>
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
<table width="450" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc"
       style="font-size:12px">
    <!--DWLayoutTable-->
    <tr>
        <td height="25" colspan="7" align="left" valign="middle" bgcolor="#00cccc"><span
                class="STYLE1"> 商品销售统计</span></td>
    </tr>
    <tr>
        <td align="center" valign="middle" bgcolor="#F9FCFF">售货员姓名</td>
        <td align="center" valign="middle" bgcolor="#F9FCFF">应收款</td>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">实收款</td>
    </tr>
    <%
        ckxx ck;
        HashMap<String, double[]> tableInfo = new HashMap<>();
        if (saleTable != null) {
            for (int i = 0; i < saleTable.size(); i++) {
                ck = saleTable.get(i);
                String salerName = ck.getSalerName();
                double[] money = {Double.valueOf(ck.getyMoney()), Double.valueOf(ck.getsMoney())};

                double[] temp;
                if ((temp = tableInfo.get(salerName)) != null) {
                    temp[0] += money[0];
                    temp[1] += money[1];
                    tableInfo.put(salerName, temp);
                } else {
                    tableInfo.put(salerName, money);
                }
            }

            Iterator iterator = tableInfo.entrySet().iterator();
            double yMoneySum = 0;
            double sMoneySum = 0;
            while (iterator.hasNext()) {
                Map.Entry<String, double[]> entry = (Map.Entry) iterator.next();
                String name = entry.getKey();
                double[] money = entry.getValue();
                double yMoney = money[0];
                double sMoney = money[1];
    %>

    <tr>
        <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=name %></span></td>
        <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=yMoney %></span></td>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span
                class="STYLE4"><%=sMoney %></span></td>
    </tr>

    <%
            yMoneySum += yMoney;
            sMoneySum += sMoney;
        }
    %>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">合计</span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=yMoneySum %></span></td>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span
            class="STYLE4"><%=sMoneySum %></span></td>
    <%
        }
    %>
</table>

<table width="700" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc"
       style="font-size:12px">
    <!--DWLayoutTable-->
    <tr>
        <td height="25" colspan="7" align="left" valign="middle" bgcolor="#00cccc"><span
                class="STYLE1"> 商品销售详情</span></td>
    </tr>
    <tr>
        <td align="center" valign="middle" bgcolor="#F9FCFF">时间</td>
        <td align="center" valign="middle" bgcolor="#F9FCFF">售货员</td>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">顾客姓名</td>
        <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">顾客电话</td>
        <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">应收款</td>
        <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">实收款</td>
    </tr>
    <%
        ckxx ckInfo;
        if (saleTable != null) {
            for (int i = 0; i < saleTable.size(); i++) {
                ckInfo = saleTable.get(i);

    %>
    <tr>
        <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=ckInfo.getSdate() %></span></td>
        <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=ckInfo.getSalerName() %></span>
        </td>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span
                class="STYLE4"><%=ckInfo.getGukeName()%></span></td>
        <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=ckInfo.getGukeCall() %>
        </td>
        <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=ckInfo.getyMoney() %>
        </td>
        <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=ckInfo.getsMoney() %>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>

</body>
</html>
