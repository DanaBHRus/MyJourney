package exercise1;

import isp.lab6.exercise1.Student;
import isp.lab6.exercise1.StudentRepo;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;

public class TestExercise1 {
    public StudentRepo makeStudentRepo(){
        StudentRepo studentRepo = new StudentRepo();
        Student student = new Student("123","Vlad","Andreica");
        studentRepo.addStudent(student);
        student.addGrade("Mathematics",10);
        student.addGrade("Biology", 8);
        student.addGrade("Romanian", 9);
        student.addGrade("English",10);
        studentRepo.addStudent(new Student("124","Eugen","Raducu"));
        return studentRepo;
    }

    @Test
    public void addStudentTest(){
        StudentRepo studentRepo = makeStudentRepo();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        studentRepo.listAllStudents();
        System.out.flush();
        System.setOut(old);
        String expected = "Student{ID='123', firstName='Vlad', lastName='Andreica', grades={English=10, Romanian=9, Mathematics=10, Biology=8}}\r\n" +
                "Student{ID='124', firstName='Eugen', lastName='Raducu', grades={}}\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void removeStudentTest(){
        StudentRepo studentRepo = makeStudentRepo();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        studentRepo.removeStudent("124");
        studentRepo.listAllStudents();
        System.out.flush();
        System.setOut(old);
        String expected = "Student{ID='123', firstName='Vlad', lastName='Andreica', grades={English=10, Romanian=9, Mathematics=10, Biology=8}}\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void updateStudentTest(){
        StudentRepo studentRepo = makeStudentRepo();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        studentRepo.updateStudent(new Student("124","Eugen","Radacu"));
        studentRepo.listAllStudents();
        System.out.flush();
        System.setOut(old);
        String expected = "Student{ID='123', firstName='Vlad', lastName='Andreica', grades={English=10, Romanian=9, Mathematics=10, Biology=8}}\r\n" +
                "Student{ID='124', firstName='Eugen', lastName='Radacu', grades={}}\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void calculateAverageTest(){
        StudentRepo studentRepo = makeStudentRepo();
        double expected = -1;
        double actual = studentRepo.calculateAverageStudent(new Student("124"));
        assertEquals(expected,actual,0);
    }
}
