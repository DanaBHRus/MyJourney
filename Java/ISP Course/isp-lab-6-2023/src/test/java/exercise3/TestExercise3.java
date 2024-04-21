package exercise3;

import isp.lab6.exercise3.LoginSystem;
import isp.lab6.exercise3.OnlineStore;
import isp.lab6.exercise3.Product;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.Assert.assertArrayEquals;

public class TestExercise3 {
    @Test
    public void registerTest() {
        LoginSystem loginSystem = new LoginSystem();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        loginSystem.register("123", "ABC");
        loginSystem.register("123", "ABC");
        System.out.flush();
        System.setOut(old);
        String expected = "Registered with success.\r\nChange username or password\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void loginTest() {
        LoginSystem loginSystem = new LoginSystem();
        loginSystem.register("123", "ABC");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        loginSystem.login("123", "ABC");
        System.out.flush();
        System.setOut(old);
        String expected = "Welcome to our site.\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void logoutTest() {
        LoginSystem loginSystem = new LoginSystem();
        loginSystem.register("123", "ABC");
        loginSystem.login("123", "ABC");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        loginSystem.logout("123");
        System.out.flush();
        System.setOut(old);
        String expected = "Have a nice day.\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void getProductsTest() {
        OnlineStore onlinestore = new OnlineStore();
        onlinestore.makeProductStoreBD();
        String expected = "[Product{name='Lapte', price=4.5}, Product{name='Oua', price=0.95}, Product{name='Paine', price=4.6}, Product{name='Paine', price=7.0}, Product{name='Branza', price=4.5}, Product{name='Branza', price=12.5}]";
        String actual = onlinestore.getProducts().toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void getProductsSorted() {
        OnlineStore onlinestore = new OnlineStore();
        onlinestore.makeProductStoreBD();
        String expected = "[Product{name='Branza', price=4.5}, Product{name='Branza', price=12.5}, Product{name='Lapte', price=4.5}, Product{name='Oua', price=0.95}, Product{name='Paine', price=4.6}, Product{name='Paine', price=7.0}]";
        String actual = onlinestore.getProductsSorted(2).toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void addToCartStoreTest() {
        OnlineStore onlinestore = new OnlineStore();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        onlinestore.addToCart("123", new Product("Paine", 7.0), 2);
        System.out.flush();
        System.setOut(old);
        String expected = "";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void checkOutTest() {
        OnlineStore onlinestore = new OnlineStore();
        onlinestore.addToCart("123", new Product("Paine", 7.0), 2);
        onlinestore.addToCart("123",new Product("Branza",12.5),1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        onlinestore.checkOut("123");
        System.out.flush();
        System.setOut(old);
        String expected = "{123=ActiveSession{shoppingCart={Product{name='Paine', price=7.0}=2, Product{name='Branza', price=12.5}=1}}}\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }
}
