<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>员工信息管理</title>
    <style type="text/css">
        <!--
        .STYLE1 {
            font-size: 14px;
            font-weight: bold;
        }

        .STYLE4 {
            font-size: 14px
        }

        .STYLE5 {
            color: #FF0000
        }

        .STYLE6 {
            font-size: 12px;
            color: #FFFFFF;
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
<form name="zgform" action="pxxmanager.jsp" method="post" onsubmit="javascript:return check();">
    <table width="550" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc"
           style="font-size:12px">
        <!--DWLayoutTable-->
        <tr>
            <td height="25" colspan="6" align="left" valign="middle" bgcolor="#00cccc">
          <span class="STYLE1">
              <span class="STYLE5">员工信息管理
                {<span class="STYLE6" style="cursor:hand;"><a href="addpxx.jsp">新增员工信息</a></span>}
              </span>
          </span>
            </td>
        </tr>
        <tr>
            <td width="121" align="center" valign="middle" bgcolor="#F9FCFF">姓名</td>
            <td width="149" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">电话</td>
            <td width="74" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">操作</span></td>
        </tr>
        <%
            pxxop pxop = new pxxop();
            String op = DateFormate.toGb(request.getParameter("op"));
            String svalue = DateFormate.toGb(request.getParameter("svalue"));
            ArrayList al;
            if ("search".equals(op)) {
                al = pxop.getPxx2(svalue);
            } else {
                al = pxop.getPxx();
            }
            pxx px;
            for (int i = 0; i < al.size(); i++) {
                px = (pxx) al.get(i);

        %>
        <tr>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=px.getName() %></span></td>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=px.getPhone() %></span></td>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><a
                    href="pxxop.jsp?op=del&name=<%=DateFormate.toUtf8String(px.getName())%>">删除</a> <a href="disppxx.jsp?name=<%=DateFormate.toUtf8String(px.getName())%>"> </a></span>
            </td>
        </tr>
        <%
            }

        %>
    </table>
    <input name="op" type="hidden" value="search"/>
</form>
</body>
</html>
