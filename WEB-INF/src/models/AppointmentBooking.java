package models;

import java.sql.SQLException;

import models.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AppointmentBooking {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	ResultSet resultSet1 = null;
	
	public String registerBooking(String doctorName, String doctor, String department, String pName, String address, String mob, String visitType) {
		String status = "";
		try {
			connection = DBConnection.createConnection();
			statement = connection.createStatement();
			String sql = "insert into appointmentdetails values('" + pName + "','" + address + "','" + mob + "','"+ doctor + "','" + department + "','" + visitType+"')";
			statement.executeUpdate(sql);
			status = "1";
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				statement.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return status;
	}
}
