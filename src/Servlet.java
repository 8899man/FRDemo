import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;





public class Servlet extends HttpServlet{
	public void init(ServletConfig servletConfig) throws ServletException
	{
		
		String servletContext = servletConfig.getServletContext().getRealPath("/");
		//StringBuffer fileBuffer = new StringBuffer();
		//String pathString = servletContext.getContextPath();
		//fileBuffer.append("");
		System.out.println("pathString:"+servletContext);
		System.out.println(System.getProperty("user.dir"));
		System.out.println(ClassLoader.getSystemResource(""));
	}
}
