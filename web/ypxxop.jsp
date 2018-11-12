<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="mypackage.*" %>
<%
    String op = DateFormate.toGb(request.getParameter("op"));
    String shotName, goodsName, factory, sale, num;

    ypxxop ypop = new ypxxop();
    if ("add".equals(op)) {
        shotName = DateFormate.toGb(request.getParameter("shotName"));
        goodsName = DateFormate.toGb(request.getParameter("goodsName"));
        factory = DateFormate.toGb(request.getParameter("factory"));
        sale = DateFormate.toGb(request.getParameter("sale"));
        num = DateFormate.toGb(request.getParameter("num"));

        ypop.add(shotName, goodsName, factory, sale, num);
%>
<script language="javascript">
    alert("操作成功");
    document.location.href = "ypmanager.jsp";
</script>

<%
} else if ("mod".equals(op)) {
    shotName = DateFormate.toGb(request.getParameter("shotName"));
    goodsName = DateFormate.toGb(request.getParameter("goodsName"));
    factory = DateFormate.toGb(request.getParameter("factory"));
    sale = DateFormate.toGb(request.getParameter("sale"));
    num = DateFormate.toGb(request.getParameter("num"));

    ypop.update(shotName, goodsName, factory, sale, num);
%>
<script language="javascript">
    alert("操作成功");
    document.location.href = "ypmanager.jsp";
</script>

<%
} else if ("del".equals(op)) {

    String id = DateFormate.toGb((String) request.getParameter("shotName"));


    ypop.delete(id);
%>
<script language="javascript">
    alert("操作成功");
    document.location.href = "ypmanager.jsp";
</script>
<%


    }

%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title></title>
</head>

<body>
</body>
</html>
