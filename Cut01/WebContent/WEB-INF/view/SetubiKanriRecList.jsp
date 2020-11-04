<!--「設備管理記録票一覧画面」を出力するビュー-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>設備管理記録票一覧</title>
	</head>
	<body>

	<h2>設備管理記録票一覧</h2>

 		<table border="1">
 			<!-- border 外枠線の幅 -->

			<tr bgcolor="#afeeee">     <!-- th 表の横一行 -->
			<th></th>                  <!-- th 見出し -->
			<th>作業日</th>
			<th>担当者</th>
			<th>設備№</th>
			<th>品名</th>
			<th>対応区分</th>
			<th>作業内容</th>
			<th>結果</th>
			<th>写真(Befor)</th>
			<th>写真(After)</th>
			<th>メーカー書類</th>

			<!-- c:forEach 繰り返し処理 -->
			<c:forEach var="item" items="${list}" varStatus="num">
			<!-- 「var」 itemから取り出した要素を格納する変数名 -->
			<!-- 「items」 ループする配列(list) -->
			<!-- 「varStatus」 現在のループの状態を表すステータス変数 -->

			<tr>
				<td><input type="radio" name="radio" value="${num.index}"></td>
				<td>${item.s_id}</td>
				<td>${item.name }</td>
				<td>${item.name_kana }</td>
				<td>${item.sex }</td>
				<td>${item.clas }</td>
				<td>${item.depart_name }</td>
				<td>${item.retired }</td>
			</tr>
			</c:forEach>
		</table>

		<!-- ボタン生成 -->
		<input type="submit" value="削除" onclick="delete_test();">
		<input type="button" value="登録" onclick="location.href='DepartServlet'">
		<input type="submit" value="更新" >
		<input type="button" value="戻る" onclick="location.href='kintaikanrisystem.jsp'">
	</body>
</html>