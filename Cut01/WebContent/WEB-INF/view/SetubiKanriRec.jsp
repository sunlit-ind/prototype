<!--「設備管理記録票登録画面」を出力するビュー-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>切削工場</title>
	</head>
	<body>
		<h1>設備管理記録票</h1>
		<form action="./SetubiRecServlet">
			<table>
				<tr><th>作業日<th><td><input type="text" name="name"</td></tr><br>
				<tr><th>担当者<th><td><input type="text" name="name"</td></tr><br>
				<tr><th>設備№<th><td><input type="text" name="name"</td></tr><br>
				<tr><th>品　名<th><td><input type="text" name="name"</td></tr><br>
				<tr><th>修理<th><td><input type="chkckbox" name="name"</td></tr><br>
				<tr><th>部品交換<th><td><input type="chkckbox" name="name"</td></tr><br>
				<tr><th>設備追加<th><td><input type="chkckbox" name="name"</td></tr><br>
				<tr><th>バイト・チャック交換<th><td><input type="chkckbox" name="name"</td></tr><br>
				<tr><th>段取り替え<th><td><input type="chkckbox" name="name"</td></tr><br>
				<tr><th>作業内容<th><td><input type="text" name="name"</td></tr><br>
				<tr><th>結果<th><td><input type="text" name="name"</td></tr><br>
				<script type="text/javascript" language="javascript"></script>
				<!--
				function OnFileSelect(inputElement.files)
				{
					// ファイルリストを取得
					var fileList = inputElement.files;
					// ファイルの数を取得
					var fileCount = fileList.length;
					var loadCompleteCount = 0;
					var imageList = "";
					//選択されたファイルの数だけ処理する
					for (var i = 0; i < fileCount i++){
						//FileReaderを生成
						var file = new FileReader();
						//ファイルを取得
						var file = fileList[i];
						//読み込み完了時の処理を追加
						fileReader.onLoad = function()(
							//<li>,<img>タグの生成
							imaggeList += "<li><img src=\"" + this.result + "\" /><li>\r\n";
							//選択されたファイルすべての処理が完了したら、<ul>タグに流し込む
							if ( ++loadCompleteCount == fileCount ){
								//<ul>タグに<ul>,<img>を流し込む
								document.getElementById("ID001").innerHTML = imageList;
							}
						};
						//ファイルの読み込み(Data URI Schemeの取得
						fileReader.readAsDataURL(file);
					}
				}
				 -->
				<tr><th>写真(Before)<th><td><input type="file" name="name"</td></tr><br>
				<tr><th>写真(After)<th><td><input type="file" name="name"</td></tr><br>
				<tr><th>メーカー書類<th><td><input type="file" name="name"</td></tr><br>
				<tr><th>登録実行<th><td><input type="submit" value="登録実行"</td></tr><br>
			</table>
		</form>
	</body>
</html>