package manager;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MemberDao {
private Map<Integer, MemberVo> db = new HashMap<>();

public void insertMember(MemberVo vo) {
	vo.setRegdate(new Date(0));
	db.put(vo.getNum(), vo);
}
public MemberVo selectMember(int num) {
	return db.get(num);
	
	}
public List<MemberVo> selectMemberAll(){
	return new ArrayList<MemberVo>(db.values());
}
public void updateMember(MemberVo vo) {
	db.put(vo.getNum(), vo);
}

public void deleteMember(int num) {
	db.remove(num);
}
public void deleteMemberAll() {
	db.clear();
}
public void insertMember1(int i, MemberVo vo1) {
	// TODO Auto-generated method stub
	
}
public void insertMemberl1(int i, MemberVo vo2) {
	// TODO Auto-generated method stub
	
}
public void insertMemberl(int i, MemberVo vo3) {
	// TODO Auto-generated method stub
	
}
}

