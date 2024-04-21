package isp.lab6.exercise2;

import java.util.Objects;

public class Vehicle {
    private String VIN;
    private String licensePlate;
    private String make;
    private String model;
    private int year;

    public String getVIN() {
        return VIN;
    }

    public Vehicle(String VIN){
        this.VIN = VIN;
    }

    public Vehicle(String VIN, String licensePlate, String make, String model, int year){
        this.VIN = VIN;
        this.licensePlate = licensePlate;
        this.make = make;
        this.model = model;
        this.year = year;
    }

    @Override
    public String toString() {
        return "Vehicle{" +
                "VIN='" + VIN + '\'' +
                ", licensePlate='" + licensePlate + '\'' +
                ", make='" + make + '\'' +
                ", model='" + model + '\'' +
                ", year=" + year +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Vehicle vehicle = (Vehicle) o;
        return VIN.equals(vehicle.VIN);
    }

    @Override
    public int hashCode() {
        return Objects.hash(VIN);
    }

}
