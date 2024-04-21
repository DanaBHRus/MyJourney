package isp.lab4.exercise4;

import java.util.Random;

public class TicketsManager {

    public TicketsManager(){}
    public void generateTicket(UserApp userApp, OrganiserApp organiserApp, User user) {
        Random random = new Random();
        int generated = random.nextInt(1000);
        user.setTicket(generated);
        userApp.buyTicket(user);
        organiserApp.addTicket(generated);
    }

    public boolean validateTicket(OrganiserApp organiserApp, User user){
        if(organiserApp.checkIn(user.getTicket())==true)
            return true;
        else return false;
    }
}
