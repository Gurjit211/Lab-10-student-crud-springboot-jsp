<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student List</title>
</head>
<body>
<h1>Student List</h1>

<a href="/showNewStudentForm">➕ Add New Student</a>
<br><br>

<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Major</th>
        <th>Enrollment Date</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="student" items="${listStudents}">
        <tr>
            <td>${student.id}</td>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>${student.email}</td>
            <td>${student.major}</td>
            <td>${student.enrollmentDate}</td>
            <td>
                <a href="/showFormForUpdate/${student.id}">Update</a> |
                <a href="/deleteStudent/${student.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
