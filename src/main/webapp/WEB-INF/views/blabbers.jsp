<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="com.veracode.verademo.utils.*"%>
<%@ page import="com.veracode.verademo.model.Blabber"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Blab</title>

<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="resources/css/bootstrap-theme.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/pwm.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body role="document">

	<div class="container">

		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation"><a href="feed">Feed</a></li>
					<li role="presentation" class="active"><a href="blabbers">Blabbers</a></li>
					<li role="presentation"><a href="profile">Profile</a></li>
					<li role="presentation"><a href="tools">Tools</a></li>
					<li role="presentation"><a href="logout">Logout</a></li>
				</ul>
			</nav>
			<img src="resources/images/Tokyoship_Talk_icon.svg" height="100"
				width="100">
		</div>


	</div>

	<div class="container theme-showcase" role="main">

		<div class="page-header">
			<h4>Choose Blabbers to Listen to</h4>
		</div>
		<div></div>
		<%
			String error = (String) request.getAttribute("error");
			if (null != error) {
		%>
		<div class="alert alert-danger" role="alert">
			<%=error%>
		</div>

		<%
			}
		%>

		<div class="row">
			<div class="col-md-12">
				<div class="detailBox">
					<div class="titleBox">
						<label>Blabbers</label>
					</div>
					<div class="actionBox">
						<table class="blabbers table">
							<thead>
								<tr>
									<th></th>
									<th class="commenterName"><a href="?sort=blab_name ASC">Name</a></th>
									<th class="commenterJoinDate"><a
										href="?sort=date_created DESC">Join date</a></th>
									<th class="commenterListening"><a
										href="?sort=listening DESC">Listening</a></th>
									<th class="commenterListeners"><a
										href="?sort=listeners DESC">Listeners</a></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<%
									@SuppressWarnings("unchecked")
<<<<<<< Upstream, based on origin/development
									ArrayList<String> blabberUsername = (ArrayList<String>) request.getAttribute("blabberUsername");
=======
									ArrayList<Blabber> blabbers = (ArrayList<Blabber>) request.getAttribute("blabbers");
								
									@SuppressWarnings("unchecked")
									ArrayList<Integer> blabberId = (ArrayList<Integer>) request.getAttribute("blabberId");
>>>>>>> 1e15e06 Revamp how we link users to profile images
									@SuppressWarnings("unchecked")
									ArrayList<String> blabberName = (ArrayList<String>) request.getAttribute("blabberName");
									@SuppressWarnings("unchecked")
									ArrayList<String> created = (ArrayList<String>) request.getAttribute("created");
									@SuppressWarnings("unchecked")
									ArrayList<Integer> listening = (ArrayList<Integer>) request.getAttribute("listening");
									@SuppressWarnings("unchecked")
									ArrayList<Integer> listeners = (ArrayList<Integer>) request.getAttribute("listeners");
<<<<<<< Upstream, based on origin/development
									for (int i = 0; i < blabberUsername.size(); i++) {
=======
									
									for (Blabber blabber : blabbers) {
>>>>>>> 1e15e06 Revamp how we link users to profile images
								%>
								<tr>
									<td class="commenterImage">
<<<<<<< Upstream, based on origin/development
										<img src="resources/images/<%=i+2%>.png" />
=======
										<img src="resources/images/<%= blabber.getUsername() %>.png" />
>>>>>>> 1e15e06 Revamp how we link users to profile images
									</td>
									<td class="commenterName">
										<%= blabber.getBlabName() %>
									</td>
									<td class="commenterJoinDate">
										<%= blabber.getCreatedDateString() %>
									</td>
									<td class="commenterListeners">
										&nbsp;<%= blabber.getNumberListeners() %>&nbsp;
									</td>
									<td class="commenterListening">
										&nbsp;<%= blabber.getNumberListening() %>&nbsp;
									</td>
									<td>
										<form class="form-inline" role="form" method="POST"
											action="blabbers">
<<<<<<< Upstream, based on origin/development
											<input type="hidden" name="blabberUsername"
												value="<%=blabberUsername.get(i)%>"> <input type="hidden"
=======
											<input type="hidden" name="blabberId"
												value="<%= blabber.getId() %>"> <input type="hidden"
>>>>>>> 1e15e06 Revamp how we link users to profile images
												name="command"
												value="<%=(blabber.getNumberListening() == 1 ? "ignore" : "listen")%>">
											<input type="submit" class="btn btn-default pull-right"
												name="button"
												value="<%=(blabber.getNumberListening() == 1 ? "Ignore" : "Listen")%>" />
										</form>
									</td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>

		</div>
	</div>
	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/js/jquery-1.11.2.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
