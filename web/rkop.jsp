<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
	rkxxop rkop = new rkxxop();

	StringBuilder goodsName = new StringBuilder();
	StringBuilder goodsNum = new StringBuilder();
	String temp;
	for(int i = 1; i <= 9; i++) {
		temp = DateFormate.toGb(request.getParameter("goodsName" + i));
		if(temp == null || temp.equals("")) {
			break;
		}
		goodsName.append(temp).append(",");
		goodsNum.append(DateFormate.toGb(request.getParameter("goodsSum" + i))).append(",");
	}
	rkop.add(goodsName.toString(), goodsNum.toString());
%>
<script language="javascript">
    alert("操作成功");
    document.location.href="addrk.jsp";
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title> </title>
</head>

<body>
</body>
</html>
