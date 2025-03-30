<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
  <title>Student Form</title>
</head>
<body>
<h2>Student Form</h2>

<form:form method="POST" modelAttribute="student" action="/saveStudent">
  <form:hidden path="id"/>

  <div>
    First Name:
    <form:input path="firstName"/>
    <form:errors path="firstName" cssStyle="color:red"/>
  </div>
  <br/>

  <div>
    Last Name:
    <form:input path="lastName"/>
    <form:errors path="lastName" cssStyle="color:red"/>
  </div>
  <br/>

  <div>
    Email:
    <form:input path="email"/>
    <form:errors path="email" cssStyle="color:red"/>
  </div>
  <br/>

  <div>
    Major:
    <form:input path="major"/>
    <form:errors path="major" cssStyle="color:red"/>
  </div>
  <br/>

  <div>
    Enrollment Date:
    <form:input path="enrollmentDate" type="date"/>
    <form:errors path="enrollmentDate" cssStyle="color:red"/>
  </div>
  <br/>

  <input type="submit" value="Save"/>
  <a href="/">Cancel</a>
</form:form>
</body>
</html>
