package studentmanagement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insertStudent")
public class AddStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "9490");
            String sql = "INSERT INTO student (name, date_of_birth, gender, email, phone_number, address) VALUES (?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, dateOfBirth);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, phoneNumber);
            ps.setString(6, address);

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                request.setAttribute("message", "Student added successfully!");
            } else {
                request.setAttribute("error", "Failed to add student. Please try again.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "An error occurred: " + e.getMessage());
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        request.getRequestDispatcher("/viewStudents.jsp").forward(request, response);
    }
}
