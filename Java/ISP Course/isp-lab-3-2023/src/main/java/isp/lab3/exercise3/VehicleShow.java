package isp.lab3.exercise3;

public class VehicleShow
{
    public static void main(String[] args)
    {
        Vehicle vehicle1 = new Vehicle("Dacia", "Logan",150, 'B');
        Vehicle vehicle2 = new Vehicle("VW", "Passat",200,'D');
        System.out.println(vehicle1.toString());
        System.out.println(vehicle2.toString());
        System.out.println("Vehicle2");
        System.out.println("Model: " + vehicle2.getModel());
        System.out.println("Type: " + vehicle2.getType());
        System.out.println("Speed: " + vehicle2.getSpeed());
        System.out.println("FuelType: " + vehicle2.getFuelType());
        if(vehicle1.equals(vehicle2))
            System.out.println("They are equals.");
        else System.out.println("They are not equals.");
        vehicle2.setModel("Dacia");
        vehicle2.setType("Logan");
        vehicle2.setSpeed(150);
        vehicle2.setFuelType('B');
        System.out.println("I made some changes at vehicle2.");
        if(vehicle1.equals(vehicle2))
            System.out.println("They are equals.");
        else System.out.println("They are not equals.");
        Vehicle.showNumberOfVehicles();
    }
}
