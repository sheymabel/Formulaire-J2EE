package forms;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Intervention
 */
@WebServlet("/Intervention")
public class Intervention extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Intervention() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher( "/WEB-INF/froms.jsp" ).forward( request, response ); 

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
        String label = request.getParameter("label");
        Date date = Date.valueOf(request.getParameter("date"));
        String heureDebut = request.getParameter("heureDebut");
        int duree = Integer.parseInt(request.getParameter("duree"));
        String intervenant = request.getParameter("intervenant");
        String client = request.getParameter("client");

        
        Interventio intervention = new Interventio(label, date, heureDebut, duree, intervenant, client);

       
        plann planning = (plann) getServletContext().getAttribute("planning");

      
        planning.addIntervention(intervention);

       
        response.sendRedirect("InterventionInfoForm.jsp");
    }


	

}
