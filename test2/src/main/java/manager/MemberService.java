package manager;

import java.util.List;

public class MemberService {
	private MemberDao memberDao;
	
	public MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	//등록하기
	public boolean regist(MemberVo vo) {
	if(memberDao.selectMember(vo.getNum())== null) {
		memberDao.insertMember(vo);
		return true;
	}	
	return false;
	}
	//조회
	public List<MemberVo> listAll(){
		return memberDao.selectMemberAll();
		}
	
	//수정
	public void edit(MemberVo vo) {
		MemberVo searchMember = memberDao.selectMember(vo.getNum()); 
		
		if(searchMember.getMemberPw1().equals(vo.getMemberPw1())) {
			memberDao.updateMember(vo);
		}
	}
	//탈퇴 
		public void remove(int num) {
			memberDao.deleteMember(num);
		}

		public MemberVo read1(int i) {
			// TODO Auto-generated method stub
			return null;
		}

		public MemberVo read(int i) {
			// TODO Auto-generated method stub
			return null;
		}
	
	}

