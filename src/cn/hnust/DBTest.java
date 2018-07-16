package cn.hnust;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

public class DBTest {

	public static void main(String[] args) {
		try {
			DBConnection b =new DBConnection();
			//String sql = "insert into questions(tid,question,optA,optB,optC,optD,answer) values('','','','','','','')";
			
			//b.execute(sql);
			ResultSet rs = b.executeQuery("select * from questions");
			
			ArrayList<questions> list = new ArrayList<questions>();
			while(rs.next()){
				int tid = rs.getInt(1);
				String question = rs.getString(2);
				String optA = rs.getString(3);
				String optB = rs.getString(4);
				String optC = rs.getString(5);
				String optD = rs.getString(6);
				String answer = rs.getString(7);
				
				questions t = new questions(tid , question , optA , optB , optC , optD , answer);
				list.add(t);
			}
			b.close();
			Random r = new Random();
			int j=0,i=0;
			int[] ques= {-1,-1,-1,-1};
			while(j<4) {
				int randnumber = r.nextInt(list.size());
				System.out.println(randnumber);
				//if not exist 
				ques[j] = randnumber;
				for(i=0;i<j;i++)
					if(ques[i]==randnumber)  break;
				if(i==j) j++;
			}
			
			for(int k=0;k<4;k++) {
				questions s = list.get(ques[k]);
				System.out.println(s.id);
				System.out.println(s.question);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
