<%--
  Created by IntelliJ IDEA.
  User: ���ӳ�
  Date: 2018/8/28
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>�ۻ���</title>

    <script language="javascript">
        function check() {
            var myReg = new RegExp("^[0-9]+(\.[0-9]{1,4})?$");
            var identityCard = /^(\d{15}|\d{18})$/;
            var agetest = /^(\d{1,3})$/;
            if (document.ck.goodsName1.value != "" && document.ck.goodsSum1.value == "") {
                alert("����Ƿ���");
                return false;
            }
            if (document.ck.goodsName2.value != "" && document.ck.goodsSum2.value == "") {
                alert("����Ƿ���");
                return false;
            }
            if (document.ck.goodsName3.value != "" && document.ck.goodsSum3.value == "") {
                alert("����Ƿ���");
                return false;
            }
            if (document.ck.goodsName4.value != "" && document.ck.goodsSum4.value == "") {
                alert("����Ƿ���");
                return false;
            }
            if (document.ck.goodsName5.value != "" && document.ck.goodsSum5.value == "") {
                alert("����Ƿ���");
                return false;
            }
            if (document.ck.goodsName6.value != "" && document.ck.goodsSum6.value == "") {
                alert("����Ƿ���");
                return false;
            }
            if (document.ck.goodsName7.value != "" && document.ck.goodsSum7.value == "") {
                alert("����Ƿ���");
                return false;
            }
            if (document.ck.goodsName8.value != "" && document.ck.goodsSum8.value == "") {
                alert("����Ƿ���");
                return false;
            }
            if (document.ck.goodsName9.value != "" && document.ck.goodsSum9.value == "") {
                alert("����Ƿ���");
                return false;
            }
            document.all.regButton.disabled = true;


        }
    </script>
</head>
<body>
<div align="center">
    <form name="ck" method="post" action="addck2.jsp" onSubmit="javascript:return check();">
        <table border="1">
            <tr>
                <td>�˿�����</td>
                <td><input type="text" name="gukeName" size="12"></td>
                <td>�˿͵绰</td>
                <td><input type="text" name="gukeCall" size="12"></td>
                <td>�ۻ�Ա����</td>
                <td><input type="text" name="saleName" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName1" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum1" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName2" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum2" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName3" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum3" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName4" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum4" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName5" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum5" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName6" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum6" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName7" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum7" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName8" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum8" size="12"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsName9" size="12"></td>
                <td>��Ʒ����</td>
                <td><input type="text" name="goodsSum9" size="12"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="sub" value="�ύ"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
