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
}
