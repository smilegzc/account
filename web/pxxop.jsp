<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*" %>
<%
    String op = DateFormate.toGb(request.getParameter("op"));
    String name, phone, username, password;

    pxxop pxop = new pxxop();
    if ("add".equals(op)) {
        name = DateFormate.toGb(request.getParameter("name"));
        phone = DateFormate.toGb(request.getParameter("phone"));
        username = DateFormate.toGb(request.getParameter("username"));
        password = DateFormate.toGb(request.getParameter("password"));
        pxop.add(name, phone, username, password);
%>
<script language="javascript">
    alert("�û�ע��ɹ�");
    document.location.href = "pxxmanager.jsp";
</script>

<%
} else if ("mod".equals(op)) {
    name = DateFormate.toGb(request.getParameter("name"));
    phone = DateFormate.toGb(request.getParameter("phone"));
    username = DateFormate.toGb(request.getParameter("username"));
    password = DateFormate.toGb(request.getParameter("password"));
    pxop.update(name, phone, username, password);
%>
<script language="javascript">
    alert("������Ϣ�޸ĳɹ�");
    document.location.href = "modpxx.jsp";
</script>

<%
} else if ("del".equals(op)) {

    name = request.getParameter("name");
    pxop.delete(name);
%>
<script language="javascript">
    alert("�����ɹ�");
    document.location.href = "pxxmanager.jsp";
</script>
<%
} else if ("login".equals(op)) {

    username = DateFormate.toGb(request.getParameter("username"));
    password = DateFormate.toGb(request.getParameter("password"));

    LoginManager lm = new LoginManager();
    String gname = lm.testUser(username, password, "2");
    if (gname == null) {
%>
<script language="javascript">
    alert("�û�����������󣬻���û������û���ע�����ϣ�");
    document.location.href = "index.jsp";
</script>
<%
} else {
    session.setAttribute("s_usertype", "2");
    session.setAttribute("name", gname);
    session.setAttribute("s_username", username);
    session.setAttribute("s_userpasword", password);
%>
<script language="javascript">
    alert("��½�ɹ���");
    document.location.href = "index.jsp";
</script>
<%


        }


    }

%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title></title>
</head>

<body>
</body>
</html>
