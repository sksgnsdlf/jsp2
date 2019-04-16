<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="name" %>
<%@ attribute name="items" type="java.util.HashMap" %>

<select name="${name}">
	<c:forEach items="${items}" var="item">
		<option value="${item.key}">${item.value}
	</c:forEach>
</select>