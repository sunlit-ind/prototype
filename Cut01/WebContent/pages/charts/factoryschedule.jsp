<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>スケジュールビューワ</title>

		<link rel="stylesheet" type="text/css" href="../../css/reset.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="../../css/example.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="../../css/jquery.ganttView.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="../../css/jquery-ui-1.8.2.custom.css" />
		<script type="text/javascript" src="../../js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="../../js/jquery-ui-1.8.2.custom.min.js"></script>
		<script type="text/javascript" src="../../js/date.js"></script>
		<script type="text/javascript" src="../../js/holidays.js"></script>
		<script type="text/javascript" src="../../js/jquery.ganttView.js"></script>

		<script type="text/javascript">
			$(function () {
				// data area--------------
				var ganttData = [
					{id: 1, name: "タスク1", series: [
						{id: 1, name: "担当者1", text: "Test1-1", start: new Date(2020,00,02), end: new Date(2020,00,05), readOnly: true},
						{id: 2, name: "担当者2", text: "Test1-2", start: new Date(2020,00,02), end: new Date(2020,00,05)}
					]},
					{id: 2, name: "タスク2", series: [{id: 3, name: "担当者2", text: "Test2", start: new Date(2020,00,05), end: new Date(2020,00,08)}]},
					{id: 3, name: "タスク3", series: [{id: 4, name: "担当者3", start: new Date(2020,00,09), end: new Date(2020,00,12)}]},
					{id: 4, name: "タスク4", series: [{id: 5, name: "担当者4", start: new Date(2020,00,02), end: new Date(2020,00,08), readOnly: true}]},
					{id: 5, name: "タスク5", series: [{id: 6, name: "担当者5", start: new Date(2020,00,08), end: new Date(2020,00,15)}]},
					{id: 6, name: "タスク6", series: [{id: 6, name: "担当者6", start: new Date(2020,00,08), end: new Date(2020,00,15)}]}
				];
				//-------------------------
				var selectedObj = null;

				//DOM要素からjQeryオブジェクトを生成
				$("#ganttChart").ganttView({
					showWeekends: true, //週末表示
					data: ganttData,//データ
					cellWidth: 21,//セル幅
					start: new Date(2020,00,01),//カレンダーのスタート
					end: new Date(2020,12,31),//カレンダーのエンド
					slideWidth: 850,//表示幅
					excludeWeekends: true,//週末の除外
					showDayOfWeek: true,
					showHolidays: true,
					excludeHolidays: true,

					clicked: function (o) { //クリック時
						selectedObj = o;
						var data = selectedObj.data('block-data');
						var itemName = data.itemName ? data.itemName : "";
						var seriesName = data.seriesName ? data.seriesName: "";
						var text = data.text ? data.text : "";

						var sYYYY = data.start.getYear();
						sYYYY = sYYYY < 1000 ? sYYYY + 1900 : sYYYY;
						var sMM = data.start.getMonth() + 1;
						var sDD = data.start.getDate();

						var eYYYY = data.end.getYear();
						eYYYY = eYYYY < 1000 ? eYYYY + 1900 : eYYYY;
						var eMM = data.end.getMonth() + 1;
						var eDD = data.end.getDate();

						$('#ganttData-item-id').val(data.itemId);
						$('#ganttData-item-name').val(itemName);
						$('#ganttData-series-id').val(data.seriesId);
						$('#ganttData-series-name').val(seriesName);
						$('#ganttData-series-start').val(sYYYY + "/" + sMM + "/" + sDD);
						$('#ganttData-series-end').val(eYYYY + "/" + eMM + "/" + eDD);
						$('#ganttData-series-text').val(text);

					},
					dblClicked: function (o) { //ダブルクリック時
						if (selectedObj == null) { return; }

						if (selectedObj.data('block-data').seriesId == o.data('block-data').seriesId) {
							$('#ganttData-reset').trigger("click");
						}
					},
					changed: function (o) {
						o.trigger("click");
					}
				});

				$('#ganttData-add').click(function () {
					var name = $('#ganttData-series-name').val();
					name = (name == "") ? null : name;

					var text = $('#ganttData-series-text').val();
					text = (text == "") ? null : text;

					var start = $('#ganttData-series-start').val().split("/");
					var end = $('#ganttData-series-end').val().split("/");

					var data = [{
						id: parseInt($('#ganttData-item-id').val()),
						name: $('#ganttData-item-name').val(),
						series: [{
							id: parseInt($('#ganttData-series-id').val()),
							name: name,
							text: text,
							start: new Date(start[0], parseInt(start[1]) - 1, start[2]),
							end: new Date(end[0], parseInt(end[1]) - 1, end[2]),
						}]
					}];
					$().ganttView.addData(data);

				});

				$('#ganttData-refresh').click(function () {
					if (selectedObj == null) { return; }

					var data = selectedObj.data('block-data');
					data.itemName = $('#ganttData-item-name').val();
					data.seriesName = $('#ganttData-series-name').val();

					var start = $("#ganttData-series-start").val().split("/");
					data.start = new Date(start[0], parseInt(start[1]) - 1, start[2]);

					var end = $("#ganttData-series-end").val().split("/");
					data.end = new Date(end[0], parseInt(end[1]) - 1, end[2]);

					data.text = $('#ganttData-series-text').val();

					selectedObj.refreshGanttData();
				});

				$('#ganttData-delete').click(function () {
					if (selectedObj == null) { return; }

					selectedObj.deleteGanttData(selectedObj);
					$('#ganttData-reset').trigger("click");
				});

				$('#ganttData-reset').click(function () {
					selectedObj = null;
					$('.ganttData-input input').val("");
				});
			});
		</script>
	</head>

	<body>
		<div id="ganttChart"></div>
		<br/>

		<div id="ganttData">
			<div class="ganttData-item">
				<div class="ganttData-header">製品コード</div>
				<div class="ganttData-input"><input type="text" id="ganttData-item-id" /></div>
			</div>
			<div class="ganttData-item">
				<div class="ganttData-header">製品名</div>
				<div class="ganttData-input"><input type="text" id="ganttData-item-name" /></div>
			</div>
<!--
			<div class="ganttData-item">
				<div class="ganttData-header">Series ID</div>
				<div class="ganttData-input"><input type="text" id="ganttData-series-id" /></div>
			</div>
-->

			<div class="ganttData-item">
				<div class="ganttData-header">担当者</div>
				<div class="ganttData-input"><input type="text" id="ganttData-series-name" /></div>
			</div>
			<div class="ganttData-item">
				<div class="ganttData-header">作業開始日</div>
				<div class="ganttData-input"><input type="text" id="ganttData-series-start" /></div>
			</div>
			<div class="ganttData-item">
				<div class="ganttData-header">作業終了日</div>
				<div class="ganttData-input"><input type="text" id="ganttData-series-end" /></div>
			</div>
			<div class="ganttData-item">
				<div class="ganttData-header">工程</div>
				<div class="ganttData-input"><input type="text" id="ganttData-series-text" /></div>
			</div>
			<div class="ganttData-item">
				<input type="button" id="ganttData-reset" value="リセット" />
				<input type="button" id="ganttData-add" value="追加" />
				<input type="button" id="ganttData-refresh" value="更新" />
				<input type="button" id="ganttData-delete" value="削除" />
			</div>
		</div>
	</body>
</html>