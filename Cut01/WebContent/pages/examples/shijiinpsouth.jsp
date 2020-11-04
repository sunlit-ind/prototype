<!--「生産指示登録画面」南工場（シミュレーション）」を出力するビュー-->
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
					<p>ﾊﾞﾚﾙ洗浄 2</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status');" />通常
				</th>
				<th class="ShiftSel" id="status_1">
					<p>ﾊﾞﾚﾙ洗浄 1</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_1');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_1');" />通常
				</th>
				<th class="ShiftSel" id="status_2">
					<p>28Pi-284 284</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_2');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_2');" />通常
				</th>
				<th class="ShiftSel" id="status_3">
					<p>28Pi-277 277</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_3');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_3');" />通常
				</th>
				<th class="ShiftSel" id="status_4">
					<p>20HP-047 047</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_4');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_4');" />通常
				</th>
				<th class="ShiftSel" id="status_5">
					<p>G05-021  021</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_5');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_5');" />通常
				</th>
				<th class="ShiftSel" id="status_6">
					<p>G05-023  023</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_6');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_6');" />通常
				</th>
				<th class="ShiftSel" id="status_7">
					<p>G05-027  027</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_7');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_7');" />通常
				</th>
				<th class="ShiftSel" id="status_8">
					<p>20F-268  268</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_8');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_8');" />通常
				</th>
				<th class="ShiftSel" id="status_9">
					<p>20CF-270 270</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_9');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_9');" />通常
				</th>
				<th class="ShiftSel" id="status_10">
					<p>20F-266  266</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_10');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_10');" />通常
				</th>
				<th class="ShiftSel" id="status_11">
					<p>20Pi-276 276</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_11');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_11');" />通常
				</th>
				<th class="ShiftSel" id="status_12">
					<p>20Pi-275 275</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_12');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_12');" />通常
				</th>
				<th class="ShiftSel" id="status_13">
					<p>G06P-286 286</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_13');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_13');" />通常
				</th>
				<th class="ShiftSel" id="status_14">
					<p>28Pi-279 279</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_14');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_14');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（2行目） -->
				<td id="target">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target');" />通常
				</td>
				<td id="target_1">
					<p> FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_1');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_1');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_1');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_1');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_1');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_1');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_1');" />通常
				</td>
				<td id="target_2">
					<p>422-161-40090 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_2');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_2t');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_2');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_2');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_2');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_2');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_2');" />通常
				</td>
				<td id="target_3">
					<p >FZC-9261-16   MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_3');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('targe_3t');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_3');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_3');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_3');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_3');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_3');" />通常
				</td>
				<td id="target_4">
					<p>S862512       LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_4');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_4');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_4');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_4');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_4');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_4');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_4');" />通常
				</td>
				<td id="target_5">
					<p >JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_5');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_5');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_5');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_5');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_5');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_5');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_5');" />通常
				</td>
				<td id="target_6">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_6');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_6');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_6');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_6');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_6');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_6');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_6');" />通常
				</td>
				<td id="target_7">
					<p>551660010SQ   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_7');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_7');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_7');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_7');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_7');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_7');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_7');" />通常
				</td>
				<td id="target_8">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_8');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_8');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_8');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_8');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_8');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_8');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_8');" />通常
				</td>
				<td id="target_9">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_9');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_9');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_9');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_9');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_9');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_9');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_9');" />通常
				</td>
				<td id="target_10">
					<p>JGC60         LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_10');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_10');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_10');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_10');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_10');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_10');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_10');" />通常
				</td>
				<td id="target_11">
					<p>S862512       LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_11');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_11');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_11');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_11');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_11');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_11');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_11');" />通常
				</td>
				<td id="target_12">
					<p>03011-03312   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_12');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_12');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_12');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_12');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_12');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_12');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_12');" />通常
				</td>
				<td id="target_13">
					<p>HAT404-8      LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_13');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_13');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_13');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_13');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_13');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_13');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_13');" />通常
				</td>
				<td id="target_14">
					<p>FZC-9261-16   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_14');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_14');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_14');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_14');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_14');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_14');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_14');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（3行目） -->
				<td id="target_15">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_15');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_15');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_15');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_15');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_15');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_15');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_15');" />通常
				</td>
				<td id="target_16">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_16');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_16');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_16');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_16');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_16');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_16');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_16');" />通常
				</td>
				<td id="target_17">
					<p>422-161-40090 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_17');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_17');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_17');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_17');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_17');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_17');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_17');" />通常
				</td>
				<td id="target_18">
					<p>FZC-9261-16   MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_18');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_18');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_18');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_18');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_18');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_18');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_18');" />通常
				</td>
				<td id="target_19">
					<p>S862512       LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_19');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_19');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_19');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_19');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_19');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_19');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_19');" />通常
				</td>
				<td id="target_20">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_20');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_20');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_20');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_20');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_20');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_20');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_20');" />通常
				</td>
				<td id="target_21">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_21');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_21');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_21');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_21');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_21');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_21');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_21');" />通常
				</td>
				<td id="target_22">
					<p>551660010SQ   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_22');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_22');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_22');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_22');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_22');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_22');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_22');" />通常
				</td>
				<td id="target_23">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_23');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_23');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_23');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_23');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_23');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_23');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_23');" />通常
				</td>
				<td id="target_24">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_24');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_24');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_24');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_24');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_24');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_24');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_24');" />通常
				</td>
				<td id="target_25">
					<p>JGC60         LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_25');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_25');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_25');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_25');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_25');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_25');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_25');" />通常
				</td>
				<td id="target_26">
					<p>S862512       LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_26');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_26');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_26');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_26');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_26');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_26');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_26');" />通常
				</td>
				<td id="target_27">
					<p>03011-03312   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_27');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_27');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_27');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_27');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_27');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_27');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_27');" />通常
				</td>
				<td id="target_28">
					<p>HAT404-8      LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_28');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_28');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_28');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_28');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_28');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_28');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_28');" />通常
				</td>
				<td id="target_29">
					<p>FZC-9261-16   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_29');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_29');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_29');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_29');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_29');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_29');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_29');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（4行目） -->
				<td id="target_30">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_30');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_30');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_30');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_30');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_30');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_30');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_30');" />通常
				</td>
				<td id="target_31">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_31');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_31');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_31');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_31');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_31');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_31');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_31');" />通常
				</td>
				<td id="target_32">
					<p>422-161-40090 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_32');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_32');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_32');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_32');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_32');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_32');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_32');" />通常
				</td>
				<td id="target_33">
					<p>FZC-9261-16   MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_33');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_33');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_33');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_33');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_33');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_33');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_33');" />通常
				</td>
				<td id="target_34">
					<p>S862512       LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_34');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_34');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_34');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_34');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_34');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_34');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_34');" />通常
				</td>
				<td id="target_35">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_35');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_35');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_35');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_35');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_35');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_35');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_35');" />通常
				</td>
				<td id="target_36">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_36');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_36');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_36');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_36');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_36');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_36');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_36');" />通常
				</td>
				<td id="target_37">
					<p>551660010SQ   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_37');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_37');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_37');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_37');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_37');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_37');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_37');" />通常
				</td>
				<td id="target_38">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_38');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_38');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_38');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_38');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_38');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_38');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_38');" />通常
				</td>
				<td id="target_39">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_39');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_39');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_39');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_39');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_39');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_39');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_39');" />通常
				</td>
				<td id="target_40">
					<p>JGC60         LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_40');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_40');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_40');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_40');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_40');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_40');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_40');" />通常
				</td>
				<td id="target_41">
					<p>S862512       LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_41');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_41');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_41');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_41');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_41');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_41');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_41');" />通常
				</td>
				<td id="target_42">
					<p>03011-03312   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_42');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_42');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_42');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_42');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_42');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_42');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_42');" />通常
				</td>
				<td id="target_43">
					<p>HAT404-8      LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_43');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_43');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_43');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_43');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_43');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_43');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_43');" />通常
				</td>
				<td id="target_44">
					<p>FZC-9261-16   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_44');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_44');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_44');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_44');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_44');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_44');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_44');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 設備名（5行目） -->
			<tr>
				<th class="ShiftSel" id="status_15">
					<p>ﾊﾞﾚﾙ洗浄 3</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_15');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_15');" />通常
				</th>
				<th class="ShiftSel" id="status_16">
					<p>ﾊﾞﾚﾙ洗浄 4</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_16');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_16');" />通常
				</th>
				<th class="ShiftSel" id="status_17">
					<p>28Pi-285 285</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_17');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_17');" />通常
				</th>
				<th class="ShiftSel" id="status_18">
					<p>28Pi-278 278</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_18');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_18');" />通常
				</th>
				<th class="ShiftSel" id="status_19">
					<p>20DT-130 130</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_19');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_19');" />通常
				</th>
				<th class="ShiftSel" id="status_20">
					<p>G05-024 024</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_20');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_20');" />通常
				</th>
				<th class="ShiftSel" id="status_21">
					<p>G05-025 025</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_21');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_21');" />通常
				</th>
				<th class="ShiftSel" id="status_22">
					<p>SG5-031 031</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_22');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_22');" />通常
				</th>
				<th class="ShiftSel" id="status_23">
					<p>20F-267 267</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_23');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_23');" />通常
				</th>
				<th class="ShiftSel" id="status_24">
					<p>20CF-269 269</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_24');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_24');" />通常
				</th>
				<th class="ShiftSel" id="status_25">
					<p>20CF-271 271</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_25');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_25');" />通常
				</th>
				<th class="ShiftSel" id="status_26">
					<p>20CF-272 272</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_26');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_26');" />通常
				</th>
				<th class="ShiftSel" id="status_27">
					<p>20Pi-282 282</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_27');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_27');" />通常
				</th>
				<th class="ShiftSel" id="status_28">
					<p>G06P-287 287</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_28');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_28');" />通常
				</th>
				<th class="ShiftSel" id="status_29">
					<p>28Pi-288 288</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_29');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_29');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（6行目） -->
				<td id="target_45">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_45');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_45');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_45');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_45');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_45');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_45');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_45');" />通常
				</td>
				<td id="target_46">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_46');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_46');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_46');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_46');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_46');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_46');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_46');" />通常
				</td>
				<td id="target_47">
					<p>422-161-40090 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_47');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_47');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_47');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_47');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_47');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_47');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_47');" />通常
				</td>
				<td id="target_48">
					<p>FZC-9261-16   MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_48');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_48');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_48');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_48');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_48');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_48');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_48');" />通常
				</td>
				<td id="target_49">
					<p>S862512N      LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_49');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_49');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_49');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_49');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_49');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_49');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_49');" />通常
				</td>
				<td id="target_50">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_50');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_50');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_50');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_50');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_50');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_50');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_50');" />通常
				</td>
				<td id="target_51">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_51');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_51');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_51');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_51');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_51');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_51');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_51');" />通常
				</td>
				<td id="target_52">
					<p>551660010SQ   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_52');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_52');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_52');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_52');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_52');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_52');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_52');" />通常
				</td>
				<td id="target_53">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_53');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_53');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_53');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_53');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_53');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_53');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_53');" />通常
				</td>
				<td id="target_54">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_54');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_54');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_54');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_54');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_54');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_54');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_54');" />通常
				</td>
				<td id="target_55">
					<p>JGC60         LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_55');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_55');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_55');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_55');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_55');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_55');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_55');" />通常
				</td>
				<td id="target_56">
					<p>S862512       LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_56');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_56');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_56');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_56');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_56');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_56');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_56');" />通常
				</td>
				<td id="target_57">
					<p>03011-03312   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_57');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_57');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_57');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_57');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_57');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_57');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_57');" />通常
				</td>
				<td id="target_58">
					<p>HAT404-8      LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_58');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_58');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_58');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_58');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_58');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_58');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_58');" />通常
				</td>
				<td id="target_59">
					<p>FZC-9261-16   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_59');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_59');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_59');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_59');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_59');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_59');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_59');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（7行目） -->
				<td id="target_60">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_60');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_60');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_60');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_60');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_60');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_60');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_60');" />通常
				</td>
				<td id="target_61">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_61');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_61');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_61');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_61');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_61');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_61');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_61');" />通常
				</td>
				<td id="target_62">
					<p>422-161-40090 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_62');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_62');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_62');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_62');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_62');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_62');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_62');" />通常
				</td>
				<td id="target_63">
					<p>FZC-9261-16   MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_63');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_63');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_63');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_63');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_63');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_63');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_63');" />通常
				</td>
				<td id="target_64">
					<p>S862512       LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_64');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_64');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_64');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_64');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_64');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_64');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_64');" />通常
				</td>
				<td id="target_65">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_65');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_65');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_65');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_65');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_65');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_65');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_65');" />通常
				</td>
				<td id="target_66">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_66');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_66');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_66');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_66');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_66');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_66');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_66');" />通常
				</td>
				<td id="target_67">
					<p>551660010SQ   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_67');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_67');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_67');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_67');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_67');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_67');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_67');" />通常
				</td>
				<td id="target_68">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_68');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_68');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_68');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_68');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_68');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_68');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_68');" />通常
				</td>
				<td id="target_69">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_69');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_69');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_69');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_69');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_69');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_69');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_69');" />通常
				</td>
				<td id="target_70">
					<p>JGC60         LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_70');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_70');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_70');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_70');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_70');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_70');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_70');" />通常
				</td>
				<td id="target_71">
					<p>S862512       LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_71');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_71');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_71');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_71');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_71');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_71');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_71');" />通常
				</td>
				<td id="target_72">
					<p>03011-03312   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_72');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_72');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_72');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_72');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_72');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_72');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_72');" />通常
				</td>
				<td id="target_73">
					<p>HAT404-8      LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_73');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_73');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_73');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_73');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_73');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_73');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_73');" />通常
				</td>
				<td id="target_74">
					<p>FZC-9261-16   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_74');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_74');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_74');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_74');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_74');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_74');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_74');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（8行目） -->
				<td id="target_75">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_75');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_75');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_75');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_75');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_75');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_75');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_75');" />通常
				</td>
				<td id="target_76">
					<p>FZK            バ</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_76');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_76');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_76');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_76');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_76');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_76');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_76');" />通常
				</td>
				<td id="target_77">
					<p>422-161-40090 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_77');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_77');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_77');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_77');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_77');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_77');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_77');" />通常
				</td>
				<td id="target_78">
					<p>FZC-9261-16   MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_78');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_78');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_78');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_78');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_78');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_78');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_78');" />通常
				</td>
				<td id="target_79">
					<p>S862512       LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_79');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_79');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_79');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_79');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_79');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_79');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_79');" />通常
				</td>
				<td id="target_80">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_80');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_80');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_80');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_80');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_80');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_80');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_80');" />通常
				</td>
				<td id="target_81">
				<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_81');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_81');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_81');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_81');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_81');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_81');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_81');" />通常
				</td>
				<td id="target_82">
					<p>551660010SQ   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_82');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_82');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_82');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_82');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_82');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_82');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_82');" />通常
				</td>
				<td id="target_83">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_83');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_83');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_83');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_83');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_83');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_83');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_83');" />通常
				</td>
				<td id="target_84">
					<p>FZC-9183-12   MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_84');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_84');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_84');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_84');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_84');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_84');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_84');" />通常
				</td>
				<td id="target_85">
					<p>JGC60         LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_85');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_85');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_85');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_85');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_85');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_85');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_85');" />通常
				</td>
				<td id="target_86">
					<p>S862512       LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_86');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_86');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_86');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_86');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_86');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_86');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_86');" />通常
				</td>
				<td id="target_87">
					<p>03011-03312   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_87');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_87');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_87');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_87');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_87');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_87');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_87');" />通常
				</td>
				<td id="target_88">
					<p>HAT404-8      LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_88');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_88');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_88');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_88');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_88');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_88');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_88');" />通常
				</td>
				<td id="target_89">
					<p>FZC-9261-16   LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_89');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_89');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_89');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_89');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_89');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_89');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_89');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 設備名（9行目） -->
			<tr>
				<th class="ShiftSel" id="status_30">
					<p>28Pi-273 273</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_30');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_30');" />通常
				</th>
				<th class="ShiftSel" id="status_31">
					<p>28Pi-290 290</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_31');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_31');" />通常
				</th>
				<th class="ShiftSel" id="status_32">
					<p>28Pi-285 285</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_32');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_32');" />通常
				</th>
				<th class="ShiftSel" id="status_33">
					<p>KNC-30GA 091</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_33');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_33');" />通常
				</th>
				<th class="ShiftSel" id="status_34">
					<p>KNC-30GA 093</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_34');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_34');" />通常
				</th>
				<th class="ShiftSel" id="status_35">
					<p>KNC-30GA 095</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_35');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_35');" />通常
				</th>
				<th class="ShiftSel" id="status_36">
					<p>KNC-30GA 097</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_36');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_36');" />通常
				</th>
				<th class="ShiftSel" id="status_37">
					<p>G5UP-013 013</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_37');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_37');" />通常
				</th>
				<th class="ShiftSel" id="status_38">
					<p>G5UP-010 010</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_38');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_38');" />通常
				</th>
				<th class="ShiftSel" id="status_39">
					<p>G5UP-019 019</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_39');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_39');" />通常
				</th>
				<th class="ShiftSel" id="status_40">
					<p>G05-NP82 082</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_40');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_40');" />通常
				</th>
				<th class="ShiftSel" id="status_41">
					<p>G05-NP80 080</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_41');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_41');" />通常
				</th>
				<th class="ShiftSel" id="status_42">
					<p>G05-NP85 085</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_42');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_42');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（10行目） -->
				<td id="target_90">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_90');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_90');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_90');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_90');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_90');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_90');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_90');" />通常
				</td>
				<td id="target_91">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_91');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_91');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_91');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_91');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_91');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_91');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_91');" />通常
				</td>
				<td id="target_92">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_92');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_92');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_92');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_92');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_92');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_92');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_92');" />通常
				</td>
				<td id="target_93">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_93');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_93');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_93');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_93');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_93');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_93');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_93');" />通常
				</td>
				<td id="target_94">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_94');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_94');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_94');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_94');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_94');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_94');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_94');" />通常
				</td>
				<td id="target_95">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_95');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_95');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_95');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_95');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_95');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_95');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_95');" />通常
				</td>
				<td id="target_96">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_96');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_96');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_96');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_96');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_96');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_96');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_96');" />通常
				</td>
				<td id="target_97">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_97');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_97');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_97');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_97');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_97');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_97');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_97');" />通常
				</td>
				<td id="target_98">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_98');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_98');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_98');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_98');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_98');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_98');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_98');" />通常
				</td>
				<td id="target_99">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_99');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_99');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_99');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_99');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_99');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_99');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_99');" />通常
				</td>
				<td id="target_100">
					<p>FZC-9178-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_100');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_100');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_100');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_100');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_100');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_100');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_100');" />通常
				</td>
				<td id="target_101">
					<p>FZC-9178-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_101');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_101');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_101');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_101');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_101');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_101');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_101');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（11行目） -->
				<td id="target_102">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_102');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_102');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_102');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_102');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_102');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_102');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_102');" />通常
				</td>
				<td id="target_103">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_103');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_103');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_103');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_103');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_103');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_103');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_103');" />通常
				</td>
				<td id="target_104">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_104');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_104');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_104');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_104');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_104');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_104');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_104');" />通常
				</td>
				<td id="target_105">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_105');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_105');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_105');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_105');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_105');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_105');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_105');" />通常
				</td>
				<td id="target_106">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_106');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_106');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_106');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_106');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_106');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_106');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_106');" />通常
				</td>
				<td id="target_107">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_107');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_107');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_107');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_107');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_107');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_107');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_107');" />通常
				</td>
				<td id="target_108">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_108');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_108');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_108');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_108');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_108');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_108');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_108');" />通常
				</td>
				<td id="target_109">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_109');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_109');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_109');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_109');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_109');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_109');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_109');" />通常
				</td>
				<td id="target_110">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_110');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_110');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_110');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_110');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_110');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_110');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_110');" />通常
				</td>
				<td id="target_111">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_111');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_111');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_111');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_111');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_111');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_111');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_111');" />通常
				</td>
				<td id="target_112">
					<p>FZC-9178-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_112');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_112');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_112');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_112');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_112');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_112');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_112');" />通常
				</td>
				<td id="target_113">
					<p>FZC-9178-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_113');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_113');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_113');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_113');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_113');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_113');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_113');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（12行目） -->
				<td id="target_114">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_114');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_114');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_114');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_114');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_114');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_114');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_114');" />通常
				</td>
				<td id="target_115">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_115');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_115');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_115');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_115');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_115');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_115');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_115');" />通常
				</td>
				<td id="target_116">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_116');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_116');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_116');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_116');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_116');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_116');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_116');" />通常
				</td>
				<td id="target_117">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_117');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_117');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_117');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_117');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_117');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_117');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_117');" />通常
				</td>
				<td id="target_118">
					<p>FZC-9183-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_118');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_118');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_118');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_118');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_118');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_118');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_118');" />通常
				</td>
				<td id="target_119">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_119');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_119');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_119');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_119');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_119');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_119');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_119');" />通常
				</td>
				<td id="target_120">
				<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_120');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_120');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_120');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_120');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_120');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_120');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_120');" />通常
				</td>
				<td id="target_121">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_121');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_121');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_121');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_121');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_121');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_121');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_121');" />通常
				</td>
				<td id="target_122">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_122');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_122');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_122');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_122');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_122');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_122');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_122');" />通常
				</td>
				<td id="target_123">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_123');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_123');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_123');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_123');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_123');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_123');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_123');" />通常
				</td>
				<td id="target_124">
					<p>FZC-9178-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_124');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_124');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_124');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_124');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_124');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_124');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_124');" />通常
				</td>
				<td id="target_125">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_125');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_125');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_125');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_125');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_125');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_125');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_125');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 設備名（13行目） -->
			<tr>
				<th class="ShiftSel" id="status_43">
					<p>KNC-300WA 180</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_43');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_43');" />通常
				</th>
				<th class="ShiftSel" id="status_44">
					<p>28Pi-293 293</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_44');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_44');" />通常
				</th>
				<th class="ShiftSel" id="status_45">
					<p>28Pi-291 291</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_45');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_45');" />通常
				</th>
				<th class="ShiftSel" id="status_46">
					<p>28Pi-283 283</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_46');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_46');" />通常
				</th>
				<th class="ShiftSel" id="status_47">
					<p>KNC-30GA 092</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_47');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_47');" />通常
				</th>
				<th class="ShiftSel" id="status_48">
					<p>KNC-30GA 094</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_48');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_48');" />通常
				</th>
				<th class="ShiftSel" id="status_49">
					<p>KNC-30GA 096</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_49');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_49');" />通常
				</th>
				<th class="ShiftSel" id="status_50">
					<p>KNC-30GA 098</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_50');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_50');" />通常
				</th>
				<th class="ShiftSel" id="status_51">
					<p>G5UP-012 012</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_51');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_51');" />通常
				</th>
				<th class="ShiftSel" id="status_52">
					<p>G5UP-018 018</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_52');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_52');" />通常
				</th>
				<th class="ShiftSel" id="status_53">
					<p>G5UP-020 020</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_53');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_53');" />通常
				</th>
				<th class="ShiftSel" id="status_54">
					<p>G05-NP84 084</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_54');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_54');" />通常
				</th>
				<th class="ShiftSel" id="status_56">
					<p>G05-NP83 083</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_56');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_56');" />通常
				</th>
				<th class="ShiftSel" id="status_57">
					<p>G05-NP81 081</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_57');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_57');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（14行目） -->
				<td id="target_126">
					<p>FZC-9261-16 MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_126');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_126');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_126');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_126');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_126');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_126');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_126');" />通常
				</td>
				<td id="target_127">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_127');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_127');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_127');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_127');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_127');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_127');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_127');" />通常
				</td>
				<td id="target_128">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_128');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_128');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_128');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_128');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_128');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_128');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_128');" />通常
				</td>
				<td id="target_129">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_129');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_129');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_129');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_129');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_129');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_129');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_129');" />通常
				</td>
				<td id="target_130">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_130');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_130');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_130');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_130');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_130');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_130');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_130');" />通常
				</td>
				<td id="target_131">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_131');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_131');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_131');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_131');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_131');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_131');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_131');" />通常
				</td>
				<td id="target_132">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_132');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_132');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_132');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_132');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_132');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_132');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_132');" />通常
				</td>
				<td id="target_133">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_133');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_133');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_133');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_133');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_133');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_133');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_133');" />通常
				</td>
				<td id="target_134">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_134');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_134');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_134');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_134');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_134');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_134');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_134');" />通常
				</td>
				<td id="target_135">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_135');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_135');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_135');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_135');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_135');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_135');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_135');" />通常
				</td>
				<td id="target_136">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_136');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_136');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_136');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_136');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_136');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_136');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_136');" />通常
				</td>
				<td id="target_137">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_137');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_137');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_137');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_137');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_137');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_137');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_137');" />通常
				</td>
				<td id="target_138">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_138');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_138');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_138');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_138');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_138');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_138');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_138');" />通常
				</td>
				<td id="target_139">
					<p>FZC-9178-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_139');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_139');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_139');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_139');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_139');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_139');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_139');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（15行目） -->
				<td id="target_140">
					<p>FZC-9261-16 MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_140');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_140');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_140');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_140');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_140');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_140');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_140');" />通常
				</td>
				<td id="target_141">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_141');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_141');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_141');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_141');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_141');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_141');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_141');" />通常
				</td>
				<td id="target_142">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_142');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_142');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_142');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_142');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_142');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_142');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_142');" />通常
				</td>
				<td id="target_143">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_143');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_143');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_143');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_143');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_143');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_143');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_143');" />通常
				</td>
				<td id="target_144">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_144');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_144');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_144');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_144');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_144');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_144');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_144');" />通常
				</td>
				<td id="target_145">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_145');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_145');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_145');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_145');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_145');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_145');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_145');" />通常
				</td>
				<td id="target_146">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_146');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_146');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_146');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_146');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_146');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_146');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_146');" />通常
				</td>
				<td id="target_147">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_147');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_147');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_147');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_147');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_147');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_147');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_147');" />通常
				</td>
				<td id="target_148">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_148');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_148');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_148');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_148');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_148');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_148');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_148');" />通常
				</td>
				<td id="target_149">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_149');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_149');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_149');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_149');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_149');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_149');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_149');" />通常
				</td>
				<td id="target_150">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_150');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_150');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_150');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_150');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_150');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_150');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_150');" />通常
				</td>
				<td id="target_151">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_151');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_151');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_151');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_151');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_151');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_151');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_151');" />通常
				</td>
				<td id="target_152">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_152');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_152');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_152');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_152');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_152');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_152');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_152');" />通常
				</td>
				<td id="target_153">
					<p>FZC-9178-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_153');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_153');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_153');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_153');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_153');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_153');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_153');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（16行目） -->
				<td id="target_154">
					<p>FZC-9261-16 MN3</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_154');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_154');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_154');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_154');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_154');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_154');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_154');" />通常
				</td>
				<td id="target_155">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_155');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_155');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_155');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_155');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_155');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_155');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_155');" />通常
				</td>
				<td id="target_156">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_156');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_156');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_156');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_156');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_156');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_156');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_156');" />通常
				</td>
				<td id="target_157">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_157');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_157');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_157');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_157');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_157');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_157');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_157');" />通常
				</td>
				<td id="target_158">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_158');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_158');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_158');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_158');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_158');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_158');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_158');" />通常
				</td>
				<td id="target_159">
					<p>FZC-9183-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_159');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_159');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_159');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_159');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_159');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_159');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_159');" />通常
				</td>
				<td id="target_160">
				<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_160');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_160');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_160');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_160');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_160');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_160');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_160');" />通常
				</td>
				<td id="target_161">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_161');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_161');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_161');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_161');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_161');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_161');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_161');" />通常
				</td>
				<td id="target_162">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_162');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_162');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_162');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_162');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_162');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_162');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_162');" />通常
				</td>
				<td id="target_163">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_163');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_163');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_163');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_163');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_163');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_163');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_163');" />通常
				</td>
				<td id="target_164">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_164');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_164');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_164');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_164');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_164');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_164');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_164');" />通常
				</td>
				<td id="target_165">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_165');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_165');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_165');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_165');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_165');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_165');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_165');" />通常
				</td>
				<td id="target_166">
					<p>FZC-9183-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_166');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_166');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_166');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_166');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_166');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_166');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_166');" />通常
				</td>
				<td id="target_167">
					<p>FZC-9178-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_167');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_167');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_167');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_167');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_167');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_167');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_167');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 設備名（17行目） -->
			<tr>
				<th class="ShiftSel" id="status_58">
					<p>AD-8 172</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_58');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_58');" />通常
				</th>
				<th class="ShiftSel" id="status_59">
					<p>28Pi-292 298</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_59');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_59');" />通常
				</th>
				<th class="ShiftSel" id="status_60">
					<p>G5UP-014 014</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_60');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_60');" />通常
				</th>
				<th class="ShiftSel" id="status_61">
					<p>G5NP-226 226</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_61');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_61');" />通常
				</th>
				<th class="ShiftSel" id="status_62">
					<p>G5NP-228 228</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_62');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_62');" />通常
				</th>
				<th class="ShiftSel" id="status_63">
					<p>G5NP-230 230</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_63');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_63');" />通常
				</th>
				<th class="ShiftSel" id="status_64">
					<p>G5NP-232 232</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_64');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_64');" />通常
				</th>
				<th class="ShiftSel" id="status_65">
					<p>G5NP-234 234</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_65');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_65');" />通常
				</th>
				<th class="ShiftSel" id="status_66">
					<p>20CF-240 240</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_66');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_66');" />通常
				</th>
				<th class="ShiftSel" id="status_67">
					<p>20CF-242 242</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_67');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_67');" />通常
				</th>
				<th class="ShiftSel" id="status_68">
					<p>20CF-244 244</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_68');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_68');" />通常
				</th>
				<th class="ShiftSel" id="status_69">
					<p>20CF-244 244</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_69');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_69');" />通常
				</th>
				<th class="ShiftSel" id="status_70">
					<p>20CF-247 247</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_70');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_70');" />通常
				</th>
				<th class="ShiftSel" id="status_71">
					<p>20Pi-294 294</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_71');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_71');" />通常
				</th>
				<th class="ShiftSel" id="status_72">
					<p>20Pi-295 295</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_72');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_72');" />通常
				</th>
				<th class="ShiftSel" id="status_73">
					<p>D5-02 257</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_73');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_73');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（18行目） -->
				<td id="target_168">
					<p>416-111-10010 MN1.MN0</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_168');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_168');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_168');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_168');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_168');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_168');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_168');" />通常
				</td>
				<td id="target_169">
					<p>60871-12403 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_169');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_169');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_169');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_169');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_169');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_169');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_169');" />通常
				</td>
				<td id="target_170">
					<p>S851173 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_170');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_170');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_170');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_170');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_170');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_170');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_170');" />通常
				</td>
				<td id="target_171">
					<p>D2803-57131 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_171');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_171');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_171');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_171');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_171');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_171');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_171');" />通常
				</td>
				<td id="target_172">
					<p>D2803-57133 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_172');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_172');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_172');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_172');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_172');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_172');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_172');" />通常
				</td>
				<td id="target_173">
					<p>D2803-57133 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_173');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_173');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_173');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_173');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_173');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_173');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_173');" />通常
				</td>
				<td id="target_174">
					<p>113122-31010 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_174');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_174');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_174');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_174');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_174');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_174');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_174');" />通常
				</td>
				<td id="target_175">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_175');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_175');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_175');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_175');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_175');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_175');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_175');" />通常
				</td>
				<td id="target_176">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_176');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_176');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_176');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_176');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_176');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_176');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_176');" />通常
				</td>
				<td id="target_177">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_177');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_177');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_177');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_177');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_177');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_177');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_177');" />通常
				</td>
				<td id="target_178">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_178');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_178');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_178');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_178');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_178');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_178');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_178');" />通常
				</td>
				<td id="target_179">
					<p>K576B53301 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_179');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_179');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_179');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_179');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_179');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_179');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_179');" />通常
				</td>
				<td id="target_180">
					<p>S862513 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_180');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_180');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_180');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_180');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_180');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_180');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_180');" />通常
				</td>
				<td id="target_181">
					<p>551660010SQ LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_181');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_181');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_181');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_181');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_181');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_181');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_181');" />通常
				</td>
				<td id="target_182">
					<p>308SP MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_182');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_182');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_182');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_182');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_182');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_182');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_182');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（19行目） -->
				<td id="target_183">
					<p>416-111-10010 MN1.MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_183');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_183');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_183');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_183');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_183');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_183');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_183');" />通常
				</td>
				<td id="target_184">
					<p>60871-12403 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_184');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_184');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_184');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_184');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_184');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_184');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_184');" />通常
				</td>
				<td id="target_185">
					<p>S851173 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_185');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_185');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_185');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_185');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_185');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_185');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_185');" />通常
				</td>
				<td id="target_186">
					<p>D2803-57131 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_186');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_186');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_186');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_186');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_186');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_186');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_186');" />通常
				</td>
				<td id="target_187">
					<p>D2803-57133 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_187');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_187');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_187');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_187');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_187');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_187');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_187');" />通常
				</td>
				<td id="target_188">
					<p>D2803-57133 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_188');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_188');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_188');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_188');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_188');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_188');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_188');" />通常
				</td>
				<td id="target_189">
					<p>113122-31010 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_189');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_189');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_189');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_189');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_189');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_189');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_189');" />通常
				</td>
				<td id="target_190">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_190');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_190');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_190');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_190');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_190');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_190');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_190');" />通常
				</td>
				<td id="target_191">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_191');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_191');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_191');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_191');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_191');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_191');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_191');" />通常
				</td>
				<td id="target_192">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_192');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_192');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_192');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_192');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_192');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_192');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_192');" />通常
				</td>
				<td id="target_193">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_193');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_193');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_193');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_193');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_193');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_193');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_193');" />通常
				</td>
				<td id="target_194">
					<p>K576B53301 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_194');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_194');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_194');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_194');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_194');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_194');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_194');" />通常
				</td>
				<td id="target_195">
					<p>S862513 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_195');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_195');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_195');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_195');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_195');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_195');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_195');" />通常
				</td>
				<td id="target_196">
					<p>551660010SQ LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_196');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_196');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_196');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_196');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_196');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_196');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_196');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（20行目） -->
				<td id="target_197">
					<p>308SP MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_197');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_197');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_197');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_197');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_197');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_197');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_197');" />通常
				</td>
				<td id="target_198">
					<p>416-111-10010 MN1.MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_198');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_198');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_198');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_198');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_198');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_198');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_198');" />通常
				</td>
				<td id="target_199">
					<p>60871-12403 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_199');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_199');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_199');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_199');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_199');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_199');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_199');" />通常
				</td>
				<td id="target_200">
					<p>S851173 LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_200');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_200');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_200');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_200');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_200');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_200');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_200');" />通常
				</td>
				<td id="target_201">
					<p>D2803-57131 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_201');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_201');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_201');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_201');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_201');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_201');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_201');" />通常
				</td>
				<td id="target_202">
					<p>D2803-57133 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_202');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_202');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_202');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_202');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_202');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_202');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_202');" />通常
				</td>
				<td id="target_203">
				<p>D2803-57133 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_203');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_203');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_203');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_203');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_203');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_203');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_203');" />通常
				</td>
				<td id="target_204">
					<p>113122-31010 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_204');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_204');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_204');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_204');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_204');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_204');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_204');" />通常
				</td>
				<td id="target_205">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_205');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_205');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_205');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_205');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_205');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_205');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_205');" />通常
				</td>
				<td id="target_206">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_206');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_206');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_206');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_206');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_206');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_206');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_206');" />通常
				</td>
				<td id="target_207">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_207');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_207');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_207');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_207');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_207');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_207');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_207');" />通常
				</td>
				<td id="target_208">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_208');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_208');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_208');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_208');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_208');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_208');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_208');" />通常
				</td>
				<td id="target_209">
					<p>K576B53301 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_209');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_209');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_209');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_209');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_209');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_209');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_209');" />通常
				</td>
				<td id="target_210">
					<p>S862513 MN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_210');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_210');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_210');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_210');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_210');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_210');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_210');" />通常
				</td>
				<td id="target_211">
					<p>551660010SQ LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_211');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_211');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_211');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_211');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_211');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_211');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_211');" />通常
				</td>
				<td id="target_212">
					<p>310SP MC1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_212');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_212');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_212');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_212');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_212');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_212');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_212');" />通常
				</td>
			</tr>
		</table>
		<table class="ShiftSel" width="335%">
		<!-- 設備名（21行目） -->
			<tr>
				<th class="ShiftSel" id="status_74">
					<p>28Pi-280 280</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_74');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_74');" />通常
				</th>
				<th class="ShiftSel" id="status_75">
					<p>G05-026 026</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_75');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_75');" />通常
				</th>
				<th class="ShiftSel" id="status_76">
					<p>G5NP-227 227</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_76');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_76');" />通常
				</th>
				<th class="ShiftSel" id="status_77">
					<p>G5NP-229 229</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_77');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_77');" />通常
				</th>
				<th class="ShiftSel" id="status_78">
					<p>G5NP-231 231</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_78');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_78');" />通常
				</th>
				<th class="ShiftSel" id="status_79">
					<p>G5NP-233 233</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_79');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_79');" />通常
				</th>
				<th class="ShiftSel" id="status_80">
					<p>C-004 405</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_80');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_80');" />通常
				</th>
				<th class="ShiftSel" id="status_81">
					<p>20CF-241 241</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_81');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_81');" />通常
				</th>
				<th class="ShiftSel" id="status_82">
					<p>20CF-243 243</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_82');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_82');" />通常
				</th>
				<th class="ShiftSel" id="status_83">
					<p>20CF-245 245</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_83');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_83');" />通常
				</th>
				<th class="ShiftSel" id="status_84">
					<p>20CF-246 246</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_84');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_84');" />通常
				</th>
				<th class="ShiftSel" id="status_85">
					<p>G05-028 028</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_85');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_85');" />通常
				</th>
				<th class="ShiftSel" id="status_86">
					<p>G05-022 022</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_86');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_86');" />通常
				</th>
				<th class="ShiftSel" id="status_87">
					<p>SG5-030 030</p>
					<input type="radio" name="shift" value="切替" onClick="kirikae('status_87');" />切替
					<input type="radio" name="shift" value="通常" onClick="tujyo('status_87');" />通常
				</th>
			</tr>
			<tr>
				<!-- 製品名（22行目） -->
				<td id="target_213">
					<p>60871-12403 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_213');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_213');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_213');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_213');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_213');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_213');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_213');" />通常
				</td>
				<td id="target_214">
					<p>FZC-9261-16 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_214');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_214');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_214');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_214');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_214');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_214');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_214');" />通常
				</td>
				<td id="target_215">
					<p>D2803-57131 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_215');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_215');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_215');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_215');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_215');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_215');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_215');" />通常
				</td>
				<td id="target_216">
					<p>D2803-57132 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_216');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_216');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_216');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_216');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_216');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_216');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_216');" />通常
				</td>
				<td id="target_217">
					<p>D2803-57132 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_217');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_217');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_217');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_217');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_217');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_217');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_217');" />通常
				</td>
				<td id="target_218">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_218');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_218');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_218');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_218');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_218');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_218');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_218');" />通常
				</td>
				<td id="target_219">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_219');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_219');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_219');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_219');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_219');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_219');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_219');" />通常
				</td>
				<td id="target_220">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_220');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_220');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_220');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_220');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_220');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_220');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_220');" />通常
				</td>
				<td id="target_221">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_221');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_221');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_221');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_221');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_221');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_221');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_221');" />通常
				</td>
				<td id="target_222">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_222');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_222');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_222');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_222');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_222');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_222');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_222');" />通常
				</td>
				<td id="target_223">
					<p>K576B53301 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_223');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_223');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_223');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_223');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_223');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_223');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_223');" />通常
				</td>
				<td id="target_224">
					<p>412-211-80010 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_224');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_224');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_224');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_224');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_224');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_224');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_224');" />通常
				</td>
				<td id="target_225">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_225');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_225');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_225');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_225');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_225');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_225');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_225');" />通常
				</td>
				<td id="target_226">
					<p>300-C34-106 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_226');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_226');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_226');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_226');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_226');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_226');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_226');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（23行目） -->
				<td id="target_227">
					<p>60871-12403 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_227');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_227');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_227');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_227');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_227');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_227');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_227');" />通常
				</td>
				<td id="target_228">
					<p>FZC-9261-16 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_228');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_228');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_228');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_228');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_228');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_228');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_228');" />通常
				</td>
				<td id="target_229">
					<p>D2803-57131 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_229');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_229');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_229');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_229');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_229');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_229');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_229');" />通常
				</td>
				<td id="target_230">
					<p>D2803-57132 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_230');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_230');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_230');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_230');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_230');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_230');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_230');" />通常
				</td>
				<td id="target_231">
					<p>D2803-57132 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_231');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_231');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_231');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_231');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_231');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_231');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_231');" />通常
				</td>
				<td id="target_232">
					<p>JGB31-000010-B LN</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_232');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_232');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_232');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_232');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_232');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_232');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_232');" />通常
				</td>
				<td id="target_233">
					<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_233');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_233');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_233');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_233');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_233');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_233');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_233');" />通常
				</td>
				<td id="target_234">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_234');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_234');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_234');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_234');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_234');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_234');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_234');" />通常
				</td>
				<td id="target_235">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_235');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_235');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_235');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_235');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_235');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_235');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_235');" />通常
				</td>
				<td id="target_236">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_236');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_236');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_236');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_236');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_236');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_236');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_236');" />通常
				</td>
				<td id="target_237">
					<p>K576B53301 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_237');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_237');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_237');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_237');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_237');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_237');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_237');" />通常
				</td>
				<td id="target_238">
					<p>412-211-80010 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_238');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_238');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_238');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_238');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_238');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_238');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_238');" />通常
				</td>
				<td id="target_239">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_239');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_239');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_239');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_239');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_239');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_239');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_239');" />通常
				</td>
				<td id="target_240">
					<p>300-C34-106 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_240');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_240');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_240');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_240');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_240');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_240');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_240');" />通常
				</td>
			</tr>
			<tr>
				<!-- 製品名（24行目） -->
				<td id="target_241">
					<p>60871-12403 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_241');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_241');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_241');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_241');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_241');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_241');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_241');" />通常
				</td>
				<td id="target_242">
					<p>FZC-9261-16 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_242');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_242');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_242');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_242');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_242');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_242');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_242');" />通常
				</td>
				<td id="target_243">
					<p>D2803-57131 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_243');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_243');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_243');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_243');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_243');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_243');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_243');" />通常
				</td>
				<td id="target_244">
					<p>D2803-57130 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_244');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_244');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_244');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_244');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_244');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_244');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_244');" />通常
				</td>
				<td id="target_245">
					<p>D2803-57130 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_245');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_245');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_245');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_245');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_245');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_245');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_245');" />通常
				</td>
				<td id="target_246">
					<p>113122-31010 LN2</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_246');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_246');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_246');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_246');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_246');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_246');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_246');" />通常
				</td>
				<td id="target_247">
				<p>FZC-9178-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_247');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_247');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_247');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_247');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_247');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_247');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_247');" />通常
				</td>
				<td id="target_248">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_248');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_248');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_248');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_248');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_248');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_248');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_248');" />通常
				</td>
				<td id="target_249">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_249');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_249');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_249');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_249');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_249');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_249');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_249');" />通常
				</td>
				<td id="target_250">
					<p>FZC-9235-12 MN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_250');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_250');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_250');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_250');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_250');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_250');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_250');" />通常
				</td>
				<td id="target_251">
					<p>K576B53301 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_251');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_251');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_251');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_251');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_251');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_251');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_251');" />通常
				</td>
				<td id="target_252">
					<p>412-211-80010 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_252');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_252');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_252');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_252');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_252');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_252');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_252');" />通常
				</td>
				<td id="target_253">
					<p>FZC-9235-12 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_253');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_253');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_253');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_253');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_253');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_253');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_253');" />通常
				</td>
				<td id="target_254">
					<p>220-C34-105 LN1</p>
					<input type="radio" name="shift" value="夜勤" onClick="night('target_254');" />夜勤
					<input type="radio" name="shift" value="夜残" onClick="nightOver('target_254');" />夜残
					<input type="radio" name="shift" value="日勤" onClick="day('target_254');" />日勤
					<input type="radio" name="shift" value="日残" onClick="day_Over('target_254');" />日残
					<input type="radio" name="shift" value="1720" onClick="range_17('target_254');" />17時
					<input type="radio" name="shift" value="2000" onClick="range_20('target_254');" />20時
					<input type="radio" name="shift" value="通常" onClick="tujyo('target_254');" />通常
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
