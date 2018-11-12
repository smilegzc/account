<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
	ckxxop ckop = new ckxxop();

	String gukeName = DateFormate.toGb(request.getParameter("gukeName"));
	String gukeCall = DateFormate.toGb(request.getParameter("gukeCall"));
	String saleName = DateFormate.toGb(request.getParameter("saleName"));
	String yMoney = DateFormate.toGb(request.getParameter("yMoney"));
	String sMoney = DateFormate.toGb(request.getParameter("sMoney"));
	StringBuilder goodsName = new StringBuilder();
	StringBuilder goodsNum = new StringBuilder();
	StringBuilder goodsSale = new StringBuilder();
	String temp;
	for(int i = 1; i <= 9; i++) {
		temp = DateFormate.toGb(request.getParameter("goodsName" + i));
		if(temp == null || temp.equals("")) {
			break;
		}
		goodsName.append(temp).append(",");
		goodsNum.append(DateFormate.toGb(request.getParameter("goodsNum" + i))).append(",");
		goodsSale.append(DateFormate.toGb(request.getParameter("goodsSale" + i))).append(",");
	}

	ckop.add(saleName, gukeName,gukeCall, goodsName.toString(), goodsNum.toString(), goodsSale.toString(), yMoney, sMoney);
	%>
	<script language="javascript">
	alert("²Ù×÷³É¹¦");
	document.location.href="addck.jsp";
	</script>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title> </title>
</head>

<body>
</body>
</html>
