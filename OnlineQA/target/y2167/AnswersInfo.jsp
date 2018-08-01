<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/10
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>

    <style type="text/css">
        .td{
            background-color: cadetblue;
        }
    </style>

</head>
<body>
    <div align="center">
        <table align="center">
            <tr>
                <td>问题：</td>
                <td class="td">${byIdAnswers.title}</td>
            </tr>
            <tr>
                <td>问题描述：</td>
                <td class="td">${byIdAnswers.detailDesc}</td>
            </tr>
            <c:forEach items="${byIdAnswers.answerss}" var="item" >
            <tr>
                <td >网友回答：</td>
                <td class="td">${item.ansDate} <br> ${item.ansContent}</td>
            </tr>
            </c:forEach>
            <tr>
                <td>我来回答：</td>
                <td><textarea name="ansContent" cols="30" rows="4"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><button onclick="addAnswer()">我要提交</button><a href="${pageContext.request.contextPath}/findAllQuestions">返回首页</a></td>
            </tr>

        </table>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    function addAnswer() {
        var ansContent=$("[name=ansContent]").val();
        var qid=${byIdAnswers.id};
        if(ansContent==null||ansContent==""){
            alert("请输入回答信息");
            return
        }
        location.href="${pageContext.request.contextPath}/addAnswer?ansContent="+ansContent+"&qid="+qid;
    }
</script>


</html>
