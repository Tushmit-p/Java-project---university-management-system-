package department;

public class department {
    String department_id;
    String department_name;
    String head_of_department;

    department(String department_id, String department_name){
        this.department_id = department_id;
        this.department_name = department_name;
    }

    void add_hod(String head_of_department){
        this.head_of_department = head_of_department;
    }


    /*public static void main(String[] args){
        //adding data to database
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            String url = "jdbc:mysql://localhost:3306/records_2023_2024";
            String user = "root";
            String password = "Tushmit2610";

            connection = DriverManager.getConnection(url, user, password);
            statement = connection.createStatement();
            //resultSet = statement.executeQuery("insert into vii_unit_1 value(1, \"student11\", 10, 5, 4, \"A1\" ");
            String query = "INSERT INTO vii_unit_1 VALUE(11, \"student11\", 10, 5, 4, \"A1\" )";
            int rows_inserted = statement.executeUpdate(query);
            System.out.println(query);
            System.out.println(rows_inserted);



        }
        catch (SQLException e){
            e.printStackTrace();

        }
    }*/
}
