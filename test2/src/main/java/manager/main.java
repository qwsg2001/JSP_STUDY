package manager;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map; 

public class main{
   public static void main(String[] args){
   
Map<Integer, MemberVo> db = new HashMap<>();

//C(insert) 
MemberVo vo1 = new MemberVo(1, "test1", "1234", "nick1");
vo1.setRegdate(new Date());
MemberVo vo2 = new MemberVo(2, "test2", "1234", "nick2");
vo2.setRegdate(new Date());
MemberVo vo3 = new MemberVo(3, "test3", "1234", "nick3");
vo3.setRegdate(new Date());

db.put(1, vo1);
db.put(2, vo2);
db.put(3, vo3);
System.out.println("저장 완료!");

//R(select) 
List<MemberVo> ls = new ArrayList<>(db.values());


for(MemberVo tmp : ls) {
   System.out.println(tmp); 

System.out.println(tmp);
}
System.out.println("전체조회 완료!"); 

MemberVo vo = null;
vo = db.get(1);
System.out.println(vo);

vo = db.get(4);
System.out.println(vo);
System.out.println("조회 완료!");

//U(update)
vo = db.get(1);
System.out.println(vo);

if(vo != null){
vo.setMemberPW("1234");
vo.setNickName("1nick");
db.put(vo.getNum(), vo);
}
vo = db.get(1);
System.out.println(vo);
System.out.print("수정 완료!");

//D(delete) 
db.remove(2);
ls = new ArrayList<>(db.values());
for(MemberVo tmp : ls) 
{
	System.out.println(tmp);
}
System.out.println("전체조회 완료! ");
   }

@Override
public String toString() {
	return "main [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
}

public main() {
	super();
	// TODO Auto-generated constructor stub
	
}

}


