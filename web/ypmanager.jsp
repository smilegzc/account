<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>��Ʒ��Ϣ</title>
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
            if (confirm("�����Ҫɾ��ѡ��ļ�¼��")) {
                document.location.href = "jsop.jsp?op=del&id=" + id;
            }
        }

        function check() {
            if (document.zgform.svalue.value == "") {
                alert("�������ѯ����");
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
        <span class="STYLE6">��Ʒ������Ϣ</span>
                <%
                    String s_type = (String)session.getAttribute("s_usertype");
                    if(s_type.equals("1")) {
                %>
                [<span class="STYLE7" style="cursor:hand;"><a href="addypxx.jsp">������Ʒ��Ϣ</a></span>]
                <%
                    }
                %>
        </span></td>
        </tr>
        <tr>
            <td align="center" valign="middle" bgcolor="#F9FCFF">������д</td>
            <td align="center" valign="middle" bgcolor="#F9FCFF">��Ʒ����</td>
            <%
                if(s_type.equals("1")) {
            %>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">������</td>
            <%
                }
            %>
            <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">�ۻ���</td>
            <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">ʣ������</td>
            <%
                if(s_type.equals("1")) {
            %>
            <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">����</span></td>
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
                    href="ypxxop.jsp?op=del&shotName=<%=yp.getShotName()%>">ɾ��</a> <a
                    href="modypxx.jsp?&shotName=<%=yp.getShotName()%>">�޸� </a> </span></td>
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
