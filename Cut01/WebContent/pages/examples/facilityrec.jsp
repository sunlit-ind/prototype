<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<style type="text/css">
			form.cmxform {
				margin:1em 0; padding:0;
				font-size:14px;
			}
			form.cmxform fieldset {
				width:370px;
				border:0;
				border-top:1px solid #c9dca6;
				background:linear-gradient(#c9dca6);
			}
			form.cmxform legend {
				padding:1em 2px 0 2px;
				font-weight:bold;
			}
			form.cmxform em {
				color:#f00;
				background-color:transparent;
				font-weight:normal;
				font-style:normal;
				font-size:.8em;
			}
			form.cmxform label {
				display:block;
				float:left;
				width:120px;
			}
			form.cmxform fieldset ol {
				margin:0;
				padding:0;
			}
			form.cmxform fieldset li {
				list-style:none;
				clear:both;
				margin:0; padding:5px 5px 7px 7px;
				background:linear-gradient(#c9dca6);
			}
			form.cmxform fieldset fieldset {
				border:none;
				background:none;
			}
			form.cmxform fieldset fieldset legend {
				font-weight:normal;
				padding-left:0;
			}
			form.cmxform fieldset fieldset label {
				float:none;
				width:auto;
			}
			form.cmxform .sr {
				position:absolute;
				left:-9999px; top:0;
				width:1px; height:1px;
				overflow:hidden;
			}
		</style>
		<title>設備管理記録票</title>
	</head>

	<body>
		<form class="cmxform" action="#">
			<p><em>*</em>印は必須入力項目です。</p>
			<fieldset>
				<legend>基本情報</legend>
				<ol>
					<li>
						<label for="name">担当者<em>*</em></label>
						<input id="name" />
					</li>
					<li>
						<label for="address1">設備№<em>*</em></label>
						<input id="address1" />
					</li>
					<li>
						<label for="address2">品名</label>
						<input id="address2" />
					</li>
				</ol>
			</fieldset>
			<fieldset>
				<legend>詳細情報</legend>
				<ol>
					<li>
						<fieldset>
							<legend>該当する項目をチェックして下さい。</legend>
							<label for="football"><input id="football" type="checkbox" /> 修理</label>
							<label for="golf"><input id="golf" type="checkbox" /> 部品交換</label>
							<label for="rugby"><input id="rugby" type="checkbox" /> バイト・チャック交換</label>
							<label for="tennis"><input id="tennis" type="checkbox" /> 段取り替え</label>
						</fieldset>
					</li>
					<li>
						<label for="comments">作業内容</label> <textarea id="comments" rows="7" cols="25"></textarea>
					</li>
					<li>
						<label for="comments">作業結果</label> <textarea id="comments" rows="7" cols="25"></textarea>
					</li>
					<li>
						<p>写真(Before)<br /><input type="file" name="filename" /></p>
						<p>写真(After)<br /><input type="file" name="filename" /></p>
						<p>メーカー書類<br /><input type="file" name="filename" /></p>
					</li>
				</ol>
			</fieldset>
			<p><input type="submit" value="登録する" /></p>
		</form>
	</body>
</html>