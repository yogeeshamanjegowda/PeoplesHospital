package models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import models.DBConnection;

public class Login {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

	public String checkUser(String user, String pas) {
		String result = "";
		try {
			connection = DBConnection.createConnection();
			statement = connection.createStatement();

			String sql = "select username, type from officialuser where username='"+ user + "' and password='" + pas + "'";
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				result = resultSet.getString(2);
				
			}

		}catch (SQLException ea) {
			ea.printStackTrace();
			
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
		return result;
	}
}
