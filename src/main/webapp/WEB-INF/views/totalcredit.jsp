<%--
  Created by IntelliJ IDEA.
  User: eo77s
  Date: 2024-04-08
  Time: 오후 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>학기별 이수 학점</title>
    <style>
        body {
            padding-top: 10px;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 30px;
            margin-left: 50px;
            text-align: center;
        }
        th, td {
            width: 20%;
            padding: 20px;
        }
        tfoot td {
            font-weight: bold; /* tfoot의 td에 글꼴 굵기를 적용 */
        }
    </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/">홈으로</a>
    <table border="1">
        <thead>
        <tr>
            <th>수강년도</th>
            <th>학기</th>
            <th>취득학점</th>
            <th>상세보기</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="course" items="${totalCredits}">
            <tr>
                <td><c:out value="${course.year}"/></td>
                <td><c:out value="${course.semester}"/></td>
                <td><c:out value="${course.totalCredit}"/></td>
                <td><a href="<c:url value='/detail/${course.year}/${course.semester}'/>">상세보기</a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="1">총계</td>
            <td></td>
            <td>${totalSum}</td>
            <td></td>
        </tr>
        </tfoot>
    </table>
</body>
</html>
