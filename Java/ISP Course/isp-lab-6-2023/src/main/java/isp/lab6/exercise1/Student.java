package isp.lab6.exercise1;

import java.util.*;

public class Student {
    private String ID;
    private String firstName;
    private String lastName;
    private Map<String, Integer> grades = new HashMap<>();

    public Student(String ID) {
        this.ID = ID;
    }

    public Student(String ID, String firstName, String lastName) {
        this.ID = ID;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public void addGrade(String subject, Integer grade) {
        this.grades.put(subject, grade);
    }

    public Collection<Integer> getGrades() {
        return grades.values();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Student student = (Student) o;
        return ID.equals(student.ID);
    }

    @Override
    public String toString() {
        return "Student{" +
                "ID='" + ID + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", grades=" + grades +
                '}';
    }

    @Override
    public int hashCode() {
        return Objects.hash(ID);
    }
}
