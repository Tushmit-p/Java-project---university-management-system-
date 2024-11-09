package faculty;
public class faculty {
    public String faculty_id;
    public String first_name;
    public String last_name;
    public String date_of_birth;
    public String email;
    public String phone_no;
    public String address;
    public String designation = "Faculty";
    public String department_id;

    public faculty(String faculty_id, String first_name, String last_name, String date_of_birth,
            String email, String phone_no, String address){
        this.faculty_id = faculty_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.date_of_birth = date_of_birth;
        this.email = email;
        this.phone_no = phone_no;
        this.address = address;
    }

    void add_designation(String designation){
        this.designation = designation;
    }

    void add_department_id(String department_id){
        this.department_id = department_id;
    }
}
