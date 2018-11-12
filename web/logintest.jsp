<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*" %>
<%
    String username = DateFormate.toGb(request.getParameter("username"));
    String password = DateFormate.toGb(request.getParameter("password"));
    String type = DateFormate.toGb(request.getParameter("type"));
    LoginManager lm = new LoginManager();
    String name = lm.testUser(username, password, type);
    if (name == null) {
%>
<script language="javascript">
    alert("用户名或密码错误，或者没有这个用户的注册资料！");
    document.location.href = "login.html";
</script>
<%
    } else {
        session.setAttribute("s_usertype", type);
        session.setAttribute("name", name);
        session.setAttribute("s_username", username);
        session.setAttribute("s_userpasword", password);
        response.sendRedirect("mainframe.jsp");
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>登录</title>
</head>

<body>
</body>
</html>
