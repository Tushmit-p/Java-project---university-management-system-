package result;

public class result {
    public String result_id;
    public String student_id;
    public String course_id;
    public float marks_obtained;
    public String grade;

    public result(String result_id, String student_id, String course_id, float marks_obtained, String grade) {
        this.result_id = result_id;
        this.student_id = student_id;
        this.course_id = course_id;
        this.marks_obtained = marks_obtained;
        this.grade = grade;
    }
}
