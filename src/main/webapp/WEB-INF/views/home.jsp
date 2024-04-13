<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nykim
  Date: 2022/12/13
  Time: 12:55 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학사정보 시스템</title>
    <style>
        body {
            padding-top: 40px;
        }

        .navbar {
            position: fixed;
            width: 100%;
            background-color: #f3f3f5;
            top: 0;
            left: 0;
            z-index: 1000;
            text-align: right;
        }

        .nav-item {
            margin-right: 50px;
            list-style-type: none;
            font-size: 18px; /* 글꼴 크기 조정 */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 50px;
            text-align: center;
        }
        th, td {
            border: none;
            width: 33.3%;
            padding: 20px;
        }
        th:not(:last-child),
        td:not(:last-child) {
            border-right: 1px solid black; /* 마지막 열을 제외한 우측 선 추가 */
        }

        tr:not(:last-child) th,
        tr:not(:last-child) td {
            border-bottom: 1px solid black; /* 마지막 행을 제외한 하단 선 추가 */
        }
    </style>
</head>
<body>

<div class="navbar">
  <ul class="nav">
    <li class="nav-item">
      <c:if test="${pageContext.request.userPrincipal.name != null}">
        <a href="javascript:document.getElementById('logout').submit()">Logout</a>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name == null}">
        <a href="javascript:document.getElementById('login').submit()">Login</a>
      </c:if>
    </li>
  </ul>
</div>
<form id="login" action="<c:url value="/login" /> " method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

<form id="logout" action="<c:url value="/logout" /> " method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<%--  <p>--%>
<%--    <a href="${pageContext.request.contextPath}/totalcredit">학년별 이수 학점 조회--%>
<%--  </p>--%>
<%--  <p>--%>
<%--    <a href="${pageContext.request.contextPath}/addcourse">수강 신청하기</a>--%>
<%--  </p>--%>
<%--  <p>--%>
<%--    <a href="${pageContext.request.contextPath}/inquirycourse">수강 신청 조회</a>--%>
<%--  </p>--%>

<table border="1">
    <thead>
    <tr>
        <th>학년별 이수 학점 조회</th>
        <th>수강 신청하기</th>
        <th>수강 신청 조회</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>
            <button onclick="window.location.href='<c:url value="/totalcredit"/>';">submit</button>
        </td>
        <td>
            <button onclick="window.location.href='<c:url value="/addcourse"/>';">submit</button>
        </td>
        <td>
            <button onclick="window.location.href='<c:url value="/inquirycourse"/>';">submit</button>
        </td>
    </tr>
    </tbody>
</table>

</body>
</html>
