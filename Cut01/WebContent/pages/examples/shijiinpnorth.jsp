<!--「生産指示登録画面」北工場（シミュレーション）」を出力するビュー-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<style type="text/css">
			/* テーブル全体の装飾*/
			table.ShiftSel{
				boder-collapse: collapse;   /* テーブルの罫線を重ねて一本に見せる*/
				boder: 2px solid green;     /* テーブルの外側の枠線（2pxで緑色） */
				table-layout: fixed;        /* テーブルの列幅を固定レイアウト化する */
			}
			/* セル共通の装飾 */
			table.ShiftSel th, td{
				border: 2px solid silver;   /* テーブルの内側の罫線（1pxでシルバーの実線）*/
				align: center;              /* セル内中央揃え*/
				line-height: 0.5px;         /* 行間の指定*/
			}
			/* 見出しセルの装飾 */
			table.ShiftSel th{
				background-color: #ffffff;  /* 背景色（淡いシルバー）*/
				padding: 0.3em;             /* 内側の余白(0.3文字分)*/
				height: 25px;               /* 高さ*/
				line-height: 0.5px;         /* 行間の指定*/
			}
			table.ShiftSel td{
				background-color: #ffffff;  /* 背景色（淡いシルバー）*/
				padding: 0.3em;             /* 内側の余白(0.3文字分) */
				align: center;              /* セル内中央揃え*/
			}
			table.ShiftSel p{
				align: center;              /* セル内中央揃え*/
			}
			/* リンクの上にマウスが載った際の装飾（背景色だけ指定）*/
			a:hover { background-color: #fcfcaa; }
			/* ボタンのサイズ*/
			.btn-square{
				display: inline-block;
				padding: 0.2em 0.5em;
				text-decoration: none;
				border-bottom: soild 4px #627295;
				boder-radius: 3px
			}
			/* 凡例*/
			div p{
				display: inline-block;
				width: 90px;
				padding: 2px;
				border: 1px solid #ccc;
				font-size: 0.75em;
				font-weight: bold;
				text-align: center;
			}
		</style>
		<script type="text/javascript">
		/* セルの背景色を変える*/
			function night(idname){     /* 夜勤*/
				var obj = document.getElementById(idname);
				obj.style.backgroundColor = '#00bfff';
			}
			function nightOver(idname){ /* 夜勤残業*/
				var obj = document.getElementById(idname);
				obj.style.backgroundColor = '#6495ed';
			}
			function day(idname){       /* 日勤*/
				var obj = document.getElementById(idname);
				obj.style.backgroundColor = '#ffff00';
			}
			function day_Over(idname){  /* 日勤残業*/
				var obj = document.getElementById(idname);
				obj.style.backgroundColor = '#ffd700';
			}
			function range_17(idname){  /* 11:00〜17：20*/
				var obj = document.getElementById(idname);
				obj.style.backgroundColor = '#ffa500';
			}
			function range_20(idname){  /* 20:00まで*/
				var obj = document.getElementById(idname);
				obj.style.backgroundColor = '#daa520';
			}
			function kirikae(idname){   /* 切替*/
				var obj = document.getElementById(idname);
				obj.style.backgroundColor = '#7b68ee';
			}
			function tujyo(idname){     /* 通常*/
				var obj = document.getElementById(idname);
				obj.style.backgroundColor = '#ffffff';
			}
		</script>
		<title>切削工場</title>
	</head>
	<body>
		<form>
			<div>
				<p style="background-color:#00bfff">夜勤</p>
				<p style="background-color:#6495ed">夜勤残業</p>
				<p style="background-color:#ffff00">日勤</p>
				<p style="background-color:#ffd700">日勤残業</p>
				<p style="background-color:#ffa500">11:00〜17:20</p>
				<p style="background-color:#daa520">20:00まで</p>
				<p style="background-color:#ffffff">通常枠</p>
				<p style="background-color:#7b68ee">切替</p>
			</div>
		</form>
		<table class="ShiftSel" width="335%">
		<!-- 1行目タイトル（設備名） -->
			<tr>
				<th class="ShiftSel" id="status">
					<p>D5-08 255</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status');" />通常
				</th>
				<th class="ShiftSel" id="status_1">
					<p>SND-10 134</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_1');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_1');" />通常
				</th>
				<th class="ShiftSel" id="status_2">
					<p>LG-7-01 100</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_2');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_2');" />通常
				</th>
				<th class="ShiftSel" id="status_3">
					<p>LG-7-03 102</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_3');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_3');" />通常
				</th>
				<th class="ShiftSel" id="status_4">
					<p>LG-7-05 104</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_4');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_4');" />通常
				</th>
				<th class="ShiftSel" id="status_5">
					<p>LG-7-08  107</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_5');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_5');" />通常
				</th>
				<th class="ShiftSel" id="status_6">
					<p>LG-7-07  106</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_6');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_6');" />通常
				</th>
				<th class="ShiftSel" id="status_7">
					<p>LG-7-09  108</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_7');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_7');" />通常
				</th>
				<th class="ShiftSel" id="status_8">
					<p>G5UP-006  006</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_8');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_8');" />通常
				</th>
				<th class="ShiftSel" id="status_9">
					<p>A-12-02 113</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_9');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_9');" />通常
				</th>
				<th class="ShiftSel" id="status_10">
					<p>A-12-01  112</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_10');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_10');" />通常
				</th>
				<th class="ShiftSel" id="status_11">
					<p>M06D 298</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_11');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_11');" />通常
				</th>
				<th class="ShiftSel" id="status_12">
					<p>M06J 299</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_12');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_12');" />通常
				</th>
				<th class="ShiftSel" id="status_13">
					<p>5J-03 152</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_13');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_13');" />通常
				</th>
				<th class="ShiftSel" id="status_14">
					<p>5V-03A 156</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_14');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_14');" />通常
				</th>
				<th class="ShiftSel" id="status_15">
					<p>5V-03B 156</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_15');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_15');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（2行目） -->
				<td id="target">
					<p>442PP MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target');" />通常
				</td>
				<td id="target_1">
					<p>168SP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_1');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_1');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_1');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_1');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_1');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_1');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_1');" />通常
				</td>
				<td id="target_2">
					<p>03M COVER LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_2');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_2t');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_2');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_2');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_2');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_2');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_2');" />通常
				</td>
				<td id="target_3">
					<p >03P COVER LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_3');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_3t');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_3');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_3');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_3');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_3');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_3');" />通常
				</td>
				<td id="target_4">
					<p>03J PLUG LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_4');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_4');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_4');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_4');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_4');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_4');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_4');" />通常
				</td>
				<td id="target_5">
					<p >D2803-57130 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_5');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_5');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_5');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_5');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_5');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_5');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_5');" />通常
				</td>
				<td id="target_6">
					<p>D2803-57133 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_6');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_6');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_6');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_6');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_6');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_6');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_6');" />通常
				</td>
				<td id="target_7">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_7');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_7');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_7');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_7');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_7');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_7');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_7');" />通常
				</td>
				<td id="target_8">
					<p>JGB31-000010-B LN0</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_8');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_8');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_8');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_8');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_8');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_8');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_8');" />通常
				</td>
				<td id="target_9">
					<p>0-S2312-60010-A L1.L2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_9');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_9');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_9');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_9');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_9');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_9');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_9');" />通常
				</td>
				<td id="target_10">
					<p>0900-0203A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_10');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_10');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_10');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_10');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_10');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_10');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_10');" />通常
				</td>
				<td id="target_11">
					<p>0-S2312-60010-A L1.L2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_11');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_11');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_11');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_11');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_11');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_11');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_11');" />通常
				</td>
				<td id="target_12">
					<p>0-S2312-60010-A LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_12');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_12');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_12');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_12');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_12');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_12');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_12');" />通常
				</td>
				<td id="target_13">
					<p>09093-02711 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_13');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_13');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_13');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_13');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_13');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_13');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_13');" />通常
				</td>
				<td id="target_14">
					<p>1151-A61-1661 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_14');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_14');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_14');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_14');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_14');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_14');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_14');" />通常
				</td>
				<td id="target_15">
					<p>1722 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_15');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_15');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_15');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_15');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_15');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_15');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_15');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（3行目） -->
				<td id="target_16">
					<p>442PP MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_16');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_16');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_16');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_16');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_16');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_16');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_16');" />通常
				</td>
				<td id="target_17">
					<p>168SP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_17');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_17');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_17');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_17');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_17');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_17');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_17');" />通常
				</td>
				<td id="target_18">
					<p>03M COVER LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_18');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_18');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_18');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_18');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_18');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_18');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_18');" />通常
				</td>
				<td id="target_19">
					<p>03P COVER LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_19');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_19');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_19');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_19');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_19');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_19');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_19');" />通常
				</td>
				<td id="target_20">
					<p>03J PLUG LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_20');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_20');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_20');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_20');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_20');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_20');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_20');" />通常
				</td>
				<td id="target_21">
					<p>D2803-57130 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_21');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_21');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_21');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_21');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_21');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_21');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_21');" />通常
				</td>
				<td id="target_22">
					<p>D2803-57133 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_22');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_22');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_22');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_22');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_22');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_22');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_22');" />通常
				</td>
				<td id="target_23">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_23');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_23');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_23');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_23');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_23');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_23');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_23');" />通常
				</td>
				<td id="target_24">
					<p>JGB31-000010-B LN0</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_24');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_24');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_24');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_24');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_24');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_24');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_24');" />通常
				</td>
				<td id="target_25">
					<p>0-S2312-60010-A L1.L2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_25');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_25');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_25');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_25');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_25');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_25');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_25');" />通常
				</td>
				<td id="target_26">
					<p>0900-0203A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_26');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_26');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_26');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_26');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_26');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_26');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_26');" />通常
				</td>
				<td id="target_27">
					<p>0-S2312-60010-A L1.L2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_27');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_27');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_27');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_27');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_27');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_27');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_27');" />通常
				</td>
				<td id="target_28">
					<p>0-S2312-60010-A LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_28');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_28');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_28');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_28');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_28');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_28');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_28');" />通常
				</td>
				<td id="target_29">
					<p>09093-02711 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_29');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_29');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_29');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_29');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_29');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_29');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_29');" />通常
				</td>
				<td id="target_30">
					<p>1151-A61-1661 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_30');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_30');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_30');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_30');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_30');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_30');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_30');" />通常
				</td>
				<td id="target_31">
					<p>1722 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_31');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_31');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_31');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_31');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_31');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_31');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_31');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（4行目） -->
				<td id="target_32">
					<p>310SP MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_32');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_32');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_32');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_32');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_32');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_32');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_32');" />通常
				</td>
				<td id="target_33">
					<p>158PP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_33');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_33');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_33');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_33');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_33');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_33');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_33');" />通常
				</td>
				<td id="target_34">
					<p>03H PLUG LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_34');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_34');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_34');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_34');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_34');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_34');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_34');" />通常
				</td>
				<td id="target_35">
					<p>03P COVER LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_35');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_35');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_35');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_35');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_35');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_35');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_35');" />通常
				</td>
				<td id="target_36">
					<p>03J PLUG LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_36');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_36');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_36');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_36');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_36');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_36');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_36');" />通常
				</td>
				<td id="target_37">
					<p>D2803-57130 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_37');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_37');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_37');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_37');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_37');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_37');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_37');" />通常
				</td>
				<td id="target_38">
					<p>D3808-07135 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_38');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_38');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_38');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_38');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_38');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_38');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_38');" />通常
				</td>
				<td id="target_39">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_39');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_39');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_39');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_39');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_39');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_39');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_39');" />通常
				</td>
				<td id="target_40">
					<p>JGB31-000010-B LN0</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_40');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_40');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_40');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_40');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_40');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_40');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_40');" />通常
				</td>
				<td id="target_41">
					<p>0-S2312-60010-A L1.L2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_41');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_41');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_41');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_41');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_41');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_41');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_41');" />通常
				</td>
				<td id="target_42">
					<p>0900-0203A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_42');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_42');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_42');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_42');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_42');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_42');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_42');" />通常
				</td>
				<td id="target_43">
					<p>0-S2312-60010-A L1.L2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_43');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_43');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_43');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_43');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_43');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_43');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_43');" />通常
				</td>
				<td id="target_44">
					<p>0-S2312-60010-A LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_44');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_44');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_44');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_44');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_44');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_44');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_44');" />通常
				</td>
				<td id="target_45">
					<p>09093-02711 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_45');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_45');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_45');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_45');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_45');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_45');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_45');" />通常
				</td>
				<td id="target_46">
					<p>1151-A77-1660 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_46');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_46');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_46');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_46');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_46');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_46');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_46');" />通常
				</td>
				<td id="target_47">
					<p>1722 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_47');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_47');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_47');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_47');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_47');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_47');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_47');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 5行目タイトル（設備名） -->
			<tr>
				<th class="ShiftSel" id="status_16">
					<p>SND-08 132</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_16');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_16');" />通常
				</th>
				<th class="ShiftSel" id="status_17">
					<p>SND-09 133</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_17');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_17');" />通常
				</th>
				<th class="ShiftSel" id="status_18">
					<p>LG-7-02 101</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_18');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_18');" />通常
				</th>
				<th class="ShiftSel" id="status_19">
					<p>LG-7-04 103</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_19');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_19');" />通常
				</th>
				<th class="ShiftSel" id="status_20">
					<p>LG-7-06 105</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_20');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_20');" />通常
				</th>
				<th class="ShiftSel" id="status_21">
					<p>G7-05 129</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_21');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_21');" />通常
				</th>
				<th class="ShiftSel" id="status_22">
					<p>G7-04 128</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_22');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_22');" />通常
				</th>
				<th class="ShiftSel" id="status_23">
					<p>G7-01 109</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_23');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_23');" />通常
				</th>
				<th class="ShiftSel" id="status_24">
					<p>G7-02 110</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_24');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_24');" />通常
				</th>
				<th class="ShiftSel" id="status_25">
					<p>G7-03 111</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_25');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_25');" />通常
				</th>
				<th class="ShiftSel" id="status_26">
					<p>A-18-01 114</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_26');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_26');" />通常
				</th>
				<th class="ShiftSel" id="status_27">
					<p>M06J 300</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_27');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_27');" />通常
				</th>
				<th class="ShiftSel" id="status_28">
					<p>M06D 297</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_28');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_28');" />通常
				</th>
				<th class="ShiftSel" id="status_29">
					<p>5J-02 151</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_29');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_29');" />通常
				</th>
				<th class="ShiftSel" id="status_30">
					<p>5V-02A 155</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_30');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_30');" />通常
				</th>
				<th class="ShiftSel" id="status_31">
					<p>5V-02B 155</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_31');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_31');" />通常
				</th>
				<th class="ShiftSel" id="status_32">
					<p>MTS-C360 166</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_32');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_32');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（6行目） -->
				<td id="target_48">
					<p>310SP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_48');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_48');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_48');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_48');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_48');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_48');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_48');" />通常
				</td>
				<td id="target_49">
					<p>444PP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_49');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_49');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_49');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_49');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_49');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_49');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_49');" />通常
				</td>
				<td id="target_50">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_50');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_50');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_50');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_50');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_50');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_50');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_50');" />通常
				</td>
				<td id="target_51">
					<p >03K PLUG LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_51');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_51');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_51');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_51');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_51');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_51');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_51');" />通常
				</td>
				<td id="target_52">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_52');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_52');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_52');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_52');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_52');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_52');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_52');" />通常
				</td>
				<td id="target_53">
					<p >0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_53');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_53');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_53');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_53');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_53');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_53');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_53');" />通常
				</td>
				<td id="target_54">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_54');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_54');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_54');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_54');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_54');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_54');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_54');" />通常
				</td>
				<td id="target_55">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_55');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_55');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_55');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_55');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_55');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_55');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_55');" />通常
				</td>
				<td id="target_56">
					<p>93010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_56');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_56');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_56');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_56');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_56');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_56');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_56');" />通常
				</td>
				<td id="target_57">
					<p>SPRING COVER(A) LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_57');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_57');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_57');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_57');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_57');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_57');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_57');" />通常
				</td>
				<td id="target_58">
					<p>151686-10090 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_58');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_58');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_58');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_58');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_58');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_58');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_58');" />通常
				</td>
				<td id="target_59">
					<p>721-36-10080 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_59');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_59');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_59');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_59');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_59');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_59');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_59');" />通常
				</td>
				<td id="target_60">
					<p>721-36-10080 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_60');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_60');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_60');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_60');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_60');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_60');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_60');" />通常
				</td>
				<td id="target_61">
					<p>CP-301AL MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_61');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_61');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_61');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_61');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_61');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_61');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_61');" />通常
				</td>
				<td id="target_62">
					<p>1771 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_62');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_62');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_62');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_62');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_62');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_62');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_62');" />通常
				</td>
				<td id="target_63">
					<p>1722 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_63');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_63');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_63');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_63');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_63');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_63');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_63');" />通常
				</td>
				<td id="target_64">
					<p>75M121-0042 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_64');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_64');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_64');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_64');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_64');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_64');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_64');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（7行目） -->
				<td id="target_65">
					<p>310SP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_65');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_65');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_65');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_65');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_65');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_65');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_65');" />通常
				</td>
				<td id="target_66">
					<p>444PP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_66');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_66');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_66');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_66');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_66');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_66');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_66');" />通常
				</td>
				<td id="target_67">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_67');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_67');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_67');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_67');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_67');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_67');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_67');" />通常
				</td>
				<td id="target_68">
					<p>03K PLUG LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_68');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_68');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_68');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_68');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_68');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_68');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_68');" />通常
				</td>
				<td id="target_69">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_69');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_69');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_69');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_69');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_69');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_69');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_69');" />通常
				</td>
				<td id="target_70">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_70');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_70');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_70');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_70');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_70');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_70');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_70');" />通常
				</td>
				<td id="target_71">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_71');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_71');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_71');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_71');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_71');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_71');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_71');" />通常
				</td>
				<td id="target_72">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_72');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_72');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_72');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_72');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_72');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_72');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_72');" />通常
				</td>
				<td id="target_73">
					<p>93010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_73');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_73');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_73');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_73');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_73');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_73');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_73');" />通常
				</td>
				<td id="target_74">
					<p>SPRING COVER(A) LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_74');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_74');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_74');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_74');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_74');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_74');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_74');" />通常
				</td>
				<td id="target_75">
					<p>151686-10090 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_75');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_75');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_75');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_75');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_75');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_75');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_75');" />通常
				</td>
				<td id="target_76">
					<p>721-36-10080 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_76');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_76');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_76');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_76');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_76');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_76');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_76');" />通常
				</td>
				<td id="target_77">
					<p>721-36-10080 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_77');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_77');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_77');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_77');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_77');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_77');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_77');" />通常
				</td>
				<td id="target_78">
					<p>CP-301AL MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_78');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_78');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_78');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_78');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_78');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_78');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_78');" />通常
				</td>
				<td id="target_79">
					<p>1771 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_79');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_79');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_79');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_79');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_79');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_79');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_79');" />通常
				</td>
				<td id="target_80">
					<p>1722 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_80');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_80');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_80');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_80');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_80');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_80');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_80');" />通常
				</td>
				<td id="target_81">
					<p>75M121-0042 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_81');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_81');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_81');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_81');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_81');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_81');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_81');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（8行目） -->
				<td id="target_82">
					<p>168SP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_82');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_82');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_82');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_82');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_82');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_82');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_82');" />通常
				</td>
				<td id="target_83">
					<p>308SP MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_83');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_83');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_83');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_83');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_83');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_83');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_83');" />通常
				</td>
				<td id="target_84">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_84');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_84');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_84');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_84');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_84');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_84');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_84');" />通常
				</td>
				<td id="target_85">
					<p>03K PLUG LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_85');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_85');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_85');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_85');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_85');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_85');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_85');" />通常
				</td>
				<td id="target_86">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_86');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_86');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_86');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_86');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_86');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_86');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_86');" />通常
				</td>
				<td id="target_87">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_87');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_87');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_87');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_87');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_87');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_87');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_87');" />通常
				</td>
				<td id="target_88">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_88');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_88');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_88');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_88');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_88');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_88');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_88');" />通常
				</td>
				<td id="target_89">
					<p>0900-0175A00 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_89');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_89');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_89');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_89');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_89');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_89');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_89');" />通常
				</td>
				<td id="target_90">
					<p>93010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_90');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_90');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_90');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_90');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_90');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_90');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_90');" />通常
				</td>
				<td id="target_91">
					<p>SPRING COVER(A) LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_91');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_91');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_91');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_91');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_91');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_91');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_91');" />通常
				</td>
				<td id="target_92">
					<p>77B1V-62010 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_92');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_92');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_92');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_92');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_92');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_92');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_92');" />通常
				</td>
				<td id="target_93">
					<p>721-36-10030 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_93');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_93');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_93');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_93');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_93');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_93');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_93');" />通常
				</td>
				<td id="target_94">
					<p>721-36-10030 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_94');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_94');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_94');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_94');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_94');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_94');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_94');" />通常
				</td>
				<td id="target_95">
					<p>CP-301AL MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_95');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_95');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_95');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_95');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_95');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_95');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_95');" />通常
				</td>
				<td id="target_96">
					<p>1091 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_96');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_96');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_96');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_96');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_96');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_96');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_96');" />通常
				</td>
				<td id="target_97">
					<p>B95 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_97');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_97');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_97');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_97');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_97');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_97');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_97');" />通常
				</td>
				<td id="target_98">
					<p>75M121-0042 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_98');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_98');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_98');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_98');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_98');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_98');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_98');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 9行目タイトル（設備名） -->
			<tr>
				<th class="ShiftSel" id="status_33">
					<p>5J-02 150</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_33');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_33');" />通常
				</th>
				<th class="ShiftSel" id="status_34">
					<p>5V-05A 164</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_34');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_34');" />通常
				</th>
				<th class="ShiftSel" id="status_35">
					<p>5V-05B 164</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_35');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_35');" />通常
				</th>
				<th class="ShiftSel" id="status_36">
					<p>MTS-C360 167</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_36');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_36');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（10行目） -->
				<td id="target_99">
					<p>CP-301AL MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_99');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_99');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_99');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_99');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_99');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_99');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_99');" />通常
				</td>
				<td id="target_100">
					<p>75M121-0042 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_100');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_100');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_100');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_100');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_100');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_100');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_100');" />通常
				</td>
				<td id="target_101">
					<p>03011-03312 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_101');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_101');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_101');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_101');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_101');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_101');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_101');" />通常
				</td>
				<td id="target_102">
					<p >75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_102');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_102');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_102');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_102');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_102');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_102');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_102');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（11行目） -->
				<td id="target_103">
					<p>CP-301AL MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_103');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_103');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_103');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_103');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_103');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_103');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_103');" />通常
				</td>
				<td id="target_104">
					<p>75M121-0042 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_104');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_104');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_104');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_104');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_104');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_104');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_104');" />通常
				</td>
				<td id="target_105">
					<p>03011-03312 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_105');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_105');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_105');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_105');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_105');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_105');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_105');" />通常
				</td>
				<td id="target_106">
					<p>75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_106');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_106');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_106');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_106');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_106');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_106');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_106');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（12行目） -->
				<td id="target_107">
					<p>CP-301AL MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_107');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_107');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_107');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_107');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_107');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_107');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_107');" />通常
				</td>
				<td id="target_108">
					<p>75M121-0042 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_108');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_108');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_108');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_108');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_108');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_108');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_108');" />通常
				</td>
				<td id="target_109">
					<p>03011-03312 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_109');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_109');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_109');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_109');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_109');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_109');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_109');" />通常
				</td>
				<td id="target_110">
					<p>75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_110');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_110');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_110');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_110');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_110');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_110');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_110');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 13行目タイトル（設備名） -->
			<tr>
				<th class="ShiftSel" id="status_37">
					<p>SNC-08 138</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_37');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_37');" />通常
				</th>
				<th class="ShiftSel" id="status_38">
					<p>SND-04 140</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_38');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_38');" />通常
				</th>
				<th class="ShiftSel" id="status_39">
					<p>SND-03 131</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_39');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_39');" />通常
				</th>
				<th class="ShiftSel" id="status_40">
					<p>J1-01 145</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_40');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_40');" />通常
				</th>
				<th class="ShiftSel" id="status_41">
					<p>G07-02 142</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_41');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_41');" />通常
				</th>
				<th class="ShiftSel" id="status_42">
					<p>TX-120D 099</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_42');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_42');" />通常
				</th>
				<th class="ShiftSel" id="status_43">
					<p>SNC-07 137</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_43');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_43');" />通常
				</th>
				<th class="ShiftSel" id="status_44">
					<p>LG-6-02 118</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_44');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_44');" />通常
				</th>
				<th class="ShiftSel" id="status_45">
					<p>LG-6-07 125</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_45');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_45');" />通常
				</th>
				<th class="ShiftSel" id="status_46">
					<p>LG-6-04 120</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_46');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_46');" />通常
				</th>
				<th class="ShiftSel" id="status_47">
					<p>A-12 260</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_47');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_47');" />通常
				</th>
				<th class="ShiftSel" id="status_48">
					<p>ROBODRILL 161</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_48');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_48');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（14行目） -->
				<td id="target_111">
					<p>3B78301 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_111');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_111');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_111');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_111');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_111');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_111');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_111');" />通常
				</td>
				<td id="target_112">
					<p>SPRING COVER(B) LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_112');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_112');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_112');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_112');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_112');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_112');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_112');" />通常
				</td>
				<td id="target_113">
					<p>D2803-57133 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_113');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_113');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_113');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_113');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_113');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_113');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_113');" />通常
				</td>
				<td id="target_114">
					<p >000040-A LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_114');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_114');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_114');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_114');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_114');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_114');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_114');" />通常
				</td>
				<td id="target_115">
					<p >58010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_115');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_115');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_115');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_115');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_115');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_115');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_115');" />通常
				</td>
				<td id="target_116">
					<p >0900-0175A00 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_116');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_116');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_116');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_116');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_116');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_116');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_116');" />通常
				</td>
				<td id="target_117">
					<p >0900-0175A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_117');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_117');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_117');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_117');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_117');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_117');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_117');" />通常
				</td>
				<td id="target_118">
					<p >93012 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_118');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_118');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_118');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_118');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_118');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_118');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_118');" />通常
				</td>
				<td id="target_119">
					<p >158-150 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_119');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_119');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_119');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_119');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_119');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_119');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_119');" />通常
				</td>
				<td id="target_120">
					<p >158-150 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_120');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_120');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_120');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_120');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_120');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_120');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_120');" />通常
				</td>
				<td id="target_121">
					<p >FZC-9261-16 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_121');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_121');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_121');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_121');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_121');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_121');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_121');" />通常
				</td>
					<td id="target_122">
					<p >75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_122');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_122');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_122');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_122');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_122');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_122');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_122');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（15行目） -->
				<td id="target_122">
					<p>3B78301 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_122');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_122');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_122');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_122');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_122');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_122');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_122');" />通常
				</td>
				<td id="target_123">
					<p>SPRING COVER(B) LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_123');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_123');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_123');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_123');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_123');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_123');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_123');" />通常
				</td>
				<td id="target_124">
					<p>D2803-57133 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_124');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_124');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_124');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_124');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_124');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_124');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_124');" />通常
				</td>
				<td id="target_125">
					<p>000040-A LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_125');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_125');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_125');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_125');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_125');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_125');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_125');" />通常
				</td>
				<td id="target_126">
					<p>58010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_126');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_126');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_126');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_126');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_126');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_126');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_126');" />通常
				</td>
				<td id="target_127">
					<p>0900-0175A00 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_127');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_127');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_127');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_127');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_127');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_127');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_127');" />通常
				</td>
				<td id="target_128">
					<p>0900-0175A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_128');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_128');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_128');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_128');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_128');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_128');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_128');" />通常
				</td>
				<td id="target_129">
					<p>93012 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_129');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_129');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_129');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_129');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_129');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_129');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_129');" />通常
				</td>
				<td id="target_130">
					<p>158-150 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_130');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_130');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_130');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_130');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_130');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_130');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_130');" />通常
				</td>
				<td id="target_131">
					<p>158-150 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_131');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_131');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_131');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_131');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_131');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_131');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_131');" />通常
				</td>
				<td id="target_132">
					<p>FZC-9261-16 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_132');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_132');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_132');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_132');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_132');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_132');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_132');" />通常
				</td>
				<td id="target_133">
					<p>75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_133');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_133');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_133');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_133');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_133');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_133');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_133');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（16行目） -->
				<td id="target_134">
					<p>3B78300 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_134');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_134');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_134');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_134');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_134');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_134');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_134');" />通常
				</td>
				<td id="target_135">
					<p>SPRING COVER(B) LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_135');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_135');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_135');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_135');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_135');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_135');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_135');" />通常
				</td>
				<td id="target_136">
					<p>D2803-57131 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_136');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_136');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_136');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_136');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_136');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_136');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_136');" />通常
				</td>
				<td id="target_137">
					<p>000040-A LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_137');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_137');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_137');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_137');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_137');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_137');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_137');" />通常
				</td>
				<td id="target_138">
					<p>58010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_138');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_138');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_138');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_138');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_138');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_138');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_138');" />通常
				</td>
				<td id="target_139">
					<p>0900-0175A00 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_139');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_139');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_139');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_139');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_139');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_139');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_139');" />通常
				</td>
				<td id="target_140">
					<p>0900-0175A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_140');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_140');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_140');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_140');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_140');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_140');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_140');" />通常
				</td>
				<td id="target_141">
					<p>93012 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_141');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_141');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_141');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_141');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_141');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_141');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_141');" />通常
				</td>
				<td id="target_142">
					<p>158-150 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_142');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_142');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_142');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_142');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_142');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_142');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_142');" />通常
				</td>
				<td id="target_143">
					<p>158-150 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_143');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_143');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_143');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_143');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_143');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_143');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_143');" />通常
				</td>
				<td id="target_144">
					<p>FZC-9261-16 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_144');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_144');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_144');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_144');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_144');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_144');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_144');" />通常
				</td>
				<td id="target_145">
					<p>75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_145');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_145');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_145');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_145');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_145');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_145');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_145');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 17行目タイトル（設備名） -->
			<tr>
				<th class="ShiftSel" id="status_49">
					<p>DT5R 072</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_49');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_49');" />通常
				</th>
				<th class="ShiftSel" id="status_50">
					<p>BT-02 158</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_50');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_50');" />通常
				</th>
				<th class="ShiftSel" id="status_51">
					<p>SNC-06 135</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_51');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_51');" />通常
				</th>
				<th class="ShiftSel" id="status_52">
					<p>G07-01 141</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_52');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_52');" />通常
				</th>
				<th class="ShiftSel" id="status_53">
					<p>J1-02 146</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_53');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_53');" />通常
				</th>
				<th class="ShiftSel" id="status_54">
					<p>SNC-09 139</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_54');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_54');" />通常
				</th>
				<th class="ShiftSel" id="status_55">
					<p>TX-75YA 175</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_55');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_55');" />通常
				</th>
				<th class="ShiftSel" id="status_56">
					<p>TX-75YA 176</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_56');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_56');" />通常
				</th>
				<th class="ShiftSel" id="status_57">
					<p>LG-6-06 124</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_57');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_57');" />通常
				</th>
				<th class="ShiftSel" id="status_58">
					<p>LG-6-03 119</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_58');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_58');" />通常
				</th>
				<th class="ShiftSel" id="status_59">
					<p>A-12 261</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_59');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_59');" />通常
				</th>
				<th class="ShiftSel" id="status_60">
					<p>WT-150-3 296</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_60');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_60');" />通常
				</th>
				<th class="ShiftSel" id="status_61">
					<p>WT-150-2 281</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_61');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_61');" />通常
				</th>
				<th class="ShiftSel" id="status_62">
					<p>WT-150-1 144</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_62');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_62');" />通常
				</th>
				<th class="ShiftSel" id="status_63">
					<p>MAZAK 143</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_63');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_63');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（18行目） -->
				<td id="target_146">
					<p>1940 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_146');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_146');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_146');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_146');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_146');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_146');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_146');" />通常
				</td>
				<td id="target_147">
					<p>150-903 MC</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_147');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_147');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_147');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_147');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_147');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_147');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_147');" />通常
				</td>
				<td id="target_113">
					<p>D2803-57133 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_113');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_113');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_113');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_113');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_113');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_113');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_113');" />通常
				</td>
				<td id="target_114">
					<p >000040-A LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_114');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_114');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_114');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_114');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_114');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_114');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_114');" />通常
				</td>
				<td id="target_115">
					<p >58010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_115');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_115');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_115');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_115');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_115');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_115');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_115');" />通常
				</td>
				<td id="target_116">
					<p >0900-0175A00 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_116');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_116');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_116');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_116');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_116');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_116');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_116');" />通常
				</td>
				<td id="target_117">
					<p >0900-0175A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_117');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_117');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_117');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_117');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_117');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_117');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_117');" />通常
				</td>
				<td id="target_118">
					<p >93012 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_118');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_118');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_118');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_118');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_118');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_118');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_118');" />通常
				</td>
				<td id="target_119">
					<p >158-150 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_119');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_119');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_119');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_119');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_119');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_119');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_119');" />通常
				</td>
				<td id="target_120">
					<p >158-150 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_120');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_120');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_120');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_120');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_120');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_120');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_120');" />通常
				</td>
				<td id="target_121">
					<p >FZC-9261-16 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_121');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_121');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_121');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_121');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_121');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_121');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_121');" />通常
				</td>
					<td id="target_122">
					<p >75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_122');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_122');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_122');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_122');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_122');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_122');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_122');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（19行目） -->
				<td id="target_122">
					<p>3B78301 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_122');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_122');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_122');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_122');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_122');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_122');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_122');" />通常
				</td>
				<td id="target_123">
					<p>SPRING COVER(B) LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_123');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_123');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_123');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_123');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_123');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_123');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_123');" />通常
				</td>
				<td id="target_124">
					<p>D2803-57133 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_124');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_124');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_124');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_124');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_124');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_124');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_124');" />通常
				</td>
				<td id="target_125">
					<p>000040-A LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_125');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_125');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_125');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_125');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_125');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_125');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_125');" />通常
				</td>
				<td id="target_126">
					<p>58010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_126');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_126');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_126');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_126');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_126');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_126');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_126');" />通常
				</td>
				<td id="target_127">
					<p>0900-0175A00 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_127');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_127');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_127');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_127');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_127');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_127');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_127');" />通常
				</td>
				<td id="target_128">
					<p>0900-0175A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_128');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_128');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_128');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_128');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_128');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_128');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_128');" />通常
				</td>
				<td id="target_129">
					<p>93012 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_129');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_129');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_129');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_129');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_129');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_129');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_129');" />通常
				</td>
				<td id="target_130">
					<p>158-150 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_130');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_130');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_130');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_130');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_130');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_130');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_130');" />通常
				</td>
				<td id="target_131">
					<p>158-150 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_131');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_131');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_131');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_131');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_131');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_131');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_131');" />通常
				</td>
				<td id="target_132">
					<p>FZC-9261-16 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_132');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_132');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_132');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_132');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_132');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_132');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_132');" />通常
				</td>
				<td id="target_133">
					<p>75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_133');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_133');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_133');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_133');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_133');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_133');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_133');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（20行目） -->
				<td id="target_134">
					<p>3B78300 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_134');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_134');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_134');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_134');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_134');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_134');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_134');" />通常
				</td>
				<td id="target_135">
					<p>SPRING COVER(B) LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_135');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_135');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_135');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_135');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_135');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_135');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_135');" />通常
				</td>
				<td id="target_136">
					<p>D2803-57131 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_136');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_136');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_136');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_136');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_136');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_136');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_136');" />通常
				</td>
				<td id="target_137">
					<p>000040-A LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_137');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_137');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_137');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_137');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_137');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_137');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_137');" />通常
				</td>
				<td id="target_138">
					<p>58010 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_138');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_138');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_138');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_138');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_138');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_138');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_138');" />通常
				</td>
				<td id="target_139">
					<p>0900-0175A00 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_139');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_139');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_139');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_139');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_139');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_139');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_139');" />通常
				</td>
				<td id="target_140">
					<p>0900-0175A00 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_140');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_140');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_140');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_140');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_140');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_140');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_140');" />通常
				</td>
				<td id="target_141">
					<p>93012 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_141');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_141');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_141');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_141');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_141');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_141');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_141');" />通常
				</td>
				<td id="target_142">
					<p>158-150 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_142');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_142');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_142');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_142');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_142');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_142');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_142');" />通常
				</td>
				<td id="target_143">
					<p>158-150 LN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_143');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_143');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_143');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_143');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_143');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_143');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_143');" />通常
				</td>
				<td id="target_144">
					<p>FZC-9261-16 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_144');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_144');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_144');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_144');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_144');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_144');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_144');" />通常
				</td>
				<td id="target_145">
					<p>75M121-0072 MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_145');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_145');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_145');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_145');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_145');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_145');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_145');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
			<p>夜勤</p>
			<td></td>
			<p>人</p>
			<p>夜勤ズレ</p>
			<td></td>
			<p>人</p>
			<p>日勤</p>
			<td></td>
			<p>人</p>
			<p>日勤ズレ</p>
			<td></td>
			<p>人</p>
		</table>
	</body>
</html>