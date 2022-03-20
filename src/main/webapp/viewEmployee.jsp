<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employees</title>
<style>
table {
  text-align: left;
  position: relative;
  border-collapse: collapse; 
  background-color: #f6f6f6;
}/* Spacing */
td, th {
  border: 1px solid #999;
  padding: 20px;
}
th {
  background: brown;
  color: white;
  border-radius: 0;
  position: sticky;
  top: 0;
  padding: 10px;
}
.primary{
  background-color: #000000
}

tfoot > tr  {
  background: black;
  color: white;
}
tbody > tr:hover {
  background-color: #ffc107;
}
</style>
</head>
<body>
	<table>
		<caption>List of All Employees</caption>
		<thead>
			<tr>
				<th class="primary" scope="col">Websites</th>
				<th scope="col">Certification</th>
				<th scope="col">Tuition</th>
				<th scope="col">Top Courses</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">Freecode Camp</th>
				<td>Yes</td>
				<td>Free</td>
				<td>Web Development and Design</td>
			</tr>
			<tr>
				<th scope="row">Udemy</th>
				<td>Yes</td>
				<td>Paid</td>
				<td>Python and Machine Learning</td>
			</tr>
			<tr>
				<th scope="row">Coursera</th>
				<td>Yes</td>
				<td>Free and Paid</td>
				<td>IoT and AI</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<th>Total Courses</th>
				<td colspan="4"><i>What are you waiting for? Get Started
						now for free</i></td>
			</tr>
		</tfoot>
	</table>
</body>
</html>