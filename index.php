<?php
include('connect.php')
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="production/stylesheet.css">
	<link rel="stylesheet" href="styles.css">
	<!-- icon -->
	
	<title>OC System</title>

</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
				</button>
				<a class="navbar-brand" href="#">ONLINE CLEARANCE SYSTEM</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#modal-dept" style="margin-top: 6px;">Log in </button>
				
				<!-- Modal -->
				<div class="modal fade" id="modal-dept">
					<div class="modal-dialog modal-md">
						<div class="modal-content">
							<!-- modal header -->
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h3>Log in</h3>
							</div>
							<!-- modal body -->
							<div class="modal-body">
								<ul class="nav nav-pills">
									<li class="active"><a data-toggle="pill" href="#home">Staff</a></li>
									<li><a data-toggle="pill" href="#menu2">Student</a></li>
									<li><a data-toggle="pill" href="#menu1">Webmaster</a></li>

								</ul>
								<div class="tab-content">
									<!-- Department -->
									<div id="home" class="tab-pane fade in active">
										<h3>Staff</h3>
										<form method="post">
											<div class="form-group">
												<input type="text" class="form-control" name="deptName" placeholder="Office held">
											</div>
											<div class="form-group">
												<input type="password" class="form-control" name="deptPass" placeholder="Password">
											</div>
											<div class="form-group">
												<button class="btn btn-block btn-primary signin-button-department">Log in</button>
												<button class="btn btn-block btn-danger signin-button">Cancel</button>
											</div>
										</form>
									</div>
									<!-- Admin -->
									<div id="menu1" class="tab-pane fade">
										<h3>Webmaster</h3>
										<form method="post">
											<div class="form-group">
												<input type="text" class="form-control" name="admin_username" placeholder="Username">
											</div>
											<div class="form-group">
												<input type="password" class="form-control" name="adminPass" placeholder="Password">
											</div>
											<div class="form-group">
												<button class="btn btn-block btn-primary signin-button-webmaster">Log in</button>
												<button class="btn btn-block btn-danger signin-button">Cancel</button>
											</div>
										</form>
									</div>
									<!-- Student -->
									<div id="menu2" class="tab-pane fade">
										<h3>Student</h3>
										<form method="post">
											<div class="form-group">
												<input type="text" class="form-control" name="teacherId" placeholder="Student Id">
											</div>
											<div class="form-group">
												<input type="password" class="form-control" name="TeacherPass" placeholder="Password">
											</div>
											<!-- <div class="form-group">
												<input type="password" class="form-control" name="new_password" placeholder="Password">
											</div>
											<div class="form-group">
												<input type="password" class="form-control" name="new_cpassword" placeholder="Password">
											</div> -->
											<div class="form-group">
												<button class="btn btn-block btn-primary signin-button-faculty">Log in</button>
												<button class="btn btn-block btn-danger signin-button">Cancel</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- END MODAL-->				

			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>

		 <div class="hero-image">
  <div class="hero-text">
    <br /><br /><br /><br /><h1>WELCOME</h1>
    <p>The new Online Clearance System offers you with effective and efficient clearance process.</p>
    <p>Make sure to settle all unsettled payments in order to be granted clearance.</p>
    <p>Also make sure to complete the clearance within the deadline required.
    <p>To begin, Click on the Login button below and provide the credentials you have been given.</p>
    <br>
    <br>
    <br>
    <br>
    <br>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-dept"">Log in </button>
				
  </div>
</div> 


		<script src="js/jquery-1.12.1.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		
</script>
<script>
	jQuery(function(){
		$('.signin-button-webmaster').click(function(e){
			e.preventDefault();

			var uname = $.trim($('input[name="admin_username"]').val());
			var pass = $.trim($('input[name="adminPass"]').val());

			$.ajax({
				type: 'POST',
				url: 'loginAdmin.php',
				data: {admin_username: uname, adminPass: pass}
			})
			.done(function(res){
				console.log(res);
				if (res == 1 ){
					window.location.href = "production/admin1.php";
				}else{
					alert('Login failed!');
					$('input[name="admin_username"]').focus();
					$('input').val('');
				}
			});
			}); //Admin

		$('.signin-button-department').click(function(e){
			e.preventDefault();

			var uname = $.trim($('input[name="deptName"]').val());
			var pass = $.trim($('input[name="deptPass"]').val());

			$.ajax({
				type: 'POST',
				url: 'logindept.php',
				data: {deptName: uname, deptPass: pass}
			})
			.done(function(res){
				console.log(res);
				if (res == 1 ){
					window.location.href = "production/designee.php";
				}else{
					alert('Login failed!');
					$('input[name="deptName"]').focus();
					$('input').val('');
				}
			});
			}); //Department

		
		$('.signin-button-faculty').click(function(e){
			e.preventDefault();

			var uname = $.trim($('input[name="teacherId"]').val());
			var pass = $.trim($('input[name="TeacherPass"]').val());

			$.ajax({
				type: 'POST',
				url: 'loginfaculty.php',
				data: {teacherId: uname, TeacherPass: pass}
			})
			.done(function(res){
				console.log(res);
				if (res == 1 ){
					window.location.href = "production/faculty.php";
				}else if (res == 2){
					alert('The system is closed. Please process your clearance manually');
				}else{
					alert('Login failed!');
					$('input[name="teacherId"]').focus();
					$('input').val('');
				}
			});
			}); //Faculty
	});
</script>
</body>
</html>