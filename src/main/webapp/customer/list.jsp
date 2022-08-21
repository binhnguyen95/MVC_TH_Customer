<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
  <a href="${pageContext.request.contextPath}/customer?action=create">Create new customer</a>
</p>
<table border="1px">
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Address</th>
    <td>Edit</td>
    <td>Delete</td>
  </tr>
  <c:forEach var="customer" items="${dskh}">
    <tr>
      <td>${customer.id}</td>
      <td>${customer.name}</td>
      <td>${customer.address}</td>
      <td>${customer.email}</td>
      <td><a href="/customers?action=edit&id=${customer.id}">edit</a></td>
      <td><a href="/customers?action=delete&id=${customer.id}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>