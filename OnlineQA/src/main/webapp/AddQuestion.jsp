<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/10
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h2 align="center">我要提问</h2>
    <p align="center"><a href="${pageContext.request.contextPath}/findAllQuestions">返回首页</a></p>

    <table align="center">
        <tr>
            <td bgcolor="#00ced1">问题</td>
            <td bgcolor="#00ced1"><input name="title"></td>
        </tr>
        <tr>
            <td bgcolor="#00ced1">问题描述</td>
            <td bgcolor="#00ced1"><textarea name="detailDesc" cols="30" rows="3"></textarea></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><button onclick="addQuestion()">保存问题</button></td>
        </tr>
    </table>
</div>


</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    function addQuestion() {
        var title=$("[name=title]").val();
        var detailDesc=$("[name=detailDesc]").val();
        if (title==""||title==null){
            alert("请输入标题")
            return
        }

        if (detailDesc==""||detailDesc==null){
            alert("请输入问题描述")
            return
        }

        location.href="${pageContext.request.contextPath}/addQuestion?title="+title+"&detailDesc="+detailDesc;
    }
</script>
</html>
