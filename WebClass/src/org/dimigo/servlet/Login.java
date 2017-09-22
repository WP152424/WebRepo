package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n",id,pwd);
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
//		out.println("{");
//		out.println("\"id\":"+"\""+id+"\"");
//		out.println("}");
		
//		JsoNObject json = new JSONObject();
//		json.put("id",id);
//		System.out.println(json.toJSONString);
//		out.wirte(json.toJSONString());
		
		//Gson Library
		
		Gson gson = new Gson();
		JsonObject object = new JsonObject();
		object.addProperty("id", id);
		String json = gson.toJson(object);
		out.print(object);
		System.out.println(object);
		out.close();
	}

}
