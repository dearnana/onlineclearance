<?php
include('../connect.php');
include('../addteacher.php');
include('../session_admin.php');


$userid = $_SESSION['id'];
$sql7 = "SELECT * FROM admin WHERE admin_id = ?";
$query7 = $conn->prepare($sql7);
$query7->execute(array($userid));
$f = $query7->fetch();

$a_sess_id = $f['admin_id'];
$a_sess_pass = $f['password'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>KSTU</title>

	<!-- Bootstrap -->
	<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
	<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">

	<!-- Custom Theme Style -->
	<link href="../build/css/custom.min.css" rel="stylesheet">
	<!-- icon -->
	<link rel="icon" href="../images/green-chmsc-official-logo.png" >
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col menu_fixed">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="admin.php" class="site_title"><i class="fa fa-heart"></i> <span>ASKMA</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile">
						<div class="profile_pic">
							<img src="..\img\sample.png" alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2><?php echo "$name"; ?></h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<?php include 'admin_sidebar.php'; ?>
					<!-- /sidebar menu -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
							<li class="">
								<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<img src="..\img\sample.png" alt=""><?php echo "$name"; ?>
									<span class=" fa fa-angle-down"></span>
								</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<!-- <li><a href="javascript:;"> Profile</a></li>
									<li>
										<a href="javascript:;">
											<span class="badge bg-red pull-right">50%</span>
											<span>Settings</span>
										</a>
									</li>
									<li><a href="javascript:;">Help</a></li> -->
									<li><a href="javascript:;" data-toggle="modal" data-target="#change_pass">Change password</a></li>
									<li><a href="..\index.php"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</ul>
							</li>
							<li role="presentation" class="dropdown">
							</li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3> <i class="fa fa-dashboard"></i> Admin Board</h3>
						</div>
						<div class="title_right">				
							<button class="btn btn-primary btn-md pull-right" data-toggle="modal" data-target="#myModal" style = "margin-left: 1%;">
								<i class="fa fa-plus"></i> Add Student
							</button>
							<!-- <button class="btn btn-success btn-md pull-right" data-toggle="modal" data-target="#myModal_user">
								<i class="fa fa-plus"></i> Add Admin User
							</button> -->
							
							<?php include '../modal_addstudent1.php'; ?>
							<?php include '../modal_addadminuser.php'; ?>
							<?php include 'c_p_modal.php'; ?>
	
						</div>
					</div>

					<div class="clearfix"></div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>Master's List</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<table id="datatable-buttons" class="table table-hover table-bordered">
									<thead>
										<tr>
											<th class="hidden">ID</th>
											<th>ID number</th>
											<th>Name</th>
											<th>Email</th>
											<th>Contact No.</th>
											<th>Department</th>
											<th>Designation</th>
											<th>Campus</th>
											<th>Course Program</th>
											<th width="20%" style="text-align:center;">Action</th>
										</tr>
									</thead>


									<tbody>
										<?php
										$sql = "SELECT * FROM faculty WHERE status = 0";
										$query = $conn->prepare($sql);
										$query->execute();
										$fetch = $query->fetchAll();

										foreach ($fetch as $key => $value) { ?>
										<tr>
											<td class="hidden"><?php echo $value['id'] ?></td>
											<td><?php echo $value['faculty_id'];?></td>
											<td><?php echo $value['faculty_Fname'], '&nbsp;', $value['faculty_Mname'], '&nbsp;', $value['faculty_Lname']   ?></td>
											<td><?php echo $value['Email'] ?></td>
											<td><?php echo $value['Contact_num']?></td>
											<td><?php echo $value['Department']?></td>
											<td><?php echo $value['Designation']?></td>
											<td><?php echo $value['Campus']?></td>
											<td><?php echo $value['course_program']?></td>
											<td class = "center" style = "text-align:center;">
												<form action="admin_view_info.php" method="post">
													<a href = "#edit<?php echo $value ['id']?>" data-toggle="modal" class = "btn btn-success btn-xs"><i class = "fa fa-pencil"></i> Edit</a>
													<input type="hidden" name="haydi" value="<?php echo $value ['id']?>">
													<button type="submit" class="btn btn-primary btn-xs"><i class = "fa fa-eye"></i>View</button>
												</form>
												<form action="../deactivate.php" method="POST">
													<input type="hidden" name="haydi" value="<?php echo $value ['id']?>">
													<button type="submit" class="btn btn-danger btn-xs"><i class="fa fa-close"></i> Deactivate</button>
												</form>
											</td>
											<?php include '../modal_edit1.php';?>
										</tr>														
										<?php } ?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right">
					by:Angelo Owusu-Acheaw
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>

	<div class="modal fade" id="set_deadline" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
					<form method="post" action="save_deadline">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title"> Set</h4>
				</div>
				<div class="modal-body">
				<?php 
					$sql1 = "SELECT * FROM deadline ORDER BY id DESC LIMIT 1";
					$query1 = $conn->prepare($sql1);
					$query1->execute();
					$fetch = $query1->fetch();

					if  ($fetch['status'] == 0){
				?>
					<input type="date" name="deadline" class="form-control" required="">
					<?php 
						}else{
							?>
							<a href="javascript" class="reset_dl">Click here to reset deadline</a>
					<?php	}
					?>
				</div>
				<div class="modal-footer">
					<span style="float: left" class="save_dl"></span>
					<button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
					<button type="submit"  class="btn btn-primary">Save</button>
				</div>

					</form>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="../vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="../vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../vendors/nprogress/nprogress.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="../build/js/custom.min.js"></script>
	<script src="../build/js/md5.js"></script>
	<!-- Datatables -->
	<script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script src="../vendors/datatables.net-scroller/js/datatables.scroller.min.js"></script>
	<script src="../vendors/jszip/dist/jszip.min.js"></script>
	<script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
	<script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
	<script type="text/javascript">
		jQuery(function(){
			$('form[action="save_deadline"]').on('submit', function(e){
				e.preventDefault();

				var da = $('input[name="deadline"]').val();

				$.ajax({
					type: 'POST',
					url: 'set_deadline.php',
					data: {d_date: da}
				})
				.done(function(data){
					$('.save_dl').text('Deadline has been set');
					setTimeout(function(){
						location.reload();
					}, 3000);
				});
			});

			$('.reset_dl').on('click', function(e){
				e.preventDefault();

				$.ajax({
					type: 'POST',
					url: 'reset_dl.php'
				})
				.done(function(data){
					$('.save_dl').text('Deadline has been reset');
					setTimeout(function(){
						location.reload();
					}, 3000);
				});
			});

			$('form[name="fchange_p"]').on('submit', function(e){
				e.preventDefault();

				var sess_pass = '<?php echo $a_sess_pass; ?>';
				var sess_id = '<?php echo $a_sess_id; ?>';

				var a = $('[name="old_pass1"]').val();
				var b = $('[name="new_pass1"]').val();
				var c = $('[name="conf_pass1"]').val();

				if (md5(a) !== sess_pass){
					$('.edit_pass1').text('Please enter your current password');
					$('[name="old_pass1"]').val('').focus();
				}else{
					if (b === '' && c !== ''){
						$('.edit_pass1').text('Please enter your new password');
					}else if (b !== '' && c === ''){
						$('.edit_pass1').text('Please confirm your new password');
					}else if (b === '' && c === ''){
						$('.edit_pass1').text('Please fill out the fields');
					}else if (b !== c){
						$('.edit_pass1').text('Passwords do not match');
					}else{
						$.ajax({
							type: 'POST',
							url: 'edit_pass.php',
							data: {
								session_id: sess_id,
								password: b
							}
						})
						.done(function(data){
							$('form[name="change_p"] input[type="password"]').val('');
							if (data == 1){
								$('.edit_pass1').text('Password successfully updated');
							}else{
								$('.edit_pass1').text('An error occured. Try again');
							}

							setTimeout(function(){
								location.reload();
							}, 1000 * 3);
						});	
					}
				}
			});
		});
	</script>

	<!-- Datatables -->
	<script>
		$(document).ready(function() {
			var handleDataTableButtons = function() {
				if ($("#datatable-buttons").length) {
					$("#datatable-buttons").DataTable({
						dom: "Bfrtip",
						buttons: [
						{
							extend: "copy",
							className: "btn-sm"
						},
						{
							extend: "csv",
							className: "btn-sm"
						},
						{
							extend: "excel",
							className: "btn-sm"
						},
						{
							extend: "pdf",
							className: "btn-sm"
						},
						{
							extend: "print",
							className: "btn-sm"
						},
						],
						responsive: true
					});
				}
			};

			TableManageButtons = function() {
				"use strict";
				return {
					init: function() {
						handleDataTableButtons();
					}
				};
			}();

			$('#datatable').dataTable();

			$('#datatable-keytable').DataTable({
				keys: true
			});

			$('#datatable-responsive').DataTable();

			$('#datatable-scroller').DataTable({
				ajax: "js/datatables/json/scroller-demo.json",
				deferRender: true,
				scrollY: 380,
				scrollCollapse: true,
				scroller: true
			});

			$('#datatable-fixed-header').DataTable({
				fixedHeader: true
			});

			var $datatable = $('#datatable-checkbox');

			$datatable.dataTable({
				'order': [[ 1, 'asc' ]],
				'columnDefs': [
				{ orderable: false, targets: [0] }
				]
			});
			$datatable.on('draw.dt', function() {
				$('input').iCheck({
					checkboxClass: 'icheckbox_flat-green'
				});
			});

			TableManageButtons.init();
		});
	</script>
	<!-- /Datatables -->
</body>
</html>
