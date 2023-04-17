package test2;

import java.security.interfaces.RSAKey;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class ExamSelect01 {
	public static void main(String[]args) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String user = "tester";
		String password = "1234";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName("orcale.jdbc.PracleDriver");
			System.out.println("클래스 로딩 성공!");
			
			StringBuffer sql = new StringBuffer();
			sql.append("Select * from \"INFO\"");
			conn = DriverManager.getConnection(url, user,password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql.toString());
		
			while(rs.next()) {
				System.out.println(rs.getLong(1));
				System.out.println(rs.getString("NAME"));
				System.out.println(rs.getLong(3));
				System.out.println(rs.getLong("ADDRESS"));
				System.out.println();
				
			}
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch (SQLException e) {
					
					}
				}
			}
		}
				
			}