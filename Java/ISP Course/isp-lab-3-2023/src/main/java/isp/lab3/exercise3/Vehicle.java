package isp.lab3.exercise3;

import org.jetbrains.annotations.NotNull;

public class Vehicle
{
    public static int numberOfVehicles=0;
    private String model;
    private String type;
    private int speed;
    private char fuelType;

    Vehicle(String model, String type, int speed, char fuelType)
    {
        this.model=model;
        this.type=type;
        this.speed=speed;
        this.fuelType=fuelType;
        numberOfVehicles++;
    }

    public static void showNumberOfVehicles()
    {
        System.out.println("Number of vehicles is: " + numberOfVehicles);
    }

    public String getModel() { return model; }
    public String getType() { return type; }
    public int getSpeed() { return speed; }
    public char getFuelType() { return fuelType; }

    public void setModel(String model) { this.model=model; }
    public void setType(String type) { this.type=type; }
    public void setSpeed(int speed) { this.speed=speed; }
    public void setFuelType(char fuelType) {this.fuelType = fuelType; }

    @Override
    public String toString()
    {
        return this.model + "(" + this.type + ") speed " + this.speed + " fuel type " + this.fuelType;
    }

    public boolean equals(@NotNull Vehicle vehicle)
    {
        if(this.model == vehicle.model)
            if(this.speed == vehicle.speed)
                if(this.type == vehicle.type)
                    if(this.fuelType == vehicle.fuelType)
                        return true;
        return false;
    }
}
