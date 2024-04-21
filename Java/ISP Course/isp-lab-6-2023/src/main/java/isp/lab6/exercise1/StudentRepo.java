package isp.lab6.exercise1;

import java.util.ArrayList;
import java.util.List;

public class StudentRepo {
    private List<Student> students = new ArrayList<>();

    public void addStudent(Student student) {
        students.add(student);
    }

    public void removeStudent(String ID) {
        students.remove(new Student(ID));
    }

    public void updateStudent(Student student) {
        students.set(students.indexOf(student), student);
    }

    public double calculateAverageStudent(Student student) {
        return student.getGrades().stream().mapToInt(i -> i).average().orElse(-1);
    }

    public void listAllStudents() {
        students.forEach(System.out::println);
    }
}
