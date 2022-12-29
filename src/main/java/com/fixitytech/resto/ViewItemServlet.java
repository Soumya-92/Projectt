package com.fixitytech.resto;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fixitytech.DAO.ItemDAO;

/**
 * Servlet implementation class ViewItemServlet
 */
@WebServlet("/viewitem")
public class ViewItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ItemDAO itemdao;
    public ViewItemServlet() {
        super();
        // TODO Auto-generated constructor stub
        itemdao = new ItemDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  HttpSession ss = request.getSession();
	        List<CartItem> cart =(List)ss.getAttribute("cart");
	        if(cart==null)
	            cart= new Vector<CartItem>();
	        ss.setAttribute("cart", cart);

	        List<Item> products = itemdao.getItemss();

	        String path=getServletContext().getRealPath("")+"/uploads/";
	        for(Item item:products)
	        {
	            File file=new File(path+item.getId());
	            String names[]=file.list();
	            String name=names[0];
	            item.setBase64Image("uploads/"+item.getId()+"/"+name);
	        }

	        request.setAttribute("prs", products);
	        RequestDispatcher rs = request.getRequestDispatcher("viewitem.jsp");
	        rs.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
