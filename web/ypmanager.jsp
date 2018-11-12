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

        .STYLE6 {
            color: #FF0000
        }

        .STYLE7 {
            font-size: 12px
        }

        -->
    </style>
    <script language="javascript">
        function del(id) {
            if (confirm("您真的要删除选择的记录吗？")) {
                document.location.href = "jsop.jsp?op=del&id=" + id;
            }
        }

        function check() {
            if (document.zgform.svalue.value == "") {
                alert("请输入查询内容");
                return false;
            }
        }

    </script>
</head>

<body>
<form name="zgform" action="ypmanager.jsp" method="post" onsubmit="javascript:return check();">
    <table width="550" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc"
           style="font-size:12px">
        <!--DWLayoutTable-->
        <tr bgcolor="#00CCCC">
            <td height="25" colspan="9" align="left" valign="middle"><span class="STYLE1">
        <span class="STYLE6">商品基本信息</span>
                <%
                    String s_type = (String)session.getAttribute("s_usertype");
                    if(s_type.equals("1")) {
                %>
                [<span class="STYLE7" style="cursor:hand;"><a href="addypxx.jsp">新增商品信息</a></span>]
                <%
                    }
                %>
        </span></td>
        </tr>
        <tr>
            <td align="center" valign="middle" bgcolor="#F9FCFF">名称缩写</td>
            <td align="center" valign="middle" bgcolor="#F9FCFF">商品名称</td>
            <%
                if(s_type.equals("1")) {
            %>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">进货价</td>
            <%
                }
            %>
            <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">售货价</td>
            <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">剩余数量</td>
            <%
                if(s_type.equals("1")) {
            %>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">操作</span></td>
            <%
                }
            %>
        </tr>
        <%
            ypxxop ypop = new ypxxop();
            String op = DateFormate.toGb(request.getParameter("op"));
            String svalue = DateFormate.toGb(request.getParameter("svalue"));
            ArrayList al;
            if ("search".equals(op)) {
                al = ypop.getByShotName(svalue);
            } else {
                al = ypop.getypxxbyall();
            }
            ypxx yp;
            for (int i = 0; i < al.size(); i++) {
                yp = (ypxx) al.get(i);

        %>
        <tr>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=yp.getShotName() %></span></td>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=yp.getGoodsName() %></span>
            </td>
            <%
                if(s_type.equals("1")) {
            %>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span
                    class="STYLE4"><%=yp.getFactory() %></span></td>
            <%
                }
            %>
            <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=yp.getSale() %>
            </td>
            <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=yp.getNum() %>
            </td>
            </span></td>
            <%
                if(s_type.equals("1")) {
            %>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><a
                    href="ypxxop.jsp?op=del&shotName=<%=yp.getShotName()%>">删除</a> <a
                    href="modypxx.jsp?&shotName=<%=yp.getShotName()%>">修改 </a> </span></td>
            <%
                }
            %>
        </tr>
        <%
            }

        %>
    </table>
    <input name="op" type="hidden" value="search"/>
</form>
</body>
</html>
