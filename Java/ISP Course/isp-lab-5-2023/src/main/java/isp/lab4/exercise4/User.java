package isp.lab4.exercise4;

public class User extends Person {
    private int ticket;

    public User(String name, int age, int ticket) {
        super(name, age);
        this.ticket = ticket;
    }

    public User() {
        super();
    }

    public void setTicket(int ticket) {
        this.ticket = ticket;
    }

    public int getTicket() {
        return ticket;
    }

    @Override
    public String toString() {
        return "User: " + super.toString() + " with ticket number: " + this.ticket;
    }
}
