<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));

ZgManager zm=new ZgManager();
  if("modipass".equals(op)){
	String oldp=DateFormate.toGb((String)session.getAttribute("s_userpasword"));
	String old=DateFormate.toGb(request.getParameter("old"));
	String newp=DateFormate.toGb(request.getParameter("newp"));
	String usertype=DateFormate.toGb((String)session.getAttribute("s_usertype"));
	String userid=(String)session.getAttribute("name");
	String username = DateFormate.toGb(request.getParameter("newn);

	if(!oldp.equals(old)){
		%>
		<script language="javascript">
		alert("原始密码错误");
		document.location.href="modipass.jsp";
		</script>
		<%			
	}else{
		zm.setPassword(userid,username,usertype,newp);
	}
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="modipass.jsp";
	</script>
	<%	
} 

 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>人员处理</title>
</head>

<body>
</body>
</html>
