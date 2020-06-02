import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet",urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstNum = Integer.parseInt(request.getParameter("firstNum"));
        double secondNum = Integer.parseInt(request.getParameter("secondNum"));
        char operator = request.getParameter("toantu").charAt(0);
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result:</h1>");
        try{
            double result = Calculator.calculate(firstNum, secondNum, operator);
            writer.println("<h2>"+firstNum + " " + operator + " " + secondNum + " = " + result+"</h2>");
        }catch (Exception ex){
            writer.println("Error: " + ex.getMessage());
        }
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
