<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<style type="text/css">
			* {
				margin: 0;
				padding: 0;
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				box-sizing: border-box;
			}

			body {
				background: #2d2c41;
				font-family: 'Open Sans', Arial, Helvetica, Sans-serif, Verdana, Tahoma;
			}

			ul {
				list-style-type: none;
			}

			a {
				color: #b63b4d;
				text-decoration: none;
			}

			/** =======================
			* Contenedor Principal
			===========================*/
			h1 {
				color: #FFF;
				font-size: 24px;
				font-weight: 400;
				text-align: center;
				margin-top: 80px;
			}

			h1 a {
				color: #c12c42;
				font-size: 16px;
			}

			.accordion {
				width: 100%;
				max-width: 360px;
				margin: 30px auto 20px;
				background: #FFF;
				-webkit-border-radius: 4px;
				-moz-border-radius: 4px;
				border-radius: 4px;
			}

			.accordion .link {
				cursor: pointer;
				display: block;
				padding: 15px 15px 15px 42px;
				color: #4D4D4D;
				font-size: 14px;
				font-weight: 700;
				border-bottom: 1px solid #CCC;
				position: relative;
				-webkit-transition: all 0.4s ease;
				-o-transition: all 0.4s ease;
				transition: all 0.4s ease;
			}

			.accordion li:last-child .link {
				border-bottom: 0;
			}

			.accordion li i {
				position: absolute;
				top: 16px;
				left: 12px;
				font-size: 18px;
				color: #595959;
				-webkit-transition: all 0.4s ease;
				-o-transition: all 0.4s ease;
				transition: all 0.4s ease;
			}

			.accordion li i.fa-chevron-down {
				right: 12px;
				left: auto;
				font-size: 16px;
			}

			.accordion li.open .link {
				color: #b63b4d;
			}

			.accordion li.open i {
				color: #b63b4d;
			}
			.accordion li.open i.fa-chevron-down {
				-webkit-transform: rotate(180deg);
				-ms-transform: rotate(180deg);
				-o-transform: rotate(180deg);
				transform: rotate(180deg);
			}

			.accordion li.default .submenu {display: block;}
			/**
			* Submenu
			-----------------------------*/
			.submenu {
				display: none;
				background: #444359;
				font-size: 14px;
			}

			.submenu li {
				border-bottom: 1px solid #4b4a5e;
			}

			.submenu a {
				display: block;
				text-decoration: none;
				color: #d9d9d9;
				padding: 12px;
				padding-left: 42px;
				-webkit-transition: all 0.25s ease;
				-o-transition: all 0.25s ease;
				transition: all 0.25s ease;
			}

			.submenu a:hover {
				background: #b63b4d;
				color: #FFF;
			}
		</style>
		<!-- jQueryをCDNから読み込み -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript">
			$(function() {
				var Accordion = function(el, multiple) {
					this.el = el || {};
					this.multiple = multiple || false;

					// Variables privadas
					var links = this.el.find('.link');
		        	// Evento
		        	links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
				}

				Accordion.prototype.dropdown = function(e) {
					var $el = e.data.el;
					$this = $(this),
					$next = $this.next();

					$next.slideToggle();
					$this.parent().toggleClass('open');

					if (!e.data.multiple) {
						$el.find('.submenu').not($next).slideUp().parent().removeClass('open');
					};
				}

				var accordion = new Accordion($('#accordion'), false);
			});
		</script>
		<title>切削工場</title>
	</head>
	<body>
		<h1>切削工場管理メニュー </h1>
		<!-- Contenedor -->
		<ul id="accordion" class="accordion">
			<li>
				<div class="link"><i class="fa fa-paint-brush"></i>生産管理<i class="fa fa-chevron-down"></i></div>
				<ul class="submenu">
					<li><a href="#">生産指示</a></li>
					<li><a href="FactoryIndex1.jsp">生産計画</a></li>
				</ul>
			</li>
			<li class="default open">
				<div class="link"><i class="fa fa-code"></i>設備管理<i class="fa fa-chevron-down"></i></div>
				<ul class="submenu">
					<li><a href="FacilityRec.jsp">設備管理記録票</a></li>
					<li><a href="FacilitySituation.jsp">設備稼働状況</a></li>
				</ul>
			</li>
			<li>
				<div class="link"><i class="fa fa-mobile"></i>受注管理<i class="fa fa-chevron-down"></i></div>
				<ul class="submenu">
					<li><a href="#">受注入力</a></li>
					<li><a href="#">受注照会</a></li>
				</ul>
			</li>
			<li><div class="link"><i class="fa fa-globe"></i>マスタメンテナンス<i class="fa fa-chevron-down"></i></div>
				<ul class="submenu">
					<li><a href="#">製品マスタ</a></li>
					<li><a href="#">設備マスタ</a></li>
					<li><a href="#">作業者マスタ</a></li>
					<li><a href="#">工程マスタ</a></li>
				</ul>
			</li>
		</ul>
	</body>
</html>