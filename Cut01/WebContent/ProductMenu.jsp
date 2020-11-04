<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<style type="text/css">
		.button{
			display: inlile-block;
			border-radius: 5%;
			font-size: 18pt;
			font-weight: bolder;
			text-align: center;
			cursor: pointer;
			padding: 0;
			background: #808080;
			color: #ffffff;
			line-hight: 1em;
			transition: 0.3s;
			box-hadow: 6px 6px 3px #666666;
			border: 2px solid #000066;
			width: 180px;
			height: 45px;
		}
		.button:hover{
			box-shadows:none;
			color:#000066;
			background:#ff0000;
		}
		</style>
		<title></title>
	</head>
	<body>
		<form action="HeadIndex.jsp">
			<input type="submit" value="生産計画" class="button">
			<input type="submit" value="生産指示" class="button">
		</form>
	</body>
</html>