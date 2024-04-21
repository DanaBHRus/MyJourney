package isp.lab10.exercise1;

import java.util.Scanner;

public class Exercise1 {

    public static void main(String[] args) {
        ATC atc = new ATC();
        Scanner scanner = new Scanner(System.in);
        boolean out = true;
        while (out) {
            System.out.println("Enter command (ADD, TAKEOFF, LAND, SHOW, EXIT):");
            String command = scanner.nextLine();
            if (command.equalsIgnoreCase("ADD")) {
                System.out.print("Enter aircraft ID: ");
                String aircraftId = scanner.nextLine();
                atc.addAircraft(aircraftId);
                System.out.println("Aircraft " + aircraftId + " added.");
                System.out.println("Aircraft " + aircraftId + " is on stand.");
            } else if (command.equalsIgnoreCase("TAKEOFF")) {
                System.out.print("Enter aircraft ID: ");
                String aircraftId = scanner.nextLine();
                System.out.print("Enter altitude: ");
                int altitude = scanner.nextInt();
                scanner.nextLine();
                atc.sendCommand(aircraftId, new TakeoffCommand(altitude));
            } else if (command.equalsIgnoreCase("LAND")) {
                System.out.print("Enter aircraft ID: ");
                String aircraftId = scanner.nextLine();
                atc.sendCommand(aircraftId, new LandCommand());
            } else if (command.equalsIgnoreCase("SHOW")) {
                atc.showAircrafts();
            } else if (command.equalsIgnoreCase("EXIT")) {
                System.out.println("Exiting the ATC system...");
                out = false;
            } else {
                System.out.println("Invalid command. Try again.");
            }
        }
        scanner.close();
    }
}
