<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="resources/css/main.css" rel="stylesheet">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<div class="app-header header-shadow">
			<div class="app-header__logo">
				<div class="logo-src"></div>
				<div class="header__pane ml-auto">
					<div>
						<button type="button"
							class="hamburger close-sidebar-btn hamburger--elastic"
							data-class="closed-sidebar">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<div class="app-header__mobile-menu">
				<div>
					<button type="button"
						class="hamburger hamburger--elastic mobile-toggle-nav">
						<span class="hamburger-box"> <span class="hamburger-inner"></span>
						</span>
					</button>
				</div>
			</div>
			<div class="app-header__menu">
				<span>
					<button type="button"
						class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
						<span class="btn-icon-wrapper"> <i
							class="fa fa-ellipsis-v fa-w-6"></i>
						</span>
					</button>
				</span>
			</div>
			<div class="app-header__content">
				<div class="app-header-left">
					<div class="search-wrapper">
						<div class="input-holder">
							<input type="text" class="search-input"
								placeholder="Type to search">
							<button class="search-icon">
								<span></span>
							</button>
						</div>
						<button class="close"></button>
					</div>
					<ul class="header-menu nav">
						<li class="nav-item"><a href="javascript:void(0);"
							class="nav-link"> <i class="nav-link-icon fa fa-database">
							</i> Statistics
						</a></li>
						<li class="btn-group nav-item"><a href="javascript:void(0);"
							class="nav-link"> <i class="nav-link-icon fa fa-edit"></i>
								Projects
						</a></li>
						<li class="dropdown nav-item"><a href="javascript:void(0);"
							class="nav-link"> <i class="nav-link-icon fa fa-cog"></i>
								Settings
						</a></li>
					</ul>
				</div>
				<div class="app-header-right">
					<div class="header-btn-lg pr-0">
						<div class="widget-content p-0">
							<div class="widget-content-wrapper">
								<div class="widget-content-left">
									<div class="btn-group">
										<a data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false" class="p-0 btn"> <img width="42"
											class="rounded-circle" src="resources/images/avatars/1.jpg"
											alt=""> <i class="fa fa-angle-down ml-2 opacity-8"></i>
										</a>
										<div tabindex="-1" role="menu" aria-hidden="true"
											class="dropdown-menu dropdown-menu-right">
											<button type="button" tabindex="0" class="dropdown-item">User
												Account</button>
											<button type="button" tabindex="0" class="dropdown-item">Settings</button>
											<h6 tabindex="-1" class="dropdown-header">Header</h6>
											<button type="button" tabindex="0" class="dropdown-item">Actions</button>
											<div tabindex="-1" class="dropdown-divider"></div>
											<button type="button" tabindex="0" class="dropdown-item">Dividers</button>
										</div>
									</div>
								</div>
								<div class="widget-content-left  ml-3 header-user-info">
									<div class="widget-heading">Alina Mclourd</div>
									<div class="widget-subheading">VP People Manager</div>
								</div>
								<div class="widget-content-right header-user-info ml-3">
									<button type="button"
										class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
										<i class="fa text-white fa-calendar pr-1 pl-1"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- end menu superior -->

		<div class="app-main">

			<div class="app-sidebar sidebar-shadow">
				<div class="app-header__logo">
					<div class="logo-src"></div>
					<div class="header__pane ml-auto">
						<div>
							<button type="button"
								class="hamburger close-sidebar-btn hamburger--elastic"
								data-class="closed-sidebar">
								<span class="hamburger-box"> <span
									class="hamburger-inner"></span>
								</span>
							</button>
						</div>
					</div>
				</div>
				<div class="app-header__mobile-menu">
					<div>
						<button type="button"
							class="hamburger hamburger--elastic mobile-toggle-nav">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
				<div class="app-header__menu">
					<span>
						<button type="button"
							class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
							<span class="btn-icon-wrapper"> <i
								class="fa fa-ellipsis-v fa-w-6"></i>
							</span>
						</button>
					</span>
				</div>
				<div class="scrollbar-sidebar">
					<div class="app-sidebar__inner">
						<ul class="vertical-nav-menu">
							<li class="app-sidebar__heading">Dashboard</li>
							<li><a href="index.html" class="mm-active"> <i
									class="metismenu-icon fas fa-lock"></i> Area Administrativa
							</a></li>
							<li class="app-sidebar__heading">Cadastros</li>
							<li><a href="#"> <i class="fas fa-users"></i> Usuários <i
									class="metismenu-state-icon fas fa-angle-down caret-left"></i>
							</a>

								<ul>
									<li><a href="elements-buttons-standard.html"> <i
											class="fas fa-plus"> Add usuários</i>
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title bg-premium-dark">

						<div class="page-title-wrapper ">
							<div class="page-title-heading">
								<div class="page-title-icon bg-sunny-morning">
									<i class="fas fa-user icon-gradient bg-premium-dark"> </i>
								</div>
								<div class="text-white">
									Usuários
									<div class="page-title-subheading">Toda a parte de
										manipulação de usuários está aqui.</div>
								</div>
							</div>
						</div>

					</div>
					<div class="row">
						<div class="col-lg-12">

							<div class="main-card mb-3 card">
								<div class="card-body">
									<h3>${msg}</h3>
									<h5 class="card-title text-muted">Novo usuário</h5>
									<form action="salvarUsuario" method="post">
										<div class="form-row">
											<div class="col-md-3">
												<div class="position-relative form-group">
													<label for="id" class="">ID</label> <input type="text"
														readonly="readonly" name="id" id="id" value="${user.id}"
														class="form-control" />
												</div>
											</div>
											<div class="col-md-12">
												<div class="position-relative form-group">
													<label for="nome" class="">Nome</label> <input type="text"
														name="nome" id="nome" value="${user.nome}"
														class="form-control" placeholder="Coloque o seu nome" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="login" class="">Login</label> <input
														type="text" name="login" id="login" value="${user.login}"
														class="form-control" placeholder="Coloque o seu login" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="position-relative form-group">
													<label for="senha" class="">Senha</label> <input
														type="password" name="senha" id="senha"
														value="${user.senha}" class="form-control"
														placeholder="Coloque a sua senha" />
												</div>
											</div>
										</div>
										<button class="mt-2 btn btn-dark" type="submit">Salvar</button>
									</form>
								</div>
							</div>
							<div class="col-lg-6 col-xl-4">
								<div class="card mb-3 widget-content bg-premium-dark">
									<div class="widget-content-wrapper text-white">
										<div class="widget-content-left">
											<div class="widget-heading">Usuários</div>
											<div class="widget-subheading">Total de usuários</div>
										</div>
										<div class="widget-content-right">
											<div class="widget-numbers text-warning">
												<span>${count}</span>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="main-card mb-3 card">
								<div class="card-body">
									<h5 class="card-title">Lista de usuários</h5>
									<table class="mb-0 table">
										<thead>
											<tr>
												<th>#</th>
												<th>Nome</th>
												<th>Login</th>
												<th colspan="2">Ações</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${usuarios}" var="user">
												<tr>
													<th scope="row"><c:out value="${user.id}" /></th>
													<td><c:out value="${user.nome}" /></td>
													<td><c:out value="${user.login}" /></td>
													<td><a class="mb-6 mr-6 badge badge-warning"
														href="salvarUsuario?acao=editar&user=${user.id}"><i
															class="fas fa-edit"></i></a></td>
													<td><a class="mb-6 mr-6 badge badge-danger"
														href="salvarUsuario?acao=delete&user=${user.id}"><i
															class="fas fa-trash"></i></a></td>
												</tr>

											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/scripts/main.js"></script>
</body>
</html>