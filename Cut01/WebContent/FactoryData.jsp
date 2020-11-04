<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="description" content="このHTMLファイルおよびindex.cssを自由に改変して利用することを許可します"/>
		<meta charset="UTF-8">
		<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0" />
		<style type="text/css">
			#datalist {
				border-collapse: collapse;
			}
			#datalist th, #datalist td {
				border: solid 1px;
				padding: 4px;
			}
			.datarow {
				background: #ffe;
				height: 3.4rem;
			}
			.datarow > td.id a {
				text-decoration: none black;
			}
			.datarow:hover {
				background: #ffa;
				cursor:pointer;
			}
			#table_header {
				background: cyan;
			}
			#help {
				position:absolute;
				right:2px;
				top:3px;
				text-align: center;
			}
			#help a {
				display: block;
				text-decoration:none;
				width:17px;
				height:19px;
				border:solid 1px;
				border-radius:4px;
				background-color:yellow;
				font-size:small;
				transition:all 0.5s ease-out;
				cursor:pointer;
			}
			#help a:hover {
				background-color:tomato;
			}
		</style>
		<title>生産計画データ</title>
	</head>
	<body>
		<h2 id="title">生産計画ビューア</h2>
		<table id="datalist">
			<tr id="table_header">
				<th width=150>データID</th>
				<th width=150>ファイル名</th>
				<th width=500>内容説明</th>
			</tr>
				<tr id="table_header">
				<th width=150>ID000001</th>
				<th width=150><a href="FactorySchedule.jsp">Sampleデータ</a></th>
				<th width=500>生産計画立案のためのサンプルデータ</th>
			</tr>

		</table>
		<!-- ヘルプ画面
			<div id="help"><a href="help/index.html" target="_blank">?</a></div>
			<script src="index.js"></script>
		-->
		<script src="https://cdn.jsdelivr.net/jquery/2.2.4/jquery.min.js"></script>
	</body>
</html>