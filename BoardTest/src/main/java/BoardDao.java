import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDto
selectOne(int bd_no) {
	try {
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
	
	PreparedStatement pstm = null;
	ResultSet rs = null;
	BoardDto res = null;
	
	String sql = "SELECT * FROM BOARD WHERE BD_NO=? ";
	
	try {
		pstm = con.prepareStatement(sql);
		pstm.setInt(1, bd_no);
		
		rs= pstm.executeQuery();
		
		while(rs.next()){
			res = new BoardDto();
			res.setBd_no(rs.getInt(1));
			res.setBd_name(rs.getString(2));
			res.setBd_title(rs.getString(3));
			res.setBd_content(rs.getString(4));
			res.setBd_date(rs.getDate(5));
		
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
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
		글추가
	}
}