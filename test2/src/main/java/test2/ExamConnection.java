package test2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ExamConnection {
	public static void main(String[]args) {
		String user = "tester";
		String password = "1234";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName("orcale.jdbc.PracleDriver");
			System.out.println("클래스 로딩 성공!");
			
			Connection con = DriverManager.getConnection(url, user,password);
			System.out.println("데이터베이스 접속 성공");
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
}
