<%@ page contentType="text/html; charset=gb2312" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>logo</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
-->
</style>
<script language="javascript">
	function exit(){
		if(confirm("您真的要退出本系统吗？")){
			parent.document.location.href="login.html";
		}
	}
	function modipass(){
		parent.mainFrame.document.location.href="modipass.jsp";
	}
</script>
</head>

<body leftmargin="0" topmargin="0" bgcolor="#F7F7F7">

<table width="1024" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="80" colspan="3" valign="top" background="img/logo.jpg"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  <tr>
    <td width="193" height="20" align="left" valign="bottom" background="img/bg_titlebarr.gif" class="STYLE1" style="border-bottom:1px solid #9EC3F2"><img src="img/topicon.gif" width="7" height="7" /> 尊敬的 [<%=session.getAttribute("name") %>] 您好!</td>
    <td width="388" align="left" valign="bottom" background="img/bg_titlebarr.gif" style="border-bottom:1px solid #9EC3F2"><span class="STYLE1">今天是：
      <script language="JavaScript"  src="inc/date.js" type="text/javascript"></script>
    </span></td>
    <td width="443" align="left" valign="bottom" background="img/bg_titlebarr.gif" class="STYLE1" style="border-bottom:1px solid #9EC3F2" onclick="javasciprt:modipass();" style="cursor:hand;">[修改个人密码]</span> <span onclick="javasciprt:exit();" style="cursor:hand;">[退出系统]</span></td>
  </tr>
</table>
</body>
</html>
<iframe  width="0" height="0"></iframe>
