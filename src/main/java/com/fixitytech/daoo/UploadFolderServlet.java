package com.fixitytech.daoo;

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

import com.fixitytech.DAO.userDAO;
import com.fixitytech.resto.Item;
import com.fixitytech.resto.User;

@WebServlet("/uploadFolder")
@MultipartConfig(maxFileSize = 16177215)
public class UploadFolderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       ItemDAO itemdao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadFolderServlet() {
        super();
        itemdao =new ItemDAO();
        // TODO Auto-generated constructor stub
    }

 

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        RequestDispatcher rd=request.getRequestDispatcher("additem.jsp");
        rd.forward(request, response);
    }

 
    private static final String UPLOAD_DIR = "uploads";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
       int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        Part filePart = request.getPart("photo");

        String path=getServletContext().getRealPath("")+File.separator+UPLOAD_DIR;

        System.out.println(path);

        File d=new File(path+"/"+id);
        if(!d.exists())
            d.mkdir();

        filePart.write(path+"/"+id+"/"+filePart.getSubmittedFileName());

        Item itm = new Item();
		itm.setId(id);
		itm.setName(name);
		itm.setPrice(price);
		
        itemdao.addItem(itm);
    }
}


 