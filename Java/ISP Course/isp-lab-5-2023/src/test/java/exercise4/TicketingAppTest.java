package exercise4;

import isp.lab4.exercise4.*;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.Assert.assertArrayEquals;

public class TicketingAppTest {
    @Test
    public void ticketingAppTest1(){
        User user = new User("Popescu", 20, 0);
        UserApp userApp = new UserApp();
        OrganiserApp organiserApp = new OrganiserApp();
        TicketsManager ticketsManager = new TicketsManager();
        PaymentGateway paymentGateway = new PaymentGateway();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        ticketsManager.generateTicket(userApp,organiserApp,user);
        paymentGateway.done(ticketsManager,organiserApp,userApp,user);
        System.out.flush();
        System.setOut(old);
        String expected = "Ticket buyed.\r\nTicket validate.\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void ticketingAppTest2(){
        User user = new User("Popescu", 20, 0);
        UserApp userApp = new UserApp();
        OrganiserApp organiserApp = new OrganiserApp();
        TicketsManager ticketsManager = new TicketsManager();
        PaymentGateway paymentGateway = new PaymentGateway();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        paymentGateway.done(ticketsManager,organiserApp,userApp,user);
        System.out.flush();
        System.setOut(old);
        String expected = "Something went wrong.\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }
}
