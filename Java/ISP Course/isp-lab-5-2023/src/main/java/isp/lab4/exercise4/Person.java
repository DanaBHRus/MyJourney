package isp.lab4.exercise4;

public abstract class Person {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public Person() {
    }

    @Override
    public String toString() {
        return "name = " + this.name + ", age = " + this.age;
    }
}
