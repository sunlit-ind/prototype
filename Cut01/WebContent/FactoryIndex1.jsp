<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>切削工場</title>
		<!-- 画面の幅に対応するようにブラウザに指示する-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 最適なフォントを実現するためのCSS -->
		<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
		<!-- Ionicons（WEB アイコンフォント） -->
		<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<!-- Tempusdominus Bbootstrap 4（カレンダーからの日付の入力ツール -->
		<link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
		<!-- iCheck(チェックボックスとラジオボタンの表示をきれいに見せてくれるjQueryプラグイン) -->
		<link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
		<!-- JQVMap(地図) -->
		<link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
		<!-- テーマのスタイル設定 -->
		<link rel="stylesheet" href="dist/css/adminlte.min.css">
		<!-- スクロールバーの設定 -->
		<link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
		<!-- Daterange picker（日付範囲） -->
		<link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
		<!-- summernote（入力可能なテキストエディタの表示） -->
		<link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
		<!-- Google Font: Source Sans Pro -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	</head>

	<body class="hold-transition sidebar-mini layout-fixed">
		<div class="wrapper">
			<!-- Navbar -->
			<nav class="main-header navbar navbar-expand navbar-white navbar-light">
				<!-- Left navbar links -->
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" data-widget="pushmenu" href="#" role="button">
							<i class="fas fa-bars"></i>
						</a>
					</li>
					<li class="nav-item d-none d-sm-inline-block">
						<a href="FactoryIndex1.jsp" class="nav-link">Home</a>
					</li>

<!--
					<li class="nav-item d-none d-sm-inline-block">
						<a href="#" class="nav-link">Contact</a>
					</li>
-->

				</ul>
				<!-- SEARCH FORM -->
				<form class="form-inline ml-3">
					<div class="input-group input-group-sm">
						<input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-navbar" type="submit">
								<i class="fas fa-search"></i>
							</button>
						</div>
					</div>
				</form>
				<!-- Right navbar links -->
				<ul class="navbar-nav ml-auto">
					<!-- Messages Dropdown Menu -->
					<!-- Notifications Dropdown Menu -->
					<li class="nav-item">
						<a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
							<i class="fas fa-th-large"></i>
						</a>
					</li>
				</ul>
			</nav>
			<!-- /.navbar -->
			<!-- Main Sidebar Container -->
			<aside class="main-sidebar sidebar-dark-primary elevation-4">
				<!-- Brand Logo -->
				<a href="FactoryIndex1.jsp" class="brand-link">
					<img src="dist/img/SUNLIT_rogo.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
					style="opacity: .8">
					<span class="brand-text font-weight-light">SUNLIT.ind co.,Ltd.</span>
				</a>
				<!-- Sidebar -->
				<div class="sidebar">
					<!-- Sidebar user panel (optional) -->

<!--
					<div class="user-panel mt-3 pb-3 mb-3 d-flex">
						<div class="image">
							<img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
						</div>
						<div class="info">
							<a href="#" class="d-block">Alexander Pierce</a>
						</div>
					</div>
-->
					<!-- Sidebar Menu -->
					<nav class="mt-2">
						<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
							<!-- Add icons to the links using the .nav-icon class
							with font-awesome or any other icon font library -->
							<li class="nav-item has-treeview menu-open">
								<a href="#" class="nav-link active">
									<i class="nav-icon fas fa-tachometer-alt"></i>
									<p>ダッシュボード<i class="right fas fa-angle-left"></i></p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item">
										<a href="./FactoryIndex1.jsp" class="nav-link active">
											<i class="far fa-circle nav-icon"></i>
											<!-- <p>Dashboard v1</p> -->
											<p>生産計画</p>
										</a>
										<!-- 生産計画section -->
										<ul class="nav nav-treeview">
											<li class="nav-item">
												<!-- <a href="pages/charts/chartjs.jsp" class="nav-link"> -->
												<a href="pages/examples/headindex.jsp" class="nav-link">
													<!-- <i class="far fa-circle nav-icon"></i> -->

													<p>・生産指示</p>
												</a>
											</li>
											<li class="nav-item">
												<!-- <a href="pages/charts/flot.jsp" class="nav-link"> -->
												<a href="pages/charts/factoryschedule.jsp" class="nav-link">
													<!-- <i class="far fa-circle nav-icon"></i> -->

													<p>・スケジューリング</p>
												</a>
											</li>

											<li class="nav-item">
												<a href="#" class="nav-link">
													<!-- <i class="far fa-circle nav-icon"></i> -->

													<p>・在庫管理</p>
												</a>
											</li>

										</ul>
									</li>
									<li class="nav-item">
										<a href="./FactoryIndex2.jsp" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>設備管理</p>
										</a>
										<!-- 設備管理section -->
										<ul class="nav nav-treeview">
											<li class="nav-item">
												<!-- <a href="pages/charts/chartjs.jsp" class="nav-link"> -->
												<a href="pages/examples/facilityrec.jsp" class="nav-link">
													<!-- <i class="far fa-circle nav-icon"></i> -->

													<p>・設備記録</p>
												</a>
											</li>
											<li class="nav-item">
												<!-- <a href="pages/charts/flot.jsp" class="nav-link"> -->
												<a href="pages/charts/flot.jsp" class="nav-link">
													<!-- <i class="far fa-circle nav-icon"></i> -->

													<p>・稼働状況</p>
												</a>
											</li>
										</ul>
									</li>
<!--
									<li class="nav-item">
										<a href="./FactoryIndex3.jsp" class="nav-link">
											<i class="far fa-circle nav-icon"></i>
											<p>Dashboard v3</p>
										</a>
									</li>
-->
								</ul>
							</li>

							<li class="nav-item">
								<a href="pages/xlsx_index.jsp" class="nav-link">
									<i class="nav-icon fas fa-th"></i>
									<p>Excel<span class="right badge badge-danger"></span></p>
								</a>
							</li>

<!--
								<li class="nav-item has-treeview">
									<a href="#" class="nav-link">
										<i class="nav-icon fas fa-copy"></i>
										<p>
											Layout Options
											<i class="fas fa-angle-left right"></i>
											<span class="badge badge-info right">6</span>
										</p>
									</a>
									<ul class="nav nav-treeview">
										<li class="nav-item">
											<a href="pages/layout/top-nav.html" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Top Navigation</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/layout/top-nav-sidebar.html" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Top Navigation + Sidebar</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/layout/boxed.html" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Boxed</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/layout/fixed-sidebar.html" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Fixed Sidebar</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/layout/fixed-topnav.html" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Fixed Navbar</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/layout/fixed-footer.html" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Fixed Footer</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/layout/collapsed-sidebar.html" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Collapsed Sidebar</p>
											</a>
										</li>
									</ul>
								</li>
-->

								<li class="nav-item has-treeview">
									<a href="#" class="nav-link">
										<i class="nav-icon fas fa-chart-pie"></i>
										<p>Charts<i class="right fas fa-angle-left"></i></p>
									</a>
									<ul class="nav nav-treeview">
										<li class="nav-item">
											<a href="pages/charts/chartjs.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>ChartJS</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/charts/flot.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Flot</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/charts/inline.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Inline</p>
											</a>
										</li>
									</ul>
								</li>
								<!-- UI Elements section -->
								<li class="nav-item has-treeview">
									<a href="#" class="nav-link">
										<i class="nav-icon fas fa-tree"></i>
										<p>UI Elements<i class="fas fa-angle-left right"></i></p>
									</a>
									<ul class="nav nav-treeview">
										<li class="nav-item">
											<a href="pages/UI/general.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>General</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/UI/icons.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Icons</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/UI/buttons.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Buttons</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/UI/sliders.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Sliders</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/UI/modals.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Modals & Alerts</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/UI/navbar.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Navbar & Tabs</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/UI/timeline.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Timeline</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/UI/ribbons.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Ribbons</p>
											</a>
										</li>
									</ul>
								</li>
								<li class="nav-item has-treeview">
									<a href="#" class="nav-link">
										<i class="nav-icon fas fa-edit"></i>
										<p>Forms<i class="fas fa-angle-left right"></i></p>
									</a>
									<ul class="nav nav-treeview">
										<li class="nav-item">
											<a href="pages/forms/general.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>General Elements</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/forms/advanced.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Advanced Elements</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/forms/editors.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Editors</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/forms/validation.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Validation</p>
											</a>
										</li>
									</ul>
								</li>
								<li class="nav-item has-treeview">
									<a href="#" class="nav-link">
										<i class="nav-icon fas fa-table"></i>
										<p>Tables<i class="fas fa-angle-left right"></i></p>
									</a>
									<ul class="nav nav-treeview">
										<li class="nav-item">
											<a href="pages/tables/simple.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Simple Tables</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/tables/data.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>DataTables</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/tables/jsgrid.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>jsGrid</p>
											</a>
										</li>
									</ul>
								</li>
								<li class="nav-header">EXAMPLES</li>
								<li class="nav-item">
									<a href="pages/calendar.jsp" class="nav-link">
										<i class="nav-icon far fa-calendar-alt"></i>
										<p>Calendar<span class="badge badge-info right">2</span></p>
									</a>
								</li>
								<li class="nav-item">
									<a href="pages/gallery.jsp" class="nav-link">
										<i class="nav-icon far fa-image"></i>
										<p>Gallery</p>
									</a>
								</li>
								<li class="nav-item has-treeview">
									<a href="#" class="nav-link">
										<i class="nav-icon far fa-envelope"></i>
										<p>Mailbox<i class="fas fa-angle-left right"></i></p>
									</a>
									<ul class="nav nav-treeview">
										<li class="nav-item">
											<a href="pages/mailbox/mailbox.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Inbox</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/mailbox/compose.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Compose</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/mailbox/read-mail.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Read</p>
											</a>
										</li>
									</ul>
								</li>
								<li class="nav-item has-treeview">
									<a href="#" class="nav-link">
										<i class="nav-icon fas fa-book"></i>
										<p>Pages<i class="fas fa-angle-left right"></i></p>
									</a>
									<ul class="nav nav-treeview">
										<li class="nav-item">
											<a href="pages/examples/invoice.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Invoice</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/profile.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Profile</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/e-commerce.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>E-commerce</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/projects.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Projects</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/project-add.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Project Add</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/project-edit.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Project Edit</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/project-detail.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Project Detail</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/contacts.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Contacts</p>
											</a>
										</li>
									</ul>
								</li>
								<li class="nav-item has-treeview">
									<a href="#" class="nav-link">
										<i class="nav-icon far fa-plus-square"></i>
										<p>Extras<i class="fas fa-angle-left right"></i></p>
									</a>
									<ul class="nav nav-treeview">
										<li class="nav-item">
											<a href="pages/examples/login.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
													<p>Login</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/register.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Register</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/forgot-password.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Forgot Password</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/recover-password.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
													<p>Recover Password</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/lockscreen.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Lockscreen</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/legacy-user-menu.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Legacy User Menu</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/language-menu.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Language Menu</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/404.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Error 404</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/500.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Error 500</p>
                							</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/pace.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Pace</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="pages/examples/blank.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Blank Page</p>
											</a>
										</li>
										<li class="nav-item">
											<a href="starter.jsp" class="nav-link">
												<i class="far fa-circle nav-icon"></i>
												<p>Starter Page</p>
											</a>
										</li>
									</ul>
								</li>
								<li class="nav-header">MISCELLANEOUS</li>
									<li class="nav-item">
										<a href="https://adminlte.io/docs/3.0" class="nav-link">
											<i class="nav-icon fas fa-file"></i>
											<p>Documentation</p>
										</a>
									</li>
									<li class="nav-header">MULTI LEVEL EXAMPLE</li>
										<li class="nav-item">
											<a href="#" class="nav-link">
												<i class="fas fa-circle nav-icon"></i>
												<p>Level 1</p>
											</a>
										</li>
										<li class="nav-item has-treeview">
											<a href="#" class="nav-link">
												<i class="nav-icon fas fa-circle"></i>
												<p>Level 1<i class="right fas fa-angle-left"></i></p>
											</a>
											<ul class="nav nav-treeview">
												<li class="nav-item">
													<a href="#" class="nav-link">
														<i class="far fa-circle nav-icon"></i>
														<p>Level 2</p>
													</a>
												</li>
												<li class="nav-item has-treeview">
													<a href="#" class="nav-link">
														<i class="far fa-circle nav-icon"></i>
														<p>Level 2<i class="right fas fa-angle-left"></i></p>
													</a>
													<ul class="nav nav-treeview">
														<li class="nav-item">
															<a href="#" class="nav-link">
																<i class="far fa-dot-circle nav-icon"></i>
																<p>Level 3</p>
															</a>
														</li>
														<li class="nav-item">
															<a href="#" class="nav-link">
																<i class="far fa-dot-circle nav-icon"></i>
																<p>Level 3</p>
															</a>
														</li>
														<li class="nav-item">
															<a href="#" class="nav-link">
																<i class="far fa-dot-circle nav-icon"></i>
																<p>Level 3</p>
															</a>
														</li>
													</ul>
												</li>
												<li class="nav-item">
													<a href="#" class="nav-link">
														<i class="far fa-circle nav-icon"></i>
														<p>Level 2</p>
													</a>
												</li>
											</ul>
										</li>
										<li class="nav-item">
											<a href="#" class="nav-link">
												<i class="fas fa-circle nav-icon"></i>
												<p>Level 1</p>
											</a>
										</li>
										<li class="nav-header">LABELS</li>
											<li class="nav-item">
												<a href="#" class="nav-link">
													<i class="nav-icon far fa-circle text-danger"></i>
													<p class="text">Important</p>
												</a>
											</li>
											<li class="nav-item">
												<a href="#" class="nav-link">
													<i class="nav-icon far fa-circle text-warning"></i>
													<p>Warning</p>
												</a>
											</li>
											<li class="nav-item">
												<a href="#" class="nav-link">
													<i class="nav-icon far fa-circle text-info"></i>
													<p>Informational</p>
												</a>
											</li>
										</ul>
									</nav>
									<!-- /.sidebar-menu -->
								</div>
								<!-- /.sidebar -->
							</aside>
							<!-- Content Wrapper. Contains page content -->
							<div class="content-wrapper">
								<!-- Content Header (Page header) -->
								<div class="content-header">
									<div class="container-fluid">
										<div class="row mb-2">
											<div class="col-sm-6">
												<h1 class="m-0 text-dark">Dashboard</h1>
											</div><!-- /.col -->
											<div class="col-sm-6">
												<ol class="breadcrumb float-sm-right">
													<li class="breadcrumb-item"><a href="#">Home</a></li>
													<li class="breadcrumb-item active">生産計画</li>
												</ol>
											</div><!-- /.col -->
										</div><!-- /.row -->
									</div><!-- /.container-fluid -->
								</div>
								<!-- /.content-header -->
								<!-- Main content -->
								<section class="content">
									<div class="container-fluid">
										<!-- Small boxes (Stat box) -->
										<div class="row">
											<div class="col-lg-3 col-6">
												<!-- small box -->
												<div class="small-box bg-info">
													<div class="inner">
														<h3>150</h3>
														<p>受注情報</p>
													</div>
													<div class="icon">
														<i class="ion ion-bag"></i>
													</div>
													<a href="#" class="small-box-footer">More info
														<i class="fas fa-arrow-circle-right"></i>
													</a>
												</div>
											</div>
											<!-- ./col -->

											<div class="col-lg-3 col-6">
												<!-- small box -->
<!--
												<div class="small-box bg-success">
													<div class="inner">
														<h3>53<sup style="font-size: 20px">%</sup></h3>
														<p>Bounce Rate</p>
													</div>
													<div class="icon">
														<i class="ion ion-stats-bars"></i>
													</div>
													<a href="#" class="small-box-footer">More info
														<i class="fas fa-arrow-circle-right"></i>
													</a>
												</div>
-->
											</div>

											<!-- ./col -->
											<div class="col-lg-3 col-6">
												<!-- small box -->

<!--
												<div class="small-box bg-warning">
													<div class="inner">
														<h3>44</h3>
														<p>User Registrations</p>
													</div>
													<div class="icon">
														<i class="ion ion-person-add"></i>
													</div>
													<a href="#" class="small-box-footer">More info
														<i class="fas fa-arrow-circle-right"></i>
													</a>
												</div>
-->
											</div>
											<!-- ./col -->
											<div class="col-lg-3 col-6">
												<!-- small box -->
<!--
												<div class="small-box bg-danger">
													<div class="inner">
														<h3>65</h3>
														<p>Unique Visitors</p>
													</div>
													<div class="icon">
														<i class="ion ion-pie-graph"></i>
													</div>
													<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
												</div>
-->
											</div>
											<!-- ./col -->
										</div>
										<!-- /.row -->
									<!-- Main row -->
									<div class="row">
										<!-- Left col -->
										<section class="col-lg-7 connectedSortable">
											<!-- Custom tabs (Charts with tabs)-->
											<div class="card">
												<div class="card-header">
													<h3 class="card-title">
														<i class="fas fa-chart-pie mr-1"></i>Orders
													</h3>
													<div class="card-tools">
														<ul class="nav nav-pills ml-auto">
															<li class="nav-item">
																<a class="nav-link active" href="#revenue-chart" data-toggle="tab">Area</a>
															</li>
															<li class="nav-item">
																<a class="nav-link" href="#sales-chart" data-toggle="tab">Donut</a>
															</li>
														</ul>
													</div>
												</div><!-- /.card-header -->
												<div class="card-body">
													<div class="tab-content p-0">
														<!-- Morris chart - Sales -->
														<div class="chart tab-pane active" id="revenue-chart"
															style="position: relative; height: 300px;">
															<canvas id="revenue-chart-canvas" height="300" style="height: 300px;"></canvas>
														</div>
														<div class="chart tab-pane" id="sales-chart" style="position: relative; height: 300px;">
															<canvas id="sales-chart-canvas" height="300" style="height: 300px;"></canvas>
														</div>
													</div>
												</div><!-- /.card-body -->
											</div>
											<!-- /.card -->

            								<!-- DIRECT CHAT -->

											<!--/.direct-chat -->
											<!-- TO DO List -->
											<div class="card">
												<div class="card-header">
													<h3 class="card-title"><i class="ion ion-clipboard mr-1"></i>To Do List</h3>
													<div class="card-tools">
														<ul class="pagination pagination-sm">
															<li class="page-item"><a href="#" class="page-link">&laquo;</a></li>
															<li class="page-item"><a href="#" class="page-link">1</a></li>
															<li class="page-item"><a href="#" class="page-link">2</a></li>
															<li class="page-item"><a href="#" class="page-link">3</a></li>
															<li class="page-item"><a href="#" class="page-link">&raquo;</a></li>
														</ul>
													</div>
												</div>
												<!-- /.card-header -->
												<div class="card-body">
													<ul class="todo-list" data-widget="todo-list">
														<li>
															<!-- drag handle -->
															<span class="handle">
																<i class="fas fa-ellipsis-v"></i>
																<i class="fas fa-ellipsis-v"></i>
															</span>
															<!-- checkbox -->
															<div  class="icheck-primary d-inline ml-2">
																<input type="checkbox" value="" name="todo1" id="todoCheck1">
																<label for="todoCheck1"></label>
															</div>
															<!-- todo text -->
															<span class="text">Design a nice theme</span>
															<!-- Emphasis label -->
															<small class="badge badge-danger">
																<i class="far fa-clock"></i> 2 mins
															</small>
															<!-- General tools such as edit or delete-->
															<div class="tools">
																<i class="fas fa-edit"></i>
																<i class="fas fa-trash-o"></i>
															</div>
														</li>
														<li>
															<span class="handle">
																<i class="fas fa-ellipsis-v"></i>
																<i class="fas fa-ellipsis-v"></i>
															</span>
															<div  class="icheck-primary d-inline ml-2">
																<input type="checkbox" value="" name="todo2" id="todoCheck2" checked>
																<label for="todoCheck2"></label>
															</div>
															<span class="text">Make the theme responsive</span>
															<small class="badge badge-info">
																<i class="far fa-clock"></i> 4 hours
															</small>
															<div class="tools">
																<i class="fas fa-edit"></i>
																<i class="fas fa-trash-o"></i>
															</div>
														</li>
														<li>
															<span class="handle">
																<i class="fas fa-ellipsis-v"></i>
																<i class="fas fa-ellipsis-v"></i>
															</span>
															<div  class="icheck-primary d-inline ml-2">
																<input type="checkbox" value="" name="todo3" id="todoCheck3">
																<label for="todoCheck3"></label>
															</div>
															<span class="text">Let theme shine like a star</span>
															<small class="badge badge-warning">
																<i class="far fa-clock"></i> 1 day
															</small>
															<div class="tools">
																<i class="fas fa-edit"></i>
																<i class="fas fa-trash-o"></i>
															</div>
														</li>
														<li>
															<span class="handle">
																<i class="fas fa-ellipsis-v"></i>
																<i class="fas fa-ellipsis-v"></i>
															</span>
															<div  class="icheck-primary d-inline ml-2">
																<input type="checkbox" value="" name="todo4" id="todoCheck4">
																<label for="todoCheck4"></label>
															</div>
															<span class="text">Let theme shine like a star</span>
															<small class="badge badge-success">
																<i class="far fa-clock"></i> 3 days
															</small>
															<div class="tools">
																<i class="fas fa-edit"></i>
																<i class="fas fa-trash-o"></i>
															</div>
														</li>
													<li>
														<span class="handle">
															<i class="fas fa-ellipsis-v"></i>
															<i class="fas fa-ellipsis-v"></i>
														</span>
														<div  class="icheck-primary d-inline ml-2">
															<input type="checkbox" value="" name="todo5" id="todoCheck5">
															<label for="todoCheck5"></label>
														</div>
														<span class="text">Check your messages and notifications</span>
														<small class="badge badge-primary">
															<i class="far fa-clock"></i> 1 week
														</small>
														<div class="tools">
															<i class="fas fa-edit"></i>
															<i class="fas fa-trash-o"></i>
														</div>
													</li>
												<li>
												<span class="handle">
													<i class="fas fa-ellipsis-v"></i>
													<i class="fas fa-ellipsis-v"></i>
												</span>
												<div  class="icheck-primary d-inline ml-2">
													<input type="checkbox" value="" name="todo6" id="todoCheck6">
													<label for="todoCheck6"></label>
												</div>
												<span class="text">Let theme shine like a star</span>
												<small class="badge badge-secondary">
													<i class="far fa-clock"></i> 1 month
												</small>
												<div class="tools">
													<i class="fas fa-edit"></i>
													<i class="fas fa-trash-o"></i>
												</div>
											</li>
										</ul>
									</div>
									<!-- /.card-body -->
									<div class="card-footer clearfix">
										<button type="button" class="btn btn-info float-right">
											<i class="fas fa-plus"></i> Add item
										</button>
									</div>
								</div>
								<!-- /.card -->
							</section>
							<!-- /.Left col -->
							<!-- right col (We are only adding the ID to make the widgets sortable)-->
							<section class="col-lg-5 connectedSortable">
								<!-- Map card -->
								<div class="card bg-gradient-primary">

<!--
									<div class="card-header border-0">
										<h3 class="card-title">
											<i class="fas fa-map-marker-alt mr-1"></i>Visitors
										</h3>
										<div class="card-tools">
											<button type="button"
												class="btn btn-primary btn-sm daterange"
												data-toggle="tooltip"
												title="Date range">
												<i class="far fa-calendar-alt"></i>
											</button>
											<button type="button"
												class="btn btn-primary btn-sm"
												data-card-widget="collapse"
												data-toggle="tooltip"
												title="Collapse">
												<i class="fas fa-minus"></i>
											</button>
										</div>
									</div>
-->
<!-- MAP
									<div class="card-body">
										<div id="world-map" style="height: 250px; width: 100%;"></div>
									</div>
-->

									<!-- /.card-body-->

									<div class="card-footer bg-transparent">
										<div class="row">
											<div class="col-4 text-center">
												<div id="sparkline-1"></div>
												<div class="text-white">Visitors</div>
											</div>
											<div class="col-4 text-center">
												<div id="sparkline-2"></div>
												<div class="text-white">Online</div>
											</div>
											<div class="col-4 text-center">
												<div id="sparkline-3"></div>
												<div class="text-white">Sales</div>
											</div>
										</div>
									</div>
								</div>

								<!-- /.card -->
								<!-- solid sales graph -->
								<div class="card bg-gradient-info">
									<div class="card-header border-0">
										<h3 class="card-title"><i class="fas fa-th mr-1"></i>Orders Graph</h3>
										<div class="card-tools">
											<button type="button" class="btn bg-info btn-sm" data-card-widget="collapse">
												<i class="fas fa-minus"></i>
											</button>
											<button type="button" class="btn bg-info btn-sm" data-card-widget="remove">
												<i class="fas fa-times"></i>
											</button>
										</div>
									</div>
									<div class="card-body">
										<canvas class="chart" id="line-chart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
									</div>
									<!-- /.card-body -->
									<div class="card-footer bg-transparent">
										<div class="row">
											<div class="col-4 text-center">
												<input type="text" class="knob" data-readonly="true" value="20" data-width="60" data-height="60" data-fgColor="#39CCCC">
												<div class="text-white">Mail-Orders</div>
											</div>
											<!-- ./col -->
											<div class="col-4 text-center">
												<input type="text" class="knob" data-readonly="true" value="50" data-width="60" data-height="60" data-fgColor="#39CCCC">
												<div class="text-white">Online</div>
											</div>
											<!-- ./col -->
											<div class="col-4 text-center">
												<input type="text" class="knob" data-readonly="true" value="30" data-width="60" data-height="60" data-fgColor="#39CCCC">
												<div class="text-white">In-Store</div>
											</div>
											<!-- ./col -->
										</div>
										<!-- /.row -->
									</div>
									<!-- /.card-footer -->
								</div>
								<!-- /.card -->
								<!-- Calendar -->
								<div class="card bg-gradient-success">
									<div class="card-header border-0">
										<h3 class="card-title"><i class="far fa-calendar-alt"></i>Calendar</h3>
										<!-- tools card -->
										<div class="card-tools">
											<!-- button with a dropdown -->
											<div class="btn-group">
												<button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" data-offset="-52">
												<i class="fas fa-bars"></i></button>
												<div class="dropdown-menu" role="menu">
													<a href="#" class="dropdown-item">Add new event</a>
													<a href="#" class="dropdown-item">Clear events</a>
													<div class="dropdown-divider"></div>
													<a href="#" class="dropdown-item">View calendar</a>
												</div>
											</div>
											<button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
											<i class="fas fa-minus"></i></button>
											<button type="button" class="btn btn-success btn-sm" data-card-widget="remove">
											<i class="fas fa-times"></i></button>
										</div>
										<!-- /. tools -->
									</div>
									<!-- /.card-header -->
									<div class="card-body pt-0">
										<!--The calendar -->
										<div id="calendar" style="width: 100%"></div>
									</div>
									<!-- /.card-body -->
								</div>
								<!-- /.card -->
							</section>
							<!-- right col -->
						</div>
						<!-- /.row (main row) -->
					</div><!-- /.container-fluid -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
			<footer class="main-footer">
				<strong>Copyright &copy; 2020- <a href="http://sunlit-ind.co.jp/">SUNLIT.ind co.,Ltd.</a></strong>
				<div class="float-right d-none d-sm-inline-block">
					<b>Version</b> 1.0.0
				</div>
			</footer>
			<!-- Control Sidebar -->
			<aside class="control-sidebar control-sidebar-dark">
				<!-- Control sidebar content goes here -->
			</aside>
			<!-- /.control-sidebar -->
		</div>
		<!-- ./wrapper -->
		<!-- jQuery -->
		<script src="plugins/jquery/jquery.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>
			$.widget.bridge('uibutton', $.ui.button)
		</script>
		<!-- Bootstrap 4 -->
		<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- ChartJS -->
		<script src="plugins/chart.js/Chart.min.js"></script>
		<!-- Sparkline -->
		<script src="plugins/sparklines/sparkline.js"></script>
		<!-- JQVMap -->
		<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
		<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
		<!-- jQuery Knob Chart -->
		<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
		<!-- daterangepicker -->
		<script src="plugins/moment/moment.min.js"></script>
		<script src="plugins/daterangepicker/daterangepicker.js"></script>
		<!-- Tempusdominus Bootstrap 4 -->
		<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
		<!-- Summernote -->
		<script src="plugins/summernote/summernote-bs4.min.js"></script>
		<!-- overlayScrollbars -->
		<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.js"></script>
		<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
		<script src="dist/js/pages/dashboard.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="dist/js/demo.js"></script>
	</body>
</html>