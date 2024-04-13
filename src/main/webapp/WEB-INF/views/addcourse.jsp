
<%--
  Created by IntelliJ IDEA.
  User: eo77s
  Date: 2024-04-09
  Time: 오후 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>2024년 2학기 수강 신청</title>
    <style>
        .formtable {
            width:500px;
            border: 1px solid #a5a5b7;
            margin:50px;
            padding:10px;
        }

        .label {
            text-align: right;
            vertical-align:top;
            padding: 10px;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
            width: 150px;
        }

        .control {
            margin-left:10px;
            width:300px;
            border-width: 1px;
            padding: 2px;
        }

        input[type=submit] {
            display:block;
            width:50%;
            margin:0 auto;
        }

        input[type=submit]:hover {
            background-color: #e2eae3;
        }

        .error {
            font-size: small;
            color:red;
            margin-left:10px;
        }
    </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/">홈으로</a>
<sf:form method="post" action="${pageContext.request.contextPath}/completeadd" modelAttribute="course">
    <table class="formtable">
        <tr>
            <td class="label">수강년도</td>
            <td>
                <sf:select path="year" class="control">
                    <c:forEach var="i" begin="2024" end="2030">
                        <option value="${i}">${i}</option>
                    </c:forEach>
                </sf:select>
                <br/>
                <sf:errors path="year" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">학기</td>
            <td>
                <sf:select path="semester" class="control">
                    <option value="1">1</option>
                    <option value="2" selected>2</option>
                </sf:select>
                <br/>
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
            <td>
                <sf:select path="credit" class="control">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </sf:select>
                <br/>
                <sf:errors path="credit" class="error" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="신청하기"/></td>
        </tr>
    </table>
</sf:form>
</body>
</html>
