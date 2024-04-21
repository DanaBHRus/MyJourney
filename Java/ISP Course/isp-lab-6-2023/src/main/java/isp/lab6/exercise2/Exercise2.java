package isp.lab6.exercise2;

public class Exercise2 {
    public static void main(String[] args) {
        VehicleRegistry vehicleRegistry = new VehicleRegistry();
        vehicleRegistry.addVehicle(new Vehicle("123", "ABC", "VW", "Passat", 2003));
        vehicleRegistry.addVehicle(new Vehicle("123", "ABC", "VW", "Nuestra", 2017));
        vehicleRegistry.addVehicle(new Vehicle("124", "BCD", "Audi", "A6", 2016));
        vehicleRegistry.listAllVehicles();
        vehicleRegistry.removeVehicle("123");
        vehicleRegistry.removeVehicle("125");
        vehicleRegistry.listAllVehicles();
        System.out.println(vehicleRegistry.ifExistsVehicle("123"));
        System.out.println(vehicleRegistry.ifExistsVehicle("124"));
    }
}
