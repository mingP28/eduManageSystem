
<%--
  Created by IntelliJ IDEA.
  User: eo77s
  Date: 2024-04-09
  Time: 오후 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>2024년 2학기 수강 신청</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/main.css" >
</head>
<body>
<sf:form method="post" action="${pageContext.request.contextPath}/completeadd" modelAttribute="course">
    <table class="formtable">
        <tr>
            <td class="label">수강년도</td>
            <td><sf:input class="control" type="int" path="year"/>  <br/>
                <sf:errors path="year" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">학기</td>
            <td><sf:input class="control" type="int" path="semester"/> <br/>
                <sf:errors path="semester" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">교과코드</td>
            <td><sf:input class="control" type="text" path="course_code"/> <br/>
                <sf:errors path="course_code" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">교과목명</td>
            <td><sf:input class="control" type="text" path="course_title"/> <br/>
                <sf:errors path="course_title" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">교과구분</td>
            <td><sf:input class="control" type="text" path="course_type"/> <br/>
                <sf:errors path="course_type" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">교수</td>
            <td><sf:input class="control" type="text" path="instructor"/> <br/>
                <sf:errors path="instructor" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">학점</td>
            <td><sf:input class="control" type="int" path="credit"/> <br/>
                <sf:errors path="credit" class="error" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="신청하기"/></td>
        </tr>
    </table>
</sf:form>
<a href="${pageContext.request.contextPath}/">홈으로</a>
</body>
</html>
