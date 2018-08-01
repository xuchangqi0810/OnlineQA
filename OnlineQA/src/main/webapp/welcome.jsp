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
</head>
<body>
    <div align="center">
        <h2 align="center">在线问答</h2>
        <p align="center"><a href="AddQuestion.jsp">我要提问</a></p>

        <table align="center">
            <tr>
                <td bgcolor="#00ced1">序号</td>
                <td bgcolor="#00ced1">问题</td>
                <td bgcolor="#00ced1">回答次数</td>
                <td bgcolor="#00ced1">最后修改</td>
            </tr>
            <c:forEach items="${allQuestions}" varStatus="idxStatus" var="item">
                <tr class="tr">
                    <td class="td">${idxStatus.index+1}</td>
                    <td class="td"><a href="${pageContext.request.contextPath}/findByIdAnswers?qid=${item.id}">${item.title}</a></td>
                    <td class="td">${item.answerCount}</td>
                    <td class="td">${item.lastModified}</td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".tr:odd").css("backgroundColor","#9AFF02");
    })
</script>
</html>
