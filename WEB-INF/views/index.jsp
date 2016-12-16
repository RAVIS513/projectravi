<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/abstract.jsp">
	<%-- スタイルシートリンク --%>
	<c:param name="addHeadStyleSheet">
		<link rel="stylesheet" type="text/css" href='<c:url value="/css/index.css"></c:url>'>
	</c:param>

	<%-- スクリプトファイルリンク --%>
	<c:param name="addHeadScriptFile">

	</c:param>

	<%-- タイトル --%>
	<c:param name="addHeadTitle">
		Login
	</c:param>

	<%-- 本文 --%>
	<c:param name="addBody">

		<div class="container">
			<form id="loginForm" action="${contextPath}/login" method="post">
				<h2>Please sign in</h2>
				<label for="password" class="sr-only">Password</label>
				<input type="password" id="password" name="password" class="form-control" placeholder="Password">
				<br>
				<button class="btn btn-primary btn-block" type="submit">Sign in</button>
				<br>
				<p style="color:red;">${error}</p>
			</form>
		</div>

	</c:param>
</c:import>