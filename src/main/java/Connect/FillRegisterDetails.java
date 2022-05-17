package Connect;

import com.mongodb.*;
import com.mongodb.client.*;
import org.bson.Document;
import org.bson.types.ObjectId;
import java.util.*;
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
import java.io.PrintWriter;

/**
 * Servlet implementation class FillRegisterDetails
 */
public class FillRegisterDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FillRegisterDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		Connection cn = new Connection();
		
		try{
			MongoCollection<Document> collection = cn.getCollection("registrationData");
			Document myEmail = collection.find(eq("email", request.getParameter("email"))).first();
			if(myEmail == null){
				Document document = new Document("firstname", request.getParameter("first_name"))
						.append("lastname", request.getParameter("last_name"))
						.append("email", request.getParameter("email"))
						.append("phone", request.getParameter("phone"))
						.append("password", request.getParameter("password"));
				collection.insertOne(document);
				
				int expireTime = 2000;
				
				Cookie fn = new Cookie("first_name",request.getParameter("first_name"));
				fn.setMaxAge(expireTime);
				response.addCookie(fn);
				
				Cookie ln = new Cookie("last_name",request.getParameter("last_name"));
				ln.setMaxAge(expireTime);
				response.addCookie(ln);
				
				Cookie eml = new Cookie("email",request.getParameter("email"));
				eml.setMaxAge(expireTime);
				response.addCookie(eml);
				
				Cookie ph = new Cookie("phone",request.getParameter("phone"));
				ph.setMaxAge(expireTime);
				response.addCookie(ph);
				
				response.sendRedirect("data.jsp");
				System.out.println("Register Details inserted successfully");
			}
			else{
				out.println("User already exists");
			}
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
