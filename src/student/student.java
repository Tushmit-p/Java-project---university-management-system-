package student;
public class student{
    String first_name;
    String last_name;
    String date_of_birth;
    String gender;
    String mother_name;
    String father_name;
    String contact1;
    String contact2;
    String email;
    String nationality;
    String permanent_address;
    String present_address;
    String course;
    String section;
    String department_id;

    student(String first_name, String last_name, String date_of_birth, String gender, String mother_name, String father_name,
            String contact1, String contact2, String email, String nationality,
            String permanent_address, String present_address, String department_id){
        this.first_name = first_name;
        this.last_name = last_name;
        this.date_of_birth = date_of_birth;
        this.gender = gender;
        this.mother_name = mother_name;
        this.father_name = father_name;
        this.contact1 = contact1;
        this.contact2 = contact2;
        this.email = email;
        this.nationality = nationality;
        this.permanent_address = permanent_address;
        this.present_address = present_address;
        this.department_id = department_id;
    }

    void add_section(String section){
        this.section = section;
    }

    void add_course(String course){
        this.course = course;
    }
}

