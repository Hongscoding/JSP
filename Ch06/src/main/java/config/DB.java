package config;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	
	private static DB instance = new DB();

	public static DB getInstance() {
		return instance;
	}
	
	private DB() {}
	
	private final String HOST = "jdbc:mysql://127.0.0.1:3306/java1_college";
	private final String USER = "root";
	private final String PASS = "1234";

	public void getConnection() throws SQLException {
		
		//2단계
		DriverManager.getConnection(HOST, USER, PASS);
		
	}
	
	
	
}
