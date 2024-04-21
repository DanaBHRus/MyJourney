package isp.lab4.exercise4;

public class Organiser extends Person {
    public Organiser(String name, int age) {
        super(name, age);
    }

    @Override
    public String toString() {
        return "User: " + super.toString();
    }
}
