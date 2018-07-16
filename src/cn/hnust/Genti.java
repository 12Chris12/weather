package cn.hnust;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class Genti extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/plain;charset=utf-8");
	//  String student_id = request.getParameter("id");
		
	//	System.out.println("id:" + student_id);
		
		try {
			////////////
			// do something
			////////////
			DBConnection db = new DBConnection();
			ResultSet rs = db.executeQuery("select * from questions ");
			
			int tid = 0;
			String question = "";
			String optA = "";
			String optB = "";
			String optC = "";
			String optD = "";
			String answer = "";
			
			ArrayList<questions> list = new ArrayList();
			
			while(rs.next()){
				tid=rs.getInt(1);
				question=rs.getString(2);
				optA=rs.getString(3);
				optB=rs.getString(4);
				optC=rs.getString(5);
				optD=rs.getString(6);
				answer=rs.getString(7);
				questions t = new questions(tid , question , optA , optB , optC , optD , answer);
				list.add(t);
			}
			db.close();
			
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			JSONObject obj = new JSONObject();
			
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
				questions q1 = list.get(ques[k]);
				JSONObject obj1 = new JSONObject();
				obj1.put("tid", q1.id);
				obj1.put("question", q1.question);
				obj1.put("optA", q1.optA);
				obj1.put("optB", q1.optB);
				obj1.put("optC", q1.optC);
				obj1.put("optD", q1.optD);
				obj1.put("answer", q1.answer);
				obj.put("question"+(k+1), obj1);
			}
			
			System.out.println(obj.toString());
			out.print(obj.toString());
			
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
