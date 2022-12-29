package com.fixitytech.resto;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.fixitytech.daoo.ItemDAO;

/**
 * Servlet implementation class AddImageServlet
 */
@MultipartConfig()
@WebServlet("/addimage")
public class AddImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ItemDAO itemdao;
    public AddImageServlet() {
        super();
        // TODO Auto-generated constructor stub
        itemdao = new ItemDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("addimage.jsp");
        requestDispatcher.forward(request, response);  
		
	}

	
	 private static final String UPLOAD_DIR = "uploads";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		try {
			
			int id = Integer.parseInt(request.getParameter("id"));
			
	            Part filePart = request.getPart("photo");

		        String path=getServletContext().getRealPath("")+File.separator+UPLOAD_DIR;

		        System.out.println(path);

		        File d=new File(path+"/"+id);
		        if(!d.exists())
		            d.mkdir();

		        filePart.write(path+"/"+id+"/"+filePart.getSubmittedFileName());
			
		}
		        
			 catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			
			}
			
		  
	        

	}

}
