package exercise2;

import isp.lab4.exercise2.Laptop;
import isp.lab4.exercise2.SmartPhone;
import isp.lab4.exercise2.SmartWatch;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.Assert.assertArrayEquals;

public class ChargeablesTest {
    @Test
    public void LaptopTest() {
        Laptop laptop = new Laptop();
        laptop.setBatteryLevel(20);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        laptop.charge(20);
        System.out.flush();
        System.setOut(old);
        String expected = "30% charged\r\nLaptop: batteryLevel = 30";
        String actual = byteArrayOutputStream.toString() + laptop.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void SmartPhoneTest() {
        SmartPhone smartPhone = new SmartPhone();
        smartPhone.setBatteryLevel(40);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        smartPhone.charge(30);
        System.out.flush();
        System.setOut(old);
        String expected = "70% charged\r\nSmartPhone: batteryLevel = 70";
        String actual = byteArrayOutputStream.toString() + smartPhone.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void SmartWatchTest(){
        SmartWatch smartWatch = new SmartWatch();
        smartWatch.setBatteryLevel(60);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        smartWatch.charge(50);
        System.out.flush();
        System.setOut(old);
        String expected = "100% charged\r\nSmartWatch: batteryLevel = 100";
        String actual = byteArrayOutputStream.toString() + smartWatch.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }
}
