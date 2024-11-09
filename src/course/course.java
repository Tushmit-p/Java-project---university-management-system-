package course;
public class course {
    String course_id;
    String course_name;
    String course_code;
    String credits;
    String department_id;

    course(String course_code, String course_id, String course_name, String credits, String department_id) {
        this.course_code = course_code;
        this.course_id = course_id;
        this.course_name = course_name;
        this.credits = credits;
        this.department_id = department_id;
    }
}