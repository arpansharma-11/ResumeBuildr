package Connect;

import com.mongodb.*;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.UpdateOptions;
import com.mongodb.client.result.*;
import org.bson.Document;
import org.bson.types.ObjectId;
import java.util.List;
import java.util.Arrays;
import java.util.ArrayList;
import static com.mongodb.client.model.Filters.*;
import static com.mongodb.client.model.Updates.*; 
import Connect.Connection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class FillDatabase
 */
public class FillDatabase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FillDatabase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public int getLength(HttpServletRequest request, HttpServletResponse response,String s) {
    	int count = 0;
    	while(true) {
			String x = s+count;
			if(request.getParameter(x)==null) {
				break;
			}
			count+=1;
		}
    	return count;
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection cn = new Connection();
		try{
			List<String> hobbies = new ArrayList<String>(); 
			for(int i=0;i<getLength(request,response,"hobby_");i++) {
				hobbies.add(request.getParameter("hobby_"+i));
			}
			
			List<Document> qualifications = new ArrayList<Document>();
			
			for(int i=0;i<getLength(request,response,"qualification");i++) {
				Document qualification = new Document("qualification",request.getParameter("qualification"+i))
						.append("institute_name", request.getParameter("institute_name"+i))
						.append("cgpa", request.getParameter("cgpa"+i))
						.append("passing_year", request.getParameter("passing_year"+i));
				qualifications.add(qualification);
			}
			
			List<String> skills = new ArrayList<String>(); 
			for(int i=0;i<getLength(request,response,"skill_");i++) {
				skills.add(request.getParameter("skill_"+i));
			}
			
			List<Document> projects = new ArrayList<Document>();
			
			for(int i=0;i<getLength(request,response,"project_title");i++) {
				Document project = new Document("project_title",request.getParameter("project_title"+i))
						.append("project_description", request.getParameter("project_description"+i));
				projects.add(project);
			}
			
			List<Document> organizations = new ArrayList<Document>();
			
			for(int i=0;i<getLength(request,response,"organization_name_");i++) {
				Document organization = new Document("organization_name",request.getParameter("organization_name_"+i))
						.append("role", request.getParameter("role_"+i))
						.append("start-date", request.getParameter("start-date_"+i))
						.append("end-date", request.getParameter("end-date_"+i));
				organizations.add(organization);
			}
			
			MongoCollection<Document> collection = cn.getCollection("fillResumeData");
			Document document = new Document("firstname", request.getParameter("first_name"))
					.append("lastname", request.getParameter("last_name"))
					.append("email", request.getParameter("email"))
					.append("phone", request.getParameter("phone"))
					.append("address", request.getParameter("address"))
					.append("city", request.getParameter("city"))
					.append("state", request.getParameter("state"))
					.append("zip", request.getParameter("zip"))
					.append("qualifications", qualifications)
					.append("skills", skills)
					.append("projects", projects)
					.append("organizations", organizations)
					.append("hobbies", hobbies);
			collection.insertOne(document);
			response.sendRedirect("Template1.jsp");
			System.out.println("Document inserted successfully");
		}
		catch(Exception e){
			System.out.println(e);
		}
		finally{
			System.out.println();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
