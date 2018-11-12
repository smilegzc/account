<%@ page contentType="text/html; charset=gb2312" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>销售统计</title>
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
            if(document.opform.start.value==""){
                alert("请输入起始时间");
                return false;
            }
            if(document.opform.end.value==""){
                alert("请输入终止时间");
                return false;
            }
            if(document.opform.name.value=="" && document.opform.call.value==""){
                alert("顾客姓名和顾客电话请至少输入一项");
                return false;
            }

            document.all.regButton.disabled = true;


        }
    </script>
</head>

<body>
<form name="opform" method="post" action="ckmanager.jsp" onSubmit="javascript:return check();">
    <table width="551" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#00cccc" style="font-size:12px">
        <!--DWLayoutTable-->
        <tr>
            <td height="25" colspan="2" align="left" valign="middle" bgcolor="#00cccc"><span class="STYLE3">销售查询</span></td>
        </tr>

        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">起始时间</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="start" type="text" id="start" /></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">终止时间</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="end" type="text" id="end" /></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">顾客姓名</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="name" type="text" id="name" /></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">顾客电话</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="call" type="text" id="call" /></td>
        </tr>
    </table>



    <table width="551" border="0" cellpadding="0" cellspacing="0" align="center">
        <!--DWLayoutTable-->
        <tr>
            <td width="551" height="30" align="center" valign="middle"><input name="regButton" type="submit" id="regButton" value="查询" /></td>
        </tr>
    </table>
    <input type="hidden" name="op" value="guke" />



</form>
</body>
</html>
