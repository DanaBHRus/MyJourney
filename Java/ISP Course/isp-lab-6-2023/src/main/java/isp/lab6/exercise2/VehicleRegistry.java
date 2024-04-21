package isp.lab6.exercise2;

import java.util.HashSet;
import java.util.Set;

public class VehicleRegistry {
    private Set<Vehicle> vehicles = new HashSet<>();

    public void addVehicle(Vehicle vehicle) {
        vehicles.add(vehicle);
    }

    public void removeVehicle(String VIN) {
        Vehicle vehicle = new Vehicle(VIN);
        vehicles.remove(vehicle);
    }

    public boolean ifExistsVehicle(String VIN) {
        for (Vehicle vehicle : vehicles)
            if (vehicle.getVIN().equals(VIN))
                return true;
        return false;
    }

    public void listAllVehicles() {
        System.out.println(vehicles);
    }
}
