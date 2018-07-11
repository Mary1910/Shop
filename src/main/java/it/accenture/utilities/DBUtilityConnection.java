package it.accenture.utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtilityConnection {

	public static Connection getConnection(){
		Connection connection = null;
		try {
			Class.forName(CostantiConnessione.DB_DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 try {
			connection = DriverManager.getConnection(CostantiConnessione.DB_URL,CostantiConnessione.DB_USERNAME, CostantiConnessione.DB_PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
		
		return connection;
	}
}
