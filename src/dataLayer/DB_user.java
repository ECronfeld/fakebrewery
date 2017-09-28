package dataLayer;

import java.sql.SQLException;
import java.sql.*;

public class DB_user {


    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/webapptutorial?useSSL=false";

    static final String USER ="webappuser";
    static final String PASS="test123";

    public boolean isValidUserLogin(String userName, String userPassword){
        boolean isValidUser = false;

        Connection conn = null;
        Statement stmt = null;
        String sql="";

        try {
            Class.forName(JDBC_DRIVER);

            conn = DriverManager.getConnection(DB_URL,USER,PASS);

            stmt = conn.createStatement();

            sql = "SELECT * FROM users WHERE user_name = \""
                    + userName + "\"And password = \"" + userPassword + "\"";

            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                isValidUser = true;
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se){
            se.printStackTrace();
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null)
                    stmt.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
        return isValidUser;
    }


    public boolean createNewUser(String username, String userpassword){
        try
        {
            // create a mysql database connection
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // the mysql insert statement
            String query = " insert into users (user_name, password)"
                    + " values (?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString (1, username);
            preparedStmt.setString (2, userpassword);

            // execute the preparedstatement
            preparedStmt.execute();

            conn.close();
        }
        catch (Exception e)
        {
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
        }
        return true;
    }
}
