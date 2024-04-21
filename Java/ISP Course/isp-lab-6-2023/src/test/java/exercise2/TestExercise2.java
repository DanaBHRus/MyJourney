package exercise2;

import isp.lab6.exercise2.Vehicle;
import isp.lab6.exercise2.VehicleRegistry;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;

public class TestExercise2 {
    public VehicleRegistry makeVehicleRegistry() {
        VehicleRegistry vehicleRegistry = new VehicleRegistry();
        vehicleRegistry.addVehicle(new Vehicle("123", "ABC", "VW", "Passat", 2003));
        vehicleRegistry.addVehicle(new Vehicle("123", "ABC", "VW", "Nuestra", 2017));
        vehicleRegistry.addVehicle(new Vehicle("124", "BCD", "Audi", "A6", 2016));
        return vehicleRegistry;
    }

    @Test
    public void addVehicleTest() {
        VehicleRegistry vehicleRegistry = makeVehicleRegistry();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        vehicleRegistry.listAllVehicles();
        System.out.flush();
        System.setOut(old);
        String expected = "[Vehicle{VIN='123', licensePlate='ABC', make='VW', model='Passat', year=2003}, Vehicle{VIN='124', licensePlate='BCD', make='Audi', model='A6', year=2016}]\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void removeVehicleTest() {
        VehicleRegistry vehicleRegistry = makeVehicleRegistry();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        PrintStream old = System.out;
        System.setOut(printStream);
        vehicleRegistry.removeVehicle("123");
        vehicleRegistry.listAllVehicles();
        System.out.flush();
        System.setOut(old);
        String expected = "[Vehicle{VIN='124', licensePlate='BCD', make='Audi', model='A6', year=2016}]\r\n";
        String actual = byteArrayOutputStream.toString();
        assertArrayEquals(expected.getBytes(), actual.getBytes());
    }

    @Test
    public void ifExistsVehicleTest() {
        VehicleRegistry vehicleRegistry = makeVehicleRegistry();
        boolean expected = true;
        boolean actual = vehicleRegistry.ifExistsVehicle("123");
        assertEquals(expected, actual);
        expected = false;
        actual = vehicleRegistry.ifExistsVehicle("126");
        assertEquals(expected, actual);
    }

}
