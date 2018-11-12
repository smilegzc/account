<%@ page import="mypackage.*" %>
<%--
  Created by IntelliJ IDEA.
  User: 高子超
  Date: 2018/8/28
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%
    String gukeName = DateFormate.toGb(request.getParameter("gukeName"));
    String gukeCall = DateFormate.toGb(request.getParameter("gukeCall"));
    String saleName = DateFormate.toGb(request.getParameter("saleName"));
    String[] goodsName = new String[9];
    String[] goodsNum = new String[9];
    String[] goodsSale = new String[9];
    int yMoney = 0;
    ypxxop ypop = new ypxxop();
    ypxx yp = null;

    int index = 0;
    for(int i = 1; i<=9; i++) {
        String shotName = DateFormate.toGb(request.getParameter("goodsName" + i));

        if(shotName == null || shotName == "") {
        	break;
        }

        yp = ypop.getByShotName2(shotName);
        if(yp != null) {
            goodsName[index] = yp.getGoodsName();
            goodsNum[index] = DateFormate.toGb(request.getParameter("goodsSum" + i));
            goodsSale[index] = yp.getSale();
            if (!goodsNum[index].equals("") && !goodsSale[index].equals("")) {
                yMoney = yMoney + Integer.valueOf(goodsNum[index]) * Integer.valueOf(goodsSale[index]);
            }
            index++;
        }
    }

    StringBuilder saleInfo = new StringBuilder();
    for(int i = 0; i<9; i++) {
        if(goodsName[i] == null || goodsName[i] == "") break;
        saleInfo.append("<tr>")
                .append("<td>商品名字</td><td><input type=\"text\" name=\"goodsName").append(i+1).append("\" value=\"").append(goodsName[i]).append("\" readonly> </td>")
                .append("<td>商品数量</td><td><input type=\"text\" name=\"goodsNum").append(i+1).append("\" value=\"").append(goodsNum[i]).append("\" readonly> </td>")
                .append("<td>商品单价</td><td><input type=\"text\" name=\"goodsSale").append(i+1).append("\" value=\"").append(goodsSale[i]).append("\" readonly> </td>");

        //<input type="text" value="readonly" readonly>
    }
%>

<html>
<head>
    <title>售货单</title>
</head>
<body>
<div align="center">
    <form method="post" action="ckop.jsp">
        <table border="1">
            <tr>
                <td>顾客姓名</td>
                <td><input type="text" name="gukeName" value=<%=gukeName%> readonly></td>
                <td>顾客电话</td>
                <td><input type="text" name="gukeCall" value=<%=gukeCall%> readonly></td>
                <td>售货员姓名</td>
                <td><input type="text" name="saleName" value=<%=saleName%> readonly></td>
            </tr>
            <%= saleInfo.toString()%>
            <tr>
                <td>应收款</td>
                <td><input type="text" name="yMoney" value=<%=yMoney%> readonly></td>
                <td>实收款</td>
                <td><input type="text" name="sMoney" size="12"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="sub" value="提交"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
