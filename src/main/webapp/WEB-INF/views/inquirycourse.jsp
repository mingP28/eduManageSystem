<%--
  Created by IntelliJ IDEA.
  User: eo77s
  Date: 2024-04-09
  Time: 오후 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>2024년 2학기 신청 조회</title>
    <style>
        body {
            padding-top: 10px;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            margin-top: 50px;
            margin-left: 30px;
            text-align: center;
        }
        th, td {
            width: 22.5%;
            padding: 20px;
        }
    </style>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>수강년도</th>
        <th>학기</th>
        <th>교과목명</th>
        <th>교과구분</th>
        <th>담당교수</th>
        <th>학점</th>
        <!-- 추가적인 열을 필요에 따라 여기에 추가할 수 있습니다 -->
    </tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${addCourses}">
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
<a href="${pageContext.request.contextPath}/">홈으로</a>
</body>
</html>
