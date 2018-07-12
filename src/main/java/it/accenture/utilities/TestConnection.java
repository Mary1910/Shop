package it.accenture.utilities;

import java.sql.Connection;

public class TestConnection {

<<<<<<< HEAD
	public static void main(String[] args) {
		
		Connection connection = DBUtilityConnection.getConnection();
		if (connection != null) {
			System.out.println("connessione stabilita con successo");
		}
	}
	
=======
	public static void main (String [] args){
	Connection connection = DBUtilityConnection.getConnection();
	if (connection != null){
		System.out.println("connessione stabilita con successo");
	}
}
>>>>>>> branch 'master' of https://github.com/Mary1910/Shop
}
