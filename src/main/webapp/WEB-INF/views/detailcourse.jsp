<%--
  Created by IntelliJ IDEA.
  User: eo77s
  Date: 2024-04-09
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>학기별 상세보기</title>
    <style>
        body {
            padding-top: 10px;
        }

        table {
            width: 70%;
            border-collapse: collapse;
            margin-top: 30px;
            margin-left: 50px;
            text-align: center;
        }
        th, td {
            width: 15%;
            padding: 20px;
        }
    </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/totalcredit">전으로</a>
<table border="1">
    <thead>
    <tr>
        <th>수강년도</th>
        <th>학기</th>
        <th>교과목명</th>
        <th>교과구분</th>
        <th>담당교수</th>
        <th>학점</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${detailCourses}">
        <tr>
            <td><c:out value="${course.year}"/></td>
            <td><c:out value="${course.semester}"/></td>
            <td><c:out value="${course.course_title}"/></td>
            <td><c:out value="${course.course_type}"/></td>
            <td><c:out value="${course.instructor}"/></td>
            <td><c:out value="${course.credit}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
