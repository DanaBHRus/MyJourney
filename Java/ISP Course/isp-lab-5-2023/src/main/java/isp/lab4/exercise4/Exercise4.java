package isp.lab4.exercise4;

public class Exercise4 {
    public static void main(String[] args) {
        User user1 = new User("Popescu", 20, 0);
        User user2 = new User("Georgescu", 21, 0);
        UserApp userApp = new UserApp();
        OrganiserApp organiserApp = new OrganiserApp();
        TicketsManager ticketsManager = new TicketsManager();
        PaymentGateway paymentGateway = new PaymentGateway();
        ticketsManager.generateTicket(userApp,organiserApp,user1);
        System.out.println(user1.toString());
        userApp.viewTicket(user1);
        paymentGateway.done(ticketsManager,organiserApp,userApp,user1);
        System.out.println(user2.toString());
        paymentGateway.done(ticketsManager,organiserApp,userApp,user2);
    }
}
