<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<!-- Head start -->
<jsp:include page="head.jsp"></jsp:include>
<!-- Head start -->

<body>
	<!-- Pre-loader start -->
	<jsp:include page="pre-loader.jsp"></jsp:include>
	<!-- Pre-loader end -->

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<nav class="navbar header-navbar pcoded-header">
				<div class="navbar-wrapper">
					<div class="navbar-logo">
						<a class="mobile-menu waves-effect waves-light"
							id="mobile-collapse" href="#!"> <i class="ti-menu"></i>
						</a>
						<div class="mobile-search waves-effect waves-light">
							<div class="header-search">
								<div class="main-search morphsearch-search">
									<div class="input-group">
										<span class="input-group-addon search-close"><i
											class="ti-close"></i></span> <input type="text" class="form-control"
											placeholder="Enter Keyword"> <span
											class="input-group-addon search-btn"><i
											class="ti-search"></i></span>
									</div>
								</div>
							</div>
						</div>
						<a href="index.html"> <img class="img-fluid"
							src="<%=request.getContextPath()%>/assets/images/logo.png"
							alt="Theme-Logo" />
						</a> <a class="mobile-options waves-effect waves-light"> <i
							class="ti-more"></i>
						</a>
					</div>

					<div class="navbar-container container-fluid">
						<ul class="nav-left">
							<li>
								<div class="sidebar_toggle">
									<a href="javascript:void(0)"><i class="ti-menu"></i></a>
								</div>
							</li>
							<li class="header-search">
								<div class="main-search morphsearch-search">
									<div class="input-group">
										<span class="input-group-addon search-close"><i
											class="ti-close"></i></span> <input type="text" class="form-control">
										<span class="input-group-addon search-btn"><i
											class="ti-search"></i></span>
									</div>
								</div>
							</li>
							<li><a href="#!" onclick="javascript:toggleFullScreen()"
								class="waves-effect waves-light"> <i class="ti-fullscreen"></i>
							</a></li>
						</ul>
						<ul class="nav-right">
							<li class="header-notification"><a href="#!"
								class="waves-effect waves-light"> <i class="ti-bell"></i> <span
									class="badge bg-c-red"></span>
							</a>
								<ul class="show-notification">
									<li>
										<h6>Notifications</h6> <label class="label label-danger">New</label>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="<%=request.getContextPath()%>/assets/images/avatar-2.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user"><%=session.getAttribute("usuario")%></h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="<%=request.getContextPath()%>/assets/images/avatar-4.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Joseph William</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="<%=request.getContextPath()%>/assets/images/avatar-3.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Sara Soudein</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
								</ul></li>
							<li class="user-profile header-notification"><a href="#!"
								class="waves-effect waves-light"> <img
									src="<%=request.getContextPath()%>/assets/images/avatar-4.jpg"
									class="img-radius" alt="User-Profile-Image"> <span><%=session.getAttribute("usuario")%></span>
									<i class="ti-angle-down"></i>
							</a>
								<ul class="show-notification profile-notification">
									<li class="waves-effect waves-light"><a href="#!"> <i
											class="ti-settings"></i> Settings
									</a></li>
									<li class="waves-effect waves-light"><a
										href="user-profile.html"> <i class="ti-user"></i> Profile
									</a></li>
									<li class="waves-effect waves-light"><a
										href="email-inbox.html"> <i class="ti-email"></i> My
											Messages
									</a></li>
									<li class="waves-effect waves-light"><a
										href="auth-lock-screen.html"> <i class="ti-lock"></i> Lock
											Screen
									</a></li>
									<li class="waves-effect waves-light"><a
										href="<%=request.getContextPath()%>/ServletLogin?acao=logout">
											<i class="ti-layout-sidebar-left"></i> Logout
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<nav class="pcoded-navbar">
						<div class="sidebar_toggle">
							<a href="#"><i class="icon-close icons"></i></a>
						</div>
						<div class="pcoded-inner-navbar main-menu">
							<div class="">
								<div class="main-menu-header">
									<img class="img-80 img-radius"
										src="<%=request.getContextPath()%>/assets/images/avatar-4.jpg"
										alt="User-Profile-Image">
									<div class="user-details">
										<span id="more-details"><%=session.getAttribute("usuario")%><i
											class="fa fa-caret-down"></i></span>
									</div>
								</div>

								<div class="main-menu-content">
									<ul>
										<li class="more-details"><a href="user-profile.html"><i
												class="ti-user"></i>View Profile</a> <a href="#!"><i
												class="ti-settings"></i>Settings</a> <a
											href="<%=request.getContextPath()%>/ServletLogin?acao=logout"><i
												class="ti-layout-sidebar-left"></i>Logout</a></li>
									</ul>
								</div>
							</div>
							<div class="p-15 p-b-0">
								<form class="form-material">
									<div class="form-group form-primary">
										<input type="text" name="footer-email" class="form-control"
											required=""> <span class="form-bar"></span> <label
											class="float-label"><i class="fa fa-search m-r-10"></i>Search
											Friend</label>
									</div>
								</form>
							</div>
							<div class="pcoded-navigation-label"
								data-i18n="nav.category.navigation">Layout</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="active"><a href="index.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-home"></i><b>D</b></span> <span class="pcoded-mtext"
										data-i18n="nav.dash.main">Dashboard</span> <span
										class="pcoded-mcaret"></span>
								</a></li>
								<li class="pcoded-hasmenu"><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layout-grid2-alt"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.basic-components.main">Components</span> <span
										class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=" "><a
											href="<%=request.getContextPath()%>/principal/usuario.jsp"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext" data-i18n="nav.basic-components.alert">Usuário</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="breadcrumb.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.basic-components.breadcrumbs">Breadcrumbs</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="button.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext" data-i18n="nav.basic-components.alert">Button</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="tabs.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.basic-components.breadcrumbs">Tabs</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="color.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext" data-i18n="nav.basic-components.alert">Color</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="label-badge.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.basic-components.breadcrumbs">Label
													Badge</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="tooltip.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext" data-i18n="nav.basic-components.alert">Tooltip</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="typography.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.basic-components.breadcrumbs">Typography</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="notification.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext" data-i18n="nav.basic-components.alert">Notification</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="icon-themify.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.basic-components.breadcrumbs">Themify</span>
												<span class="pcoded-mcaret"></span>
										</a></li>

									</ul></li>
							</ul>
							<div class="pcoded-navigation-label"
								data-i18n="nav.category.forms">Forms &amp; Tables</div>
							<ul class="pcoded-item pcoded-left-item">
								<li><a href="form-elements-component.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext"
										data-i18n="nav.form-components.main">Form Components</span> <span
										class="pcoded-mcaret"></span>
								</a></li>
								<li><a href="bs-basic-table.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext"
										data-i18n="nav.form-components.main">Basic Table</span> <span
										class="pcoded-mcaret"></span>
								</a></li>

							</ul>

							<div class="pcoded-navigation-label"
								data-i18n="nav.category.forms">Chart &amp; Maps</div>
							<ul class="pcoded-item pcoded-left-item">
								<li><a href="chart.html" class="waves-effect waves-dark">
										<span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
										<span class="pcoded-mtext"
										data-i18n="nav.form-components.main">Chart</span> <span
										class="pcoded-mcaret"></span>
								</a></li>
								<li><a href="map-google.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext"
										data-i18n="nav.form-components.main">Maps</span> <span
										class="pcoded-mcaret"></span>
								</a></li>
								<li class="pcoded-hasmenu"><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layout-grid2-alt"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.basic-components.main">Pages</span> <span
										class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=" "><a href="auth-normal-sign-in.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext" data-i18n="nav.basic-components.alert">Login</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="auth-sign-up.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.basic-components.breadcrumbs">Register</span>
												<span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="sample-page.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.basic-components.breadcrumbs">Sample
													Page</span> <span class="pcoded-mcaret"></span>
										</a></li>
									</ul></li>

							</ul>

							<div class="pcoded-navigation-label"
								data-i18n="nav.category.other">Other</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu "><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-direction-alt"></i><b>M</b></span> <span
										class="pcoded-mtext" data-i18n="nav.menu-levels.main">Menu
											Levels</span> <span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=""><a href="javascript:void(0)"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.menu-levels.menu-level-21">Menu Level
													2.1</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class="pcoded-hasmenu "><a href="javascript:void(0)"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-direction-alt"></i></span>
												<span class="pcoded-mtext"
												data-i18n="nav.menu-levels.menu-level-22.main">Menu
													Level 2.2</span> <span class="pcoded-mcaret"></span>
										</a>
											<ul class="pcoded-submenu">
												<li class=""><a href="javascript:void(0)"
													class="waves-effect waves-dark"> <span
														class="pcoded-micon"><i class="ti-angle-right"></i></span>
														<span class="pcoded-mtext"
														data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Menu
															Level 3.1</span> <span class="pcoded-mcaret"></span>
												</a></li>
											</ul></li>
										<li class=""><a href="javascript:void(0)"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext"
												data-i18n="nav.menu-levels.menu-level-23">Menu Level
													2.3</span> <span class="pcoded-mcaret"></span>
										</a></li>

									</ul></li>
							</ul>
						</div>
					</nav>
					<div class="pcoded-content">
						<!-- Page-header start -->
						<div class="page-header">
							<div class="page-block">
								<div class="row align-items-center">
									<div class="col-md-8">
										<div class="page-header-title">
											<h5 class="m-b-10">Dashboard</h5>
											<p class="m-b-0">Welcome to Mega Able</p>
										</div>
									</div>
									<div class="col-md-4">
										<ul class="breadcrumb-title">
											<li class="breadcrumb-item"><a href="index.html"> <i
													class="fa fa-home"></i>
											</a></li>
											<li class="breadcrumb-item"><a href="#!">Dashboard</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<!-- ONDE IREI ALIMENTAR O CORPO DA PAGINA -->

										<div class="row">
											<div class="col-sm-12">
												<!-- Basic Form Inputs card start -->
												<div class="card">
													<div class="card-header">
														<h5>Cadastro Usuário</h5>

													</div>
													<div class="card-block">
														<h4 class="sub-title">Basic Inputs</h4>
													</div>
												</div>
											</div>
										</div>
									</div>
									<form class="form-material" action="<%= request.getContextPath() %>/ServletUsuarioController" method="post" id="formUser">
										<input type="hidden" name="acao" id="acao" value="">
										
										<div class="form-group form-default">
											<input type="text" name="id" id="id" class="form-control"
												 readonly="readonly" value="${modolLogin.id}"> <span
												class="form-bar"></span> <label class="form-static-label">Id:</label>
										</div>
										<div class="form-group form-default">
											<input type="text" name="nome"  id="nome" class="form-control"
												required="required" value="${modolLogin.nome}"> <span class="form-bar"></span> <label
												class="float-label">Nome:</label>
										</div>
										<div class="form-group form-default">
											<input type="email" name="email" id="email"  class="form-control"
												required="required" value="${modolLogin.email}"> <span class="form-bar" ></span> <label
												class="float-label">E-mail:</label>
										</div>
										<div class="form-group form-default">
											<input type="text" name="login" id="login"
												class="form-control"  required="required" value="${modolLogin.login}" autocomplete="off"> <span
												class="form-bar"></span> <label class="float-label">Login</label>
										</div>
										<div class="form-group form-default">
											<input type="password" name="senha" id="senha"
												class="form-control" required="required" value="${modolLogin.senha}" autocomplete="off"> <span
												class="form-bar"></span> <label class="float-label">Senha</label>
										</div>
										<button type="button" class="btn btn-primary waves-effect waves-light" onclick="limparForm()">Novo</button>
										<button type="submit" name="salvar" class="btn btn-success waves-effect waves-light">Salvar</button>										
										<button  type="button" name="excluir" class="btn btn-danger waves-effect waves-light" onclick="criarDelete()">Excluir</button>
										
									</form>
									
									<span style="color:green; font-weight:bold;">${msg}</span>
								</div>
								<!-- ONDE IREI ALIMENTAR O CORPO DA PAGINA -->
								<!-- Page-body end -->
							</div>
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!-- Required Jquery -->
	<jsp:include page="javascript.jsp"></jsp:include>
	<script type="text/javascript">
	
	function criarDelete() {
	   if(confirm('Deseja realmente excluir os dados?')){
		   
		    document.getElementById("formUser").method = 'get';
		    document.getElementById("acao").value = 'deletar';
		    document.getElementById("formUser").submit();
	   }
	    
	}
	
	function limparForm(){
		var elementos = document.getElementById("formUser").elements; /*Retorna os elementos html dentro do form*/
	    
	    for (p = 0; p < elementos.length; p ++){
		    elementos[p].value = '';
	    }
	}
	
	</script>
</body>

</html>
