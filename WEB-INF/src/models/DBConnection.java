package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection createConnection() throws SQLException {

		Connection con = null;
		String URL = "jdbc:oracle:thin:@localhost:1521:XE";
		final String USER = "aj";
		final String PASS = "aj";
		try {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con = DriverManager.getConnection(URL, USER, PASS);

		} catch (Exception e) {

		}

		return con;

	}

}
