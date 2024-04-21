package isp.lab4.exercise4;

public class PaymentGateway {

    public PaymentGateway() {
    }

    public void done(TicketsManager ticketsManager, OrganiserApp organiserApp, UserApp userApp, User user) {
        if (userApp.buyTicket(user) == true) {
            System.out.println("Ticket buyed.");
            if (ticketsManager.validateTicket(organiserApp, user) == true)
                System.out.println("Ticket validate.");
            else System.out.println("Ticket doesn't exist.");
        } else System.out.println("Something went wrong.");
    }
}
