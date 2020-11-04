<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="x-ua-compatible" content="ie=edge">

		<title>切削工場</title>

		<!-- Font Awesome Icons -->
		<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
		<!-- overlayScrollbars -->
		<link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="dist/css/adminlte.min.css">
		<!-- Google Font: Source Sans Pro -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	</head>

	<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
		<div class="wrapper">
			<!-- Navbar -->
			<nav class="main-header navbar navbar-expand navbar-white navbar-light">
				<!-- Left navbar links -->
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
					</li>
					<li class="nav-item d-none d-sm-inline-block">
						<a href="FactoryIndex2.jsp" class="nav-link">Home</a>
					</li>
					<!-- 連絡先
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
			</nav>
			<!-- /.navbar -->
			<!-- Main Sidebar Container -->
			<aside class="main-sidebar sidebar-dark-primary elevation-4">
				<!-- Brand Logo -->
				<a href="FactoryIndex2.jsp" class="brand-link">
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
							<!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
							<li class="nav-item has-treeview menu-open">
								<a href="#" class="nav-link active">
									<i class="nav-icon fas fa-tachometer-alt"></i>
									<p>ダッシュボード<i class="right fas fa-angle-left"></i></p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item">
										<a href="./FactoryIndex1.jsp" class="nav-link">
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
													<i class="far fa-circle nav-icon"></i>
													<p>・在庫管理</p>
												</a>
											</li>

										</ul>
									</li>
									<li class="nav-item">
										<a href="./FactoryIndex2.jsp" class="nav-link active">
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

<!--
							<li class="nav-item">
								<a href="pages/widgets.html" class="nav-link">
									<i class="nav-icon fas fa-th"></i>
									<p>Widgets<span class="right badge badge-danger">New</span></p>
								</a>
							</li>
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
-->

								</li>
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
									<i class="nav-icon fas fa-calendar-alt"></i>
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
											<h1 class="m-0 text-dark">Dashboard v2</h1>
										</div><!-- /.col -->
										<div class="col-sm-6">
											<ol class="breadcrumb float-sm-right">
												<li class="breadcrumb-item"><a href="#">Home</a></li>
												<li class="breadcrumb-item active">Dashboard v2</li>
											</ol>
										</div><!-- /.col -->
									</div><!-- /.row -->
								</div><!-- /.container-fluid -->
							</div>
							<!-- /.content-header -->
							<!-- Main content -->
							<section class="content">
								<div class="container-fluid">
									<!-- Info boxes -->
									<div class="row">
										<div class="col-12 col-sm-6 col-md-3">
											<div class="info-box">
												<span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>
												<div class="info-box-content">
													<span class="info-box-text">CPU Traffic</span>
													<span class="info-box-number">10<small>%</small></span>
												</div>
												<!-- /.info-box-content -->
											</div>
											<!-- /.info-box -->
										</div>
										<!-- /.col -->
										<div class="col-12 col-sm-6 col-md-3">
											<div class="info-box mb-3">
												<span class="info-box-icon bg-danger elevation-1"><i class="fas fa-thumbs-up"></i></span>
												<div class="info-box-content">
													<span class="info-box-text">Likes</span>
													<span class="info-box-number">41,410</span>
												</div>
												<!-- /.info-box-content -->
											</div>
											<!-- /.info-box -->
										</div>
										<!-- /.col -->
										<!-- fix for small devices only -->
										<div class="clearfix hidden-md-up"></div>
											<div class="col-12 col-sm-6 col-md-3">
												<div class="info-box mb-3">
													<span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>
														<div class="info-box-content">
															<span class="info-box-text">Sales</span>
															<span class="info-box-number">760</span>
														</div>
														<!-- /.info-box-content -->
												</div>
												<!-- /.info-box -->
											</div>
											<!-- /.col -->
											<div class="col-12 col-sm-6 col-md-3">
												<div class="info-box mb-3">
													<span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>
														<div class="info-box-content">
															<span class="info-box-text">New Members</span>
															<span class="info-box-number">2,000</span>
														</div>
														<!-- /.info-box-content -->
												</div>
												<!-- /.info-box -->
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
										<div class="row">
											<div class="col-md-12">
												<div class="card">
													<div class="card-header">
														<h5 class="card-title">Monthly Recap Report</h5>
														<div class="card-tools">
															<button type="button" class="btn btn-tool" data-card-widget="collapse">
																<i class="fas fa-minus"></i>
															</button>
															<div class="btn-group">
																<button type="button" class="btn btn-tool dropdown-toggle" data-toggle="dropdown">
																	<i class="fas fa-wrench"></i>
																</button>
																<div class="dropdown-menu dropdown-menu-right" role="menu">
																	<a href="#" class="dropdown-item">Action</a>
																	<a href="#" class="dropdown-item">Another action</a>
																	<a href="#" class="dropdown-item">Something else here</a>
																	<a class="dropdown-divider"></a>
																	<a href="#" class="dropdown-item">Separated link</a>
																</div>
															</div>
															<button type="button" class="btn btn-tool" data-card-widget="remove">
																<i class="fas fa-times"></i>
															</button>
														</div>
													</div>
													<!-- /.card-header -->
													<div class="card-body">
														<div class="row">
															<div class="col-md-8">
																<p class="text-center">
																	<strong>Sales: 1 Jan, 2014 - 30 Jul, 2014</strong>
																</p>
																<div class="chart">
																	<!-- Sales Chart Canvas -->
																	<canvas id="salesChart" height="180" style="height: 180px;"></canvas>
																</div>
																<!-- /.chart-responsive -->
															</div>
															<!-- /.col -->
															<div class="col-md-4">
																<p class="text-center"><strong>Goal Completion</strong></p>
																<div class="progress-group">
																	Add Products to Cart
																	<span class="float-right"><b>160</b>/200</span>
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-primary" style="width: 80%"></div>
																	</div>
																</div>
																<!-- /.progress-group -->
																<div class="progress-group">
																	Complete Purchase
																	<span class="float-right"><b>310</b>/400</span>
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-danger" style="width: 75%"></div>
																	</div>
																</div>
																<!-- /.progress-group -->
																<div class="progress-group">
																	<span class="progress-text">Visit Premium Page</span>
																	<span class="float-right"><b>480</b>/800</span>
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-success" style="width: 60%"></div>
																	</div>
																</div>
																<!-- /.progress-group -->
																<div class="progress-group">
																	Send Inquiries
																	<span class="float-right"><b>250</b>/500</span>
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-warning" style="width: 50%"></div>
																	</div>
																</div>
																<!-- /.progress-group -->
															</div>
															<!-- /.col -->
														</div>
														<!-- /.row -->
													</div>
													<!-- ./card-body -->
													<div class="card-footer">
														<div class="row">
															<div class="col-sm-3 col-6">
																<div class="description-block border-right">
																	<span class="description-percentage text-success"><i class="fas fa-caret-up"></i> 17%</span>
																	<h5 class="description-header">$35,210.43</h5>
																	<span class="description-text">TOTAL REVENUE</span>
																</div>
																<!-- /.description-block -->
															</div>
															<!-- /.col -->
															<div class="col-sm-3 col-6">
																<div class="description-block border-right">
																	<span class="description-percentage text-warning"><i class="fas fa-caret-left"></i> 0%</span>
																	<h5 class="description-header">$10,390.90</h5>
																	<span class="description-text">TOTAL COST</span>
																</div>
																<!-- /.description-block -->
															</div>
															<!-- /.col -->
															<div class="col-sm-3 col-6">
																<div class="description-block border-right">
																	<span class="description-percentage text-success"><i class="fas fa-caret-up"></i> 20%</span>
																	<h5 class="description-header">$24,813.53</h5>
																	<span class="description-text">TOTAL PROFIT</span>
																</div>
																<!-- /.description-block -->
															</div>
															<!-- /.col -->
															<div class="col-sm-3 col-6">
																<div class="description-block">
																	<span class="description-percentage text-danger"><i class="fas fa-caret-down"></i> 18%</span>
																	<h5 class="description-header">1200</h5>
																	<span class="description-text">GOAL COMPLETIONS</span>
																</div>
																<!-- /.description-block -->
															</div>
														</div>
														<!-- /.row -->
													</div>
													<!-- /.card-footer -->
												</div>
												<!-- /.card -->
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
										<!-- Main row -->
									<div class="row">
										<!-- Left col -->
										<div class="col-md-8">
											<!-- MAP & BOX PANE -->
											<!-- /.card -->
											<div class="row">
												<div class="col-md-6">

													<!-- DIRECT CHAT -->
											<!--/.direct-chat -->
										</div>
										<!-- /.col -->
										<div class="col-md-6">
											<!-- USERS LIST -->
											<!--/.card -->
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
									<!-- TABLE: LATEST ORDERS -->
									<div class="card">
										<div class="card-header border-transparent">
											<h3 class="card-title">Latest Orders</h3>
											<div class="card-tools">
												<button type="button" class="btn btn-tool" data-card-widget="collapse">
													<i class="fas fa-minus"></i>
												</button>
												<button type="button" class="btn btn-tool" data-card-widget="remove">
													<i class="fas fa-times"></i>
												</button>
											</div>
										</div>
										<!-- /.card-header -->
										<div class="card-body p-0">
											<div class="table-responsive">
												<table class="table m-0">
													<thead>
														<tr>
															<th>Order ID</th>
															<th>Item</th>
															<th>Status</th>
															<th>Popularity</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><a href="pages/examples/invoice.jsp">OR9842</a></td>
															<td>Call of Duty IV</td>
															<td><span class="badge badge-success">Shipped</span></td>
															<td><div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div></td>
														</tr>
														<tr>
															<td><a href="pages/examples/invoice.jsp">OR1848</a></td>
															<td>Samsung Smart TV</td>
															<td><span class="badge badge-warning">Pending</span></td>
															<td><div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div></td>
														</tr>
														<tr>
															<td><a href="pages/examples/invoice.jsp">OR7429</a></td>
															<td>iPhone 6 Plus</td>
															<td><span class="badge badge-danger">Delivered</span></td>
															<td><div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div></td>
														</tr>
														<tr>
															<td><a href="pages/examples/invoice.jsp">OR7429</a></td>
															<td>Samsung Smart TV</td>
															<td><span class="badge badge-info">Processing</span></td>
															<td><div class="sparkbar" data-color="#00c0ef" data-height="20">90,80,-90,70,-61,83,63</div></td>
														</tr>
														<tr>
															<td><a href="pages/examples/invoice.jsp">OR1848</a></td>
															<td>Samsung Smart TV</td>
															<td><span class="badge badge-warning">Pending</span></td>
															<td><div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div></td>
														</tr>
														<tr>
															<td><a href="pages/examples/invoice.jsp">OR7429</a></td>
															<td>iPhone 6 Plus</td>
															<td><span class="badge badge-danger">Delivered</span></td>
															<td><div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div></td>
														</tr>
														<tr>
															<td><a href="pages/examples/invoice.jsp">OR9842</a></td>
															<td>Call of Duty IV</td>
															<td><span class="badge badge-success">Shipped</span></td>
															<td><div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div></td>
														</tr>
													</tbody>
												</table>
											</div>
											<!-- /.table-responsive -->
										</div>
										<!-- /.card-body -->
										<div class="card-footer clearfix">
											<a href="javascript:void(0)" class="btn btn-sm btn-info float-left">Place New Order</a>
											<a href="javascript:void(0)" class="btn btn-sm btn-secondary float-right">View All Orders</a>
										</div>
										<!-- /.card-footer -->
									</div>
									<!-- /.card -->
								</div>
								<!-- /.col -->
								<div class="col-md-4">
									<!-- Info Boxes Style 2 -->
									<div class="info-box mb-3 bg-warning">
										<span class="info-box-icon"><i class="fas fa-tag"></i></span>
										<div class="info-box-content">
											<span class="info-box-text">Inventory</span>
											<span class="info-box-number">5,200</span>
										</div>
										<!-- /.info-box-content -->
									</div>
									<!-- /.card -->
									<!-- PRODUCT LIST -->
								<!-- /.card -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div><!--/. container-fluid -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
			<!-- Control Sidebar -->
			<aside class="control-sidebar control-sidebar-dark">
				<!-- Control sidebar content goes here -->
			</aside>
			<!-- /.control-sidebar -->
			<!-- Main Footer -->
			<footer class="main-footer">
				<strong>Copyright &copy; 2020- <a href="http://sunlit-ind.co.jp/">SUNLIT.ind co.,Ltd.</a></strong>
				<div class="float-right d-none d-sm-inline-block">
					<b>Version</b> 1.0.0
				</div>
			</footer>
		</div>
		<!-- ./wrapper -->
		<!-- REQUIRED SCRIPTS -->
		<!-- jQuery -->
		<script src="plugins/jquery/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- overlayScrollbars -->
		<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.js"></script>
		<!-- OPTIONAL SCRIPTS -->
		<script src="dist/js/demo.js"></script>
		<!-- PAGE PLUGINS -->
		<!-- jQuery Mapael -->
		<script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
		<script src="plugins/raphael/raphael.min.js"></script>
		<script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
		<script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
		<!-- ChartJS -->
		<script src="plugins/chart.js/Chart.min.js"></script>
		<!-- PAGE SCRIPTS -->
		<script src="dist/js/pages/dashboard2.js"></script>
	</body>
</html>