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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection cn = new Connection();
		try{
			MongoCollection<Document> collection = cn.getCollection("fillResumeData");
			Document document = new Document("firstname", request.getParameter("first_name"))
					.append("lastname", request.getParameter("last_name"))
					.append("email", request.getParameter("email"))
					.append("phone", request.getParameter("phone"))
					.append("address", request.getParameter("address"))
					.append("about", request.getParameter("about"))
					.append("qualification", request.getParameter("qualification"))
					.append("institute_name", request.getParameter("institute_name"))
					.append("cgpa", request.getParameter("cgpa"))
					.append("skill", request.getParameter("skill"))
					.append("proficiency", request.getParameter("proficiency"))
					.append("project_title", request.getParameter("project_title"))
					.append("project_desc", request.getParameter("project_desc"))
					.append("organization_name", request.getParameter("organization_name"))
					.append("role", request.getParameter("role"))
					.append("experience", request.getParameter("experience"))
					.append("tenure", request.getParameter("tenure"))
					.append("hobby", request.getParameter("hobby"));
			collection.insertOne(document);
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
