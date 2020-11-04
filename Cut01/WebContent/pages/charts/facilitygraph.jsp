<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<style>
			body { background: #fafafa; }
			canvas { display:block; background:#ffe; margin:0 auto; }
		</style>
		<script type="text/javascript">
			var datas = [50,30,20,80,40,100,70];
			//  var datas = [0.0%, 20.0%, 40.0%, 60.0%, 80.0%, 100.0%, 120.0%];
			//  var datas = [0.4, 0.2, 1, 0.3, 0.4, 0.7]; //データ
			yMax = Math.max.apply({}, datas);
			window.onload = function() {
			var cv1 = document.getElementById('cvs1');
			var ctx = cv1.getContext('2d');
			if (!cv1||!cv1.getContext) { return false; }
				var spcW=40;            // Y軸左のスペース
				var spcH=30;            // X軸下のスペース
				var groundW= cv1.getAttribute("width")-spcW; // グラフ領域W
				var groundH= cv1.getAttribute("height")-spcH;// グラフ領域H
				var groundX0= spcW; var groundY0= groundH;   // 原点位置
				var pichX = groundW/datas.length;            // X目盛ピッチ
				DmYMx = Math.pow(10,Math.ceil(Math.log(yMax)/Math.log(10)));
				var cnstH= 210/DmYMx;
				pichH = DmYMx/10;                           //Y目盛ピッチ
				ctx.beginPath();                  //現在のパスをリセット
				ctx.save();                       //現在の描画条件を保管
				// タイトル描画
				ctx.textAlign = "center";
				ctx.textBaseline = "top";
				ctx.font = "12pt Arial";
				ctx.fillStyle = "rgb(0,0,180)";
				ctx.fillText('稼働状況',groundX0-10+0.5*groundW, 5 );
				ctx.restore();                    //描画条件を元に戻す
				ctx.save();                       //現在の描画条件を保管
				// X軸描画
				ctx.textAlign = "center";
				ctx.textBaseline = "top";
				ctx.strokeStyle = "rgb(0,0,0)";
				ctx.moveTo( groundX0, groundY0 );
				ctx.lineTo( groundX0+groundW-20, groundY0 );
				for (var i = 0; i < groundW/pichX; i++){
					ctx.moveTo( groundX0+i*pichX, groundY0 );
					ctx.lineTo( groundX0+i*pichX, groundY0-5 );
					ctx.fillText(i,groundX0+i*pichX,groundY0+2 );
				}
				ctx.fillText('日付',0.5*groundW+groundX0,groundY0+15 );
				// Y軸描画
				ctx.moveTo( groundX0, groundY0 );
				ctx.lineTo( groundX0, 25 );
				ctx.textAlign = "end";
				ctx.textBaseline = "middle";
				for (var i = 0; i < groundH/pichH/cnstH-1; i++){
					ctx.moveTo( groundX0, groundY0-i*pichH*cnstH );
					ctx.lineTo( groundX0+5, groundY0-i*pichH*cnstH );
					ctx.fillText(i*pichH,groundX0-3,groundY0-i*pichH*cnstH );
				}
				ctx.rotate(-0.5* Math.PI);
				ctx.fillText('設備総合効率(%)',-0.45*groundY0,groundX0-30 );
				ctx.stroke();                     //サブパスを描画
				ctx.restore();                    //描画条件を元に戻す
				ctx.save();                       //現在の描画条件を保管
				ctx.beginPath();                  //現在のパスをリセット
				// line
				ctx.fillStyle = "rgb(0,180,0)";
				ctx.strokeStyle = "rgb(0,180,0)";
				for (var i = 0; i < datas.length; i++){
					ctx.moveTo(groundX0+i*pichX, groundY0-cnstH*datas[i]);
					if (i!=0){
						ctx.lineTo(groundX0+(i-1)*pichX, groundY0-cnstH*datas[i-1]);
					}
					ctx.fillRect(groundX0+i*pichX-2, groundY0-cnstH*datas[i]-2,4,4);
					ctx.textBaseline = "bottom"; ctx.textAlign = "center";
					ctx.fillText(datas[i], groundX0+i*pichX, groundY0-cnstH*datas[i]);
				}
				ctx.stroke();                     //サブパスを描画
				ctx.restore();                    //描画条件を元に戻す
			}; // end of onload -----------------------
		</script>
	<title>切削工場</title>
	</head>
	<body>
		<canvas id="cvs1" width="960" height="500"></canvas>
	</body>
</html>