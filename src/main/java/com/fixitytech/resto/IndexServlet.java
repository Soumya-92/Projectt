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

 

import com.fixitytech.daoo.ItemDAO;

 


@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

   ItemDAO itemDAO;
    public IndexServlet() {
        super();
       itemDAO = new ItemDAO();
        // TODO Auto-generated constructor stub
    }

 

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //response.getWriter().append("Served at: ").append(request.getContextPath());
        HttpSession ss = request.getSession();
        List<CartItem> cart =(List)ss.getAttribute("cart");
        if(cart==null)
            cart= new Vector<CartItem>();
        ss.setAttribute("cart", cart);

        List<Item> products = itemDAO.getItems();

        String path=getServletContext().getRealPath("")+"/uploads/";
        for(Item item:products)
        {
            File file=new File(path+item.getId());
            String names[]=file.list();
            if(names!=null && names.length>0)
            {
            String name=names[0];
            item.setBase64Image("uploads/"+item.getId()+"/"+name);
            }
           // item.setPhoto(names);
        }

        request.setAttribute("prs", products);
        RequestDispatcher rs = request.getRequestDispatcher("First.jsp");
        rs.forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

 

}