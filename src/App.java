import faculty.faculty;
public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        faculty fact1 = new faculty("1001","Fname","Lname","1/1/99","something@gmail.com",
        "83728707","somewhere");
        System.out.println(fact1.first_name + fact1.last_name);
    }
}
