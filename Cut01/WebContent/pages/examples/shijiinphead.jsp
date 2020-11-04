<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<style type="text/css">
			.selectbox{
				width: 20%;
				margin: 10px;
				position:absolute;
			}
			select{
				-webkit-appearance: none;
				appearance:none;
				width:16%;
				padding: 1px 4px;
				boder: #f5f5f5 1px solid;
				boder-radius: 0;
				background: #fff;
			}
		</style>
		<title>切削工場</title>
<!--
		<link rel="stylesheet" href="./css/style.css">
-->
	</head>
	<body>
		<form>
			<!-- 日付入力 -->
			<input type="date"></input>
			<!-- 工場選択 -->
			<script type="text/javascript">
				function FC(WO){
					if (WO.FSGo.selectedIndex == 0){
						parent.f2.location.href = "shijiblank.jsp"
					}
					if (WO.FSGo.selectedIndex == 1){
						parent.f2.location.href = "shijiinpsouth.jsp"
					}
					if (WO.FSGo.selectedIndex == 2){
						parent.f2.location.href = "shijiinpnorth.jsp"
					}
					if (WO.FSGo.selectedIndex == 3){
						parent.f2.location.href = "shijiinpwest.jsp"
					}
				}
			</script>
			<select name="FSGo" onChange="FC(this.form)">
				<option value="" hidden>選択してください</option>
				<option value="south">南工場</option>
				<option value="north">北工場</option>
				<option value="west">西工場</option>
			</select>
			作業指示書
		</form>
	</body>
</html>