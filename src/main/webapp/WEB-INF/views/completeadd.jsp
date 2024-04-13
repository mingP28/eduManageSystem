<%--
  Created by IntelliJ IDEA.
  User: eo77s
  Date: 2024-04-09
  Time: 오후 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>신청완료</title>
</head>
<body>
${course.year}년 ${course.semester}학기 ${course.course_title} 이(가) 신청되었습니다.
<br/>
<a href="${pageContext.request.contextPath}/inquirycourse">내역조회</a>
<a href="${pageContext.request.contextPath}/">홈으로</a>
</body>
</html>
