import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDao(int bd_no){
	
	//db 계정 연결
	try {
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	PreparedStatement pstm = null;
	ResultSet rs = null;
	BoardDto res = null;
	
	String sql = " SELECT * FROM BOARD WHERE BD_NO=? ";
	
	//sql 쿼리 실행
	try {
		pstm = con.prepareStatement(sql);
		pstm.setInt(1, bd_no);
		
		rs = pstm.executeQuery();
		
		while(rs.next()) {
			res = new BoardDto();
			res.setBd_no(rs.getInt(1));
			res.setBd_name(rs.getString(2));
			res.setBd_title(rs.getString(3));
			res.setBd_content(rs.getString(4));
			res.setBd_date(rs.getDate(5));
		}
	} catch (SQLException e){
		e.printStackTrace();
	}finally {
		try {
			rs.close();
			pstm.close();
			con.close();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return res;
}

public int insert(BoardDto dto) {
	try {
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
		
	}catch (SQLException e){
		e.printStackTrace();
	}
	
	PreparedStatement pstm = null;
	int res = 0;
	
	String sql = " INSERT INTO BOARD VALUES(BD_SEQ.NEXTVAL, ?, ?, ?, SYSDATE)";
	
	try {
		pstm = con.PreparedStatement(sql);
		pstm.setString(1, dto.getBd_name);
		pstm.setString(2, dto.getBd_name);
		pstm.setString(3, dto.getBd_name);
		
		res = pstm.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		try {
			pstm.close();
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return res;
}
