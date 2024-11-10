package util;
import java.sql.*;

public class jdbc {
    public static void main(String[] args){
        //adding data to database
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            String url = "jdbc:mysql://localhost:3306/uni_management";
            String user = "root";
            String password = "password";

            connection = DriverManager.getConnection(url, user, password);
            statement = connection.createStatement();
            if (connection != null){
                System.out.println("Connected to database");
            }
            
        }
        catch (SQLException e){
            e.printStackTrace();

        }
    }
}
