package isp.lab4.exercise4;

public class UserApp {

    public UserApp(){}
    public boolean buyTicket(User user) {
        if (user.getTicket() != 0)
            return true;
        else return false;
    }

    public void viewTicket(User user) {
        System.out.println(user.getTicket());
    }
}
