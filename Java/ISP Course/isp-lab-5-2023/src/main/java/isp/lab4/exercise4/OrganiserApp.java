package isp.lab4.exercise4;

import java.util.ArrayList;
import java.util.List;

public class OrganiserApp {
    private List<Integer> tickets = new ArrayList<>();

    public OrganiserApp(){}

    public void addTicket(int ticket) {
        tickets.add(ticket);
    }

    public boolean checkIn(int ticketToVerify) {
        for (Integer ticket : tickets)
            if (((Integer) ticketToVerify).equals(ticket))
                return true;
        return false;
    }
}
