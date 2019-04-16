<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<fmt:setLocale value="kr" />
<fmt:bundle basename="com.edu.bundle.msg">
<fmt:message key="greeting">
	<fmt:param>${param.userid}</fmt:param><br>
</fmt:message>
	<h4><fmt:message key="id"/><input type="text" name="userid"></h4>
	<form>
	<button><fmt:message key="btnInsert"/></button>
	</form>
</fmt:bundle>

