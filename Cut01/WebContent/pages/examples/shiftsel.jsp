<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<style type="text/css">
			.steelblue{
			background-Color:steelblue;
			color:black;
			width: 100px;
			height: 50px;
			}
			.blue{
			background-Color:blue;
			color:red;
			}
			.lightyellow{
			background-Color:lightyellow;
			color:red;
			}
			.yellow{
			background-Color:yellow;
			color:red;
			}
			.gold{
			background-Color:gold;
			color:red;
			}
			.orange{
			background-Color:orange;
			color:red;
			}
			.navy{
			background-Color:navy;
			color:red;
			}
			#valel1{
				boder:1px dashed gray;
				boder-radius:1em;
				background-color:#4682b4;
			}
		</style>
		<script type="text/javascript">
		<!--
		var parantExistanceFlag = true;

		function clickFire(){
			//ウィンドウオブジェクトが存在していない時警告を出してフラグをfalseに
			if (!window.opener || !Object.keys(window.ppener).length){
				window.aleart('親画面が存在しません')
				parantExistanceFlag = false
			}

			//親画面に値を反映
			if(parantExistanceFlag){
				window.opener.document.getElementById("code1").value
				 = document.getElementById("searchCode").value
			}
			window.close();
		}
		-->
		</script>

		<title>切削工場</title>
	</head>
	<body>
		<form>
			<p>
				<input type="button" value="夜勤" style="background-color:steelblue"
				onClick="cangeBoxcolor('#4682b4');">

				<input type="button" value="夜勤残業" style="background-color:blue">
				<input type="button" value="日勤" style="background-color:lightyellow">
				<input type="button" value="日勤残業" style="background-color:yellow">
				<input type="button" value="1:00〜17:20" style="background-color:gold">
				<input type="button" value="20:00まで" style="background-color:orange">
				<input type="button" value="切替" style="background-color:navy">
			</p>
		</form>
	</body>
</html>