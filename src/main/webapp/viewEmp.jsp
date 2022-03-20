<%@page import="java.util.ArrayList"%>
<%@ page import="com.adj.entity.Employee"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employee Details</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Roboto', sans-serif;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	min-width: 1000px;
	background: #fff;
	padding: 20px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	font-size: 15px;
	padding-bottom: 10px;
	margin: 0 0 10px;
	min-height: 45px;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.table-title select {
	border-color: #ddd;
	border-width: 0 0 1px 0;
	padding: 3px 10px 3px 5px;
	margin: 0 5px;
}

.table-title .show-entries {
	margin-top: 7px;
}

.search-box {
	position: relative;
	float: right;
}

.search-box .input-group {
	min-width: 200px;
	position: absolute;
	right: 0;
}

.search-box .input-group-addon, .search-box input {
	border-color: #ddd;
	border-radius: 0;
}

.search-box .input-group-addon {
	border: none;
	border: none;
	background: transparent;
	position: absolute;
	z-index: 9;
}

.search-box input {
	height: 34px;
	padding-left: 28px;
	box-shadow: none !important;
	border-width: 0 0 1px 0;
}

.search-box input:focus {
	border-color: #3FBAE4;
}

.search-box i {
	color: #a0a5b1;
	font-size: 19px;
	position: relative;
	top: 2px;
	left: -10px;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td:last-child {
	width: 130px;
}

table.table td a {
	color: #a0a5b1;
	display: inline-block;
	margin: 0 5px;
}

table.table td a.view {
	color: #03A9F4;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #E34724;
}

table.table td i {
	font-size: 19px;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	padding: 0 10px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 30px !important;
	text-align: center;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}
</style>
<script>
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	// Animate select box length
	var searchInput = $(".search-box input");
	var inputGroup = $(".search-box .input-group");
	var boxWidth = inputGroup.width();
	searchInput.focus(function(){
		inputGroup.animate({
			width: "300"
		});
	}).blur(function(){
		inputGroup.animate({
			width: boxWidth
		});
	});
});
</script>
</head>
<body>
	<div class="container">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-xs-4">
							<div class="show-entries">
								<span>Show</span> <select>
									<option>5</option>
									<option>10</option>
									<option>15</option>
									<option>20</option>
								</select> <span>entries</span>
							</div>
						</div>
						<div class="col-xs-4">
							<h2 class="text-center">
								<b>Employee Details</b>
							</h2>
						</div>
						<div class="col-xs-4">
							<div class="search-box">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="material-icons">&#xE8B6;</i></span> <input type="text"
										class="form-control" placeholder="Search&hellip;">
								</div>
							</div>
						</div>
					</div>
				</div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>First Name <!-- <i class="fa fa-sort"></i> --></th>
							<th>Last Name</th>
							<!-- <th>Email</th>
							<th>Gender</th>
							<th>Hobbies</th>
							<th>Profile</th>
							<th>Salary</th>
							<th>Age</th> -->
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						<!-- using jsp tags -->
						<%ArrayList<Employee> employees=(ArrayList)request.getAttribute("employees");
						for(Employee employee:employees){%>
							<tr>
							<td><%=employee.getId() %></td>
							<td><%=employee.getFirstName() %></td>
							<td><%=employee.getLastName() %></td>
							</tr>
						<%}	%>
						
						<!-- using jstl -->
							<%-- <c:set var="emps" value='${requestScope["employees"]}' /><!-- employees is being fetched from ViewEmployeeHandler class where we have set the attribute to request -->
							<c:forEach items="${emps}" var="eobj">
								<tr>
									<td>${eobj.id}</td>
									<td><a href='updateEmp.do?id=${eobj.id }'
										class="text-dark"> <c:out value="${eobj.firstName}"></c:out></a></td>
									<td><c:out value="${eobj.lastName}"></c:out></td>
									<td><c:out value="${eobj.state}"></c:out></td>
									<td>
										<button class="fa fa-close " data-toggle="modal"
											style="transition: all .08s linear; outline: medium none; -moz-outline-style: none; border: 0px; box-shadow: 0 0 0 1px #ebebeb inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #adadad, 0 8px 0 1px rgba(0, 0, 0, 0.4), 0 8px 8px 1px rgba(0, 0, 0, 0.5);"
											data-target="#data" onclick=" showModal(${eobj.id})"></button>
									</td>
								</tr>
							</c:forEach> --%>
							<td>
								<a href="profileCard.jsp" class="view" title="View"	data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
								<a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a> 
								<a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="clearfix">
					<div class="hint-text">
						Showing <b>5</b> out of <b>25</b> entries
					</div>
					<ul class="pagination">
						<li class="page-item disabled"><a href="#">Previous</a></li>
						<li class="page-item"><a href="#" class="page-link">1</a></li>
						<li class="page-item"><a href="#" class="page-link">2</a></li>
						<li class="page-item active"><a href="#" class="page-link">3</a></li>
						<li class="page-item"><a href="#" class="page-link">4</a></li>
						<li class="page-item"><a href="#" class="page-link">5</a></li>
						<li class="page-item"><a href="#" class="page-link">Next</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="modal fade" id="data">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Delete an
						Employee</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Really want to delete??</div>
				<form action="delete-by-id.do" method="get" id="delete-data">
					Id:<input class="form-contro" name="id">
					<div class="modal-footer">
						<button type="submit" class="btn btn-secondary">Yes</button>
						<button type="button" class="btn btn-dark" data-dismiss="modal">No</button>
					</div>
				</form>
			</div>
		</div>
	</div> -->
	<!-- JavaScript -->
	<!-- <script>
		function showModal(id){
			document.getElementById("delete-data").id.value=id;
			$("#data").modal("show");
		}
	</script> -->
</body>
</html>