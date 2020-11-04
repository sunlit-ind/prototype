<!-- 設備管理記録登録確認画面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%
    User registerUser = (User) session.getAttribute("registerUser");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>設備管理記録登録</title>
	</head>
	<body>
    	<p>下記の管理記録を登録します</p>
    	<p>
        	作業日:<%=registerUser.getId()%><br> 担当者:<%=registerUser.getName()%><br>
        	設備№:<%=registerUser.getId()%><br> 品名:<%=registerUser.getName()%><br>
        	対応区分:<%=registerUser.getId()%><br>
        	作業内容:<%=registerUser.getId()%><br>
        	結果:<%=registerUser.getId()%><br>
        	写真(Before):<%=registerUser.getId()%><br>
        	写真(After):<%=registerUser.getId()%><br>
        	メーカー書類:<%=registerUser.getId()%><br>
    	</p>
    	<a href="/UserRegistration/RegisterUser">戻る</a>
    	<a href="/UserRegistration/RegisterUser?action=done">登録</a>
	</body>
</html>