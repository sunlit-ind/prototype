<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>設備稼働状況確認</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<style type="text/css">
			body {
				background: #2d2c41;
				font-family: 'Hiragino Kaku Gothic Pro', 'ヒラギノ角ゴ Pro W3', 'メイリオ', Meiryo, 'ＭＳ Ｐゴシック', sans-serif;
			}
			h1 {
				font-size: 2rem;
			}
			h2 {
				font-size: 1.5rem;
			}
			h3 {
				font-size: 1.2rem;
			}
			pre {
				font-size: 1rem;
				margin-bottom: 0;
			}
		</style>
		<!-- Vue.js を読み込む -->
		<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	</head>
	<body>
		<div id="app">
			<div class="jumbotron">
				<h1>稼働状況確認</h1>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-12 col-md-6">
					<h2>使用するデータ</h2>
					<div v-for="(item,index) in datasets" :key="index" class="row py-2">
						<div class="col-3">
							<input type="number" class="form-control" v-model.number="datasets[index]">
						</div>
						<div class="col">
							<input type="range" class="form-control" min="-500" max="500"
								v-model.number="datasets[index]">
						</div>
						<div class="col-auto">
							<button class="btn btn-primary" v-on:click="add(index)">足す</button>
							<button class="btn btn-secondary" v-on:click="del(index)"
								:disabled="datasets.length < 2">消す</button>
						</div>
					</div>
					<div class="row">
						<div class="col-12 my-5">
							<h3>生成されたデータ</h3>
							<div class="bg-light p-3">
								<pre>{{ toRaw(datasets) }}</pre>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6">
					<div class="col-12 mb-5">
						<h2>グラフの種類</h2>
						<select class="form-control" v-model="graphSelected">
							<option v-for="(item,index) in graphs" :key="index" :value="item.type">
								{{ item.name }}</option>
						</select>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col">
								<h2>グラフ</h2>
							</div>
							<div class="col-auto">
								<button class="btn btn-info" v-on:click="randData">ランダムに生成する</button>
							</div>
						</div>
						<div>
							<canvas id="charts"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			new Vue({
				el: '#app',
				data: {
					datasets:[
						100, -50, 200, 150, 200, 400
					],
					graphs:[{
						type: 'line',
		                name: '折れ線グラフ'
					},
					{
						type: 'bar',
						name: '棒グラフ'
		            },
		            {
						type: 'radar',
						name: 'レーダーチャート'
					},
					{
						type: 'pie',
						name: 'パイチャート'
					},
					{
						type: 'polarArea',
						name: 'ポーラチャート'
					}
					],
					graphSelected: 'line'
				},
				watch:{
					datasets:{
						handler(){
							this.canvas.data.datasets[0].data = this.datasets;
							this.canvas.data.labels = Array(this.datasets.length).fill('');
							this.canvas.update();
						}
					},
					graphSelected:{
						handler(){
							this.canvas.destroy();
							this.chart();
						}
					}
				},
		    	mounted(){
					this.chart();
				},
				methods:{
					toRaw(data){
						return JSON.stringify(data);
					},
					add(i) {
						this.datasets.splice(i, 0, this.datasets[i]);
					},
					del(i) {
						if (this.datasets.length > 1) {
							this.datasets.splice(i, 1);
						}
					},
					chart() {
						var vm = this;
						var ctx = document.getElementById("charts");
						vm.canvas = new Chart(ctx, {
							type: vm.graphSelected,
							data: {
								labels: Array(vm.datasets.length).fill(''),
								datasets: [{
									label: 'グラフ',
									backgroundColor: '#20B2AA',
									data: vm.datasets
								}]
							}
						});
					},
					randData() {
						var index = Math.floor(Math.random() * (10 - 2) + 2);
						var i = 0;
						var datasets = [];
						while (index > i) {
							datasets.push(Math.floor(Math.random() * (1000) - 500));
							i++;
						}
						this.datasets = datasets;
					}
				}
			})
		</script>
	</body>
</html>