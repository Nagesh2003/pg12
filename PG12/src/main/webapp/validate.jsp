<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Validation</title>
</head>
<body>
    <h2>Login Validation</h2>
    <%
    String user_id = request.getParameter("user_id");
    String password = request.getParameter("password");

    // JDBC URL, username, and password of your database
    String JDBC_URL = "jdbc:mysql://localhost:3306/userdb";
    String USERNAME = "root"; // change to your MySQL username
    String PASSWORD = "ise123"; // change to your MySQL password

    try {
        // Register JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Open a connection
        Connection conn = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

        // Create a prepared statement to prevent SQL injection
        String sql = "SELECT * FROM users WHERE user_id=? AND password=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, user_id);
        stmt.setString(2, password);

        // Execute the query
        ResultSet rs = stmt.executeQuery();

        // Check if user_id and password match
        if (rs.next()) {
            out.println("<p>Login successful! Welcome, " + user_id + "!</p>");
        } else {
            out.println("<p>Invalid user_id or password.</p>");
        }

        // Close connections
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    }
    %>
</body>
</html>
