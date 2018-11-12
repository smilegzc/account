<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>增加员工</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px}
-->
</style>
<script language="javascript">
 	function check(){
		var myReg=new RegExp("^[0-9]+(\.[0-9]{1,4})?$");
		var identityCard = /^(\d{15}|\d{18})$/;
		var agetest=/^(\d{1,3})$/;
		if(document.opform.name.value==""){
			alert("请输入用户名！");
			return false;
		}
		if(document.opform.phone.value==""){
			alert("请输入电话！");
			return false;
		}
		if(document.opform.username.value==""){
			alert("请输入账号！");
			return false;
		}
        if(document.opform.password.value==""){
            alert("请输入密码！");
            return false;
        }
	   document.all.regButton.disabled = true;
		 
	 	
	}
</script>
</head>

<body>
<form name="opform" method="post" action="pxxop.jsp" onSubmit="javascript:return check();">
    <table width="551" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#00cccc" style="font-size:12px">
    <!--DWLayoutTable-->
    <tr>
      <td height="25" colspan="2" align="left" valign="middle" bgcolor="#00cccc"><span class="STYLE3">员工信息</span></td>
    </tr>

    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">姓名</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="name" type="text" id="name" /></td>
    </tr>
    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">电话</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="phone" type="text" id="phone" /></td>
    </tr>
    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">账号</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="username" type="text" id="username" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">密码</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="password" type="text" id="password" /></td>
    </tr>
  </table>
  
 

  <table width="551" border="0" cellpadding="0" cellspacing="0" align="center">
    <!--DWLayoutTable-->
    <tr>
      <td width="551" height="30" align="center" valign="middle"><input name="regButton" type="submit" id="regButton" value="注册" /></td>
    </tr>
  </table>
   <input type="hidden" name="op" value="add" />
 
 

</form>
</body>
</html>
