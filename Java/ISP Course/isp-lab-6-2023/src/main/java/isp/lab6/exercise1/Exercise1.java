package isp.lab6.exercise1;

public class Exercise1 {
    public static void main(String[] args) {
        StudentRepo studentRepo = new StudentRepo();
        Student student = new Student("123","Vlad","Andreica");
        studentRepo.addStudent(student);
        student.addGrade("Mathematics",10);
        student.addGrade("Biology", 8);
        student.addGrade("Romanian", 9);
        student.addGrade("English",10);
        studentRepo.addStudent(new Student("124","Eugen","Raducu"));
        studentRepo.listAllStudents();
        studentRepo.updateStudent(new Student("124","Eugen","Radacu"));
        studentRepo.listAllStudents();
        studentRepo.removeStudent("124");
        System.out.println("Average is: " + studentRepo.calculateAverageStudent(student));
        studentRepo.listAllStudents();
    }
}
