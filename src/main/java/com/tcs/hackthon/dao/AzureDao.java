package com.tcs.hackthon.dao;

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import com.tcs.hackthon.bean.Feedback;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;

public class AzureDao {

	public static boolean insertFeedback(Feedback feedback)  {

		
		final String JDBC_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";  
		String hostName = "maskaraserver";
		String dbName = "maskarabase";
		String user = "maskaraserver@maskaraserver";
		String password = "XXXX";
		String url = String.format(
				"jdbc:sqlserver://%s.database.windows.net:1433;database=%s;user=%s;password=%s;encrypt=true;hostNameInCertificate=*.database.windows.net;loginTimeout=30;",
				hostName, dbName, user, password);
		Connection connection = null;

		try {
			Class.forName(JDBC_DRIVER);
			connection = DriverManager.getConnection(url);

			String insertSql = "INSERT INTO feedback2 (name, email, message, entrydate) VALUES (?,?,?,?);";

			java.util.Date date = new java.util.Date();
			java.sql.Timestamp sqlTimeStamp = new java.sql.Timestamp(date.getTime());

			try {

				PreparedStatement prep = connection.prepareStatement(insertSql);
				prep.setString(1, feedback.getName());
				prep.setString(2, feedback.getEmail());
				prep.setString(3, feedback.getMessage());
				prep.setTimestamp(4, sqlTimeStamp);

				int count = prep.executeUpdate();
			}

			catch (Exception e) {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	
	
	public static ArrayList<Feedback> getFeedbacks() {

		final String JDBC_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String hostName = "maskaraserver";
		String dbName = "maskarabase";
		String user = "maskaraserver@maskaraserver";
		String password = "XXXXX";
		String url = String.format(
				"jdbc:sqlserver://%s.database.windows.net:1433;database=%s;user=%s;password=%s;encrypt=true;hostNameInCertificate=*.database.windows.net;loginTimeout=30;",
				hostName, dbName, user, password);
		Connection connection = null;

		ArrayList<Feedback> allFeedbacks=new ArrayList<Feedback>();
		try {
			
			Class.forName(JDBC_DRIVER);
			connection = DriverManager.getConnection(url);

			String selectSql = "select * from feedback2";

			try {
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(selectSql);

				while (resultSet.next()) {
					Feedback feedback =new Feedback();
					feedback.setName(resultSet.getString(2));
					feedback.setEmail(resultSet.getString(3));
					feedback.setMessage(resultSet.getString(4));
					allFeedbacks.add(feedback);
				}
			}
			catch (Exception e) {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return allFeedbacks;
	}
	 
	
}
