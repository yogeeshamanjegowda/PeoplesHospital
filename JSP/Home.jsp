<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LoginScreen</title>
<style type="text/css">
.header1 {
	width: 60%;
	float: left;
}

.header2 {
	width: 40%;
	float: left;
	padding-top: 10px
}

.services {
	width: 22%;
	float: left;
}

.departments {
	width: 22%;
	float: left;
}

.apointment {
	width: 28%;
	float: left;
}

.login {
	width: 28%;
	float: left;
	margin-top: 75px;
}

</style>
</head>
<body style="background-color: #008ae6; color: white;">

	<div style="height: 85px" align="center">
		<div class="header1">
			<h1>A J Hospital and Research Centre</h1>
		</div>
		<div class="header2" align="left">
			<h2>A unit of AJ Charitable Trust(R)</h2>
		</div>
	</div>
	<div style="height: 368px">
		<div class="services">
			<h3>Our Services</h3>
			<li>Ambulance</li>
			<li>Day Care</li>
			<li>Pharmacy</li>
			<li>Laboratory</li>
			<li>Pysiotherapy</li>
			<li>Diet Service</li>
			<li>Paediatrics</li>
			<li>Plastic Surgery</li>
			<li>Radio Diagnosis</li>
			<li>Health Check Up</li>
			<li>Special Equipment</li>
			<li>Home Health Services</li>
			<li>Emergency/Trauma</li>
		</div>
		<div class="departments">
			<h3>Departments</h3>
			<li>ENT</li>
			<li>Oncology</li>
			<li>Urology</li>
			<li>Neurology</li>
			<li>Orthopaedics</li>
			<li>Endocrinology</li>
			<li>Cardiology</li>
			<li>Dermatology</li>
			<li>Psychiatry</li>
			<li>Endocrinology</li>
			<li>Gastroenterology</li>
			<li>Ophthalmology & ENT</li>
			<li>Obstetrics & Gynecology</li>
		</div>
		<div class="apointment">
			<h3>Book an Appointment</h3>
			<form method="post" action="<%=request.getContextPath()%>/Controller">
			<table>
				<tr>
					<td>Patient Status</td>
					<td><input type="radio" name="visitType" value="new" checked />New
						<input type="radio" name="visitType" value="revisit" />Revisit
					</td>
				</tr>
				<tr>
					<td>Booking Date:</td>
					<td><input type="date" id="myDate" value="15-08-2018" size="20" required style="width:157px"></td>
				</tr>
				<tr>
					<td width="100px">Doctor:</td>
					<td><input type="text" name="doctorName"/></td>
				</tr>
				<tr>
					<td colspan='3' align="center">OR</td>
				</tr>
				<tr>
					<td>Department:</td>
					<td>
						<select  name="department" required>
							<option ></option>
							<option value="ent">ENT</option>
							<option value="oncology">Oncology</option>
							<option value="urology">Urology</option>
							<option value="neurology">Neurology</option>
							<option value="orthopaedics">Orthopaedics</option>
							<option value="endocrinology">Endocrinology</option>
							<option value="cardiology">Cardiology</option>
							<option value="dermatology">Dermatology</option>
							<option value="endocrinology">Endocrinology</option>
							<option value="gastroenterology">Gastroenterology</option>
							<option value="ophthalmology">Ophthalmology</option>
							<option value="gynecology">Obstetrics&Gynecology</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Patient Name:</td>
					<td><input type="text" required name="pName"/></td>
				</tr>
				
				<tr>
					<td>Address:</td>
					<td><input minlength="20" required name="address"/></td>
				</tr>
				<tr>
					<td>Mob:</td>
					<td><input type="text"  name="mob" maxlength="10" required /></td>
				</tr>
				<tr align="center">
					<td colspan='3'><button type="submit" value="Booking" name="submit">Book </button>
					<input type="reset" value="Reset"></td>
				</tr>
			</table>
			</form>
		</div>
		<div class="login" align="center">

			<h4>Office Use Only</h4>
			<form method="post" action="<%=request.getContextPath()%>/Controller">
				<table>
					<tr>
						<td>User Name</td>
						<td colspan='2'>
							<input id="userId" type="text" required name="userId"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td colspan='2'><input id="password" type="password" name="password" required></td>
					</tr>
					<tr align="center">
						<td colspan='3'><input type="submit" id="Log" value="Login"
							name="submit" /> <input type="reset" value="Reset"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<footer>
	<p>Contact Us: MG Road Chikkamagaluru Karnataka - 577100
		Mob:9800098000 E-Mail:ajhospital@ajcharitables.com © 2018 AJHospital.
		All Rights Reserved</p>
	</footer>
</body>
</html>