<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>scheduler</title>

		<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/hogan.js/3.0.2/hogan.min.js"></script>
		<script src="../src/templates/templates.js"></script>
		<script src="../src/scheduler.js"></script>
    <!--
        Alternatively load the dist version:
        <script src="../dist/scheduler.js"></script>
        Or
        <script src="../dist/scheduler.min.js"></script>
    -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" href="../dist/scheduler.css">
		<style>
			.meeting{
				background-color: rgba(255, 188, 0, 0.3);
			}
			.nonsense{
				background-color: rgba(255, 18, 0, 0.3);
			}
			.racing{
				background-color: rgba(0, 79, 255, 0.3);
			}
			#scheduler{
            	border: 1px solid #e7e7e7;
        	}
    	</style>
	</head>
	<body>
		<div class="container">
			<h3>スケジューラへようこそ</h3>
			<div id="scheduler"></div>
			<h3>時間の選択</h3>
			<button id="times-button" class="btn btn-default">時間の選択</button>
			<div id="times"></div>
			<h3>Show/hide selector</h3>
			<button id="toggle-selector-button" class="btn btn-default">Toggle selector</button>
			<h3>Callback on appointment click</h3>
			<pre id="onClickAppointment"></pre>
		</div>
		<script>
			$(document).ready(function(){
				var list = [
				{
					'name': 'Chewbacca',
					'appointments': [
						{'start': '08:05', 'end': '09:00', 'title': 'Make strange noises',             'class': 'nonsense', 'payload': {myId: 1}},
						{'start': '08:50', 'end': '10:10', 'title': 'Somehow Han Solo understands me', 'class': 'nonsense', 'payload': {myId: 2}}
					]
				},
				{
					'name': 'Darth Vader',
					'appointments': [
						{'start': '12:00', 'end': '13:30', 'title': 'Swing lightsaber in anger', 'class': 'meeting'},
						{'start': '14:30', 'end': '15:30', 'title': 'Test the death star superlaser'},
						{'start': '14:00', 'end': '14:30', 'title': 'Strangle people with lack of faith', 'class': 'meeting'}
					]
                },
                {
                    'name': 'The emperor',
                    'appointments': [
                        {'start': '15:00', 'end': '18:30', 'title': 'Execute order 66',                   'class': 'meeting'},
                        {'start': '06:00', 'end': '14:30', 'title': 'Apply moisturizer to deformed face', 'class': 'meeting'}
                    ]
                },
                {
                    'name': 'Jabba the hut',
                    'appointments': [
                        {'start': '10:00', 'end': '10:30', 'title': 'Oversee pod race',                            'class': 'racing'},
                        {'start': '11:00', 'end': '11:20', 'title': 'Chill in the lounge and sacrifice prisoners', 'class': 'meeting'}
                    ]
                }
            ];

            var steps = [
                '08:05',
                '09:00',
                '10:00',
                '11:30',
                '12:05',
                '13:00',
                '14:00',
                '15:00',
                '16:00',
                '17:00'
            ];

            var onClickAppointment = function(payload){
                $("#onClickAppointment").html(JSON.stringify(payload));
            };

            var $scheduler = $("#scheduler").schedulerjs({
                'list': list,
                'steps': steps,
                'pixelsPerHour': 140,
                'start': '09:30',
                'end': '10:30',
                'headName': 'Members',
                'onClickAppointment': onClickAppointment
            });

            // 初期化後の時間の変更
            $scheduler.schedulerjs('start', '11:00');
            $scheduler.schedulerjs('end', '11:30');

            $("#times-button").click(function(){
                var times = $scheduler.schedulerjs('selected');
                $("#times").html(times.start + ' - ' + times.end);
            });

            $("#toggle-selector-button").click(function(){
                $scheduler.schedulerjs('toggleSelector');

                // Also possible:
                // $scheduler.schedulerjs('showSelector');
                // $scheduler.schedulerjs('hideSelector');
            });

            /* Update list
            $scheduler.schedulerjs('update', [
                {
                    name: 'hello',
                    appointments: [
                        {start: '10:00', end: '11:00', title: 'myesh'}
                    ]
                }
            ]);
            */
        });
    </script>
</body>
</html>