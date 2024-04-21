package isp.lab8.airways;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import static isp.lab8.airways.RouteDistanceCalculator.totalDistance;
import static java.lang.Math.abs;


public class Exercise {

    private static boolean addFirstLastWaypoint(String routeName, String workingFolder, String position) throws NoFileFound, IOException {

        Scanner console = new Scanner(System.in);
        List<Waypoint> waypoints = new ArrayList<>();
        Route route = new Route();
        int altitude;
        double latitude, longitude;
        String name;

        System.out.println("Add " + position + " waypoint:");
        System.out.println("Name: ");
        name = console.nextLine();
        System.out.println("Latitude: ");
        latitude = console.nextDouble();
        System.out.println("Longitude: ");
        longitude = console.nextDouble();
        System.out.println("Altitude: ");
        altitude = console.nextInt();

        if (abs(latitude) <= 90 && abs(longitude) <= 180) {
            if (position.equals("first")) {
                waypoints.add(0, new Waypoint(1, name, latitude, longitude, altitude));
                route = new Route(routeName, waypoints);
            } else if (position.equals("last")) {
                route = JsonFile.read(routeName, workingFolder);
                route.getWaypointList().add(1, new Waypoint(2, name, latitude, longitude, altitude));
            }
            try {
                JsonFile.write(route, workingFolder, "o");
            } catch (Exception exception) {
                System.out.println(exception.getMessage());
            }
            System.out.println("New waypoint added");
            return false;
        } else {
            System.out.println("Invalid coordinates");
            return true;
        }

    }

    private static void openRoute(String routeName, String workingFolder) {
        Scanner console = new Scanner(System.in);
        try {
            Route route = JsonFile.read(routeName, workingFolder);
            int index, altitude;
            double latitude, longitude;
            String name;
            int option;
            do {
                System.out.println("0. Exit");
                System.out.println("1. Display waypoints");
                System.out.println("2. Add waypoint");
                System.out.println("3. Remove waypoint");
                System.out.println("4. Total distance");
                option = console.nextInt();
                console.nextLine();
                switch (option) {
                    case 0:
                        break;
                    case 1:
                        for (Waypoint waypoint : route.getWaypointList()) {
                            System.out.println(waypoint.toString());
                        }
                        break;
                    case 2:
                        System.out.println("Name: ");
                        name = console.nextLine();
                        System.out.println("Latitude: ");
                        latitude = console.nextDouble();
                        System.out.println("Longitude: ");
                        longitude = console.nextDouble();
                        System.out.println("Altitude: ");
                        altitude = console.nextInt();
                        System.out.println("Index: ");
                        index = console.nextInt();

                        if (abs(latitude) <= 90 && abs(longitude) <= 180) {
                            for (int i = index - 1; i < route.getWaypointList().size(); i++)
                                route.getWaypointList().get(i).setIndex(i + 2);
                            route.getWaypointList().add(index - 1, new Waypoint(index, name, latitude, longitude, altitude));
                            JsonFile.write(route, workingFolder, "o");
                            System.out.println("New waypoint added");
                        } else System.out.println("Invalid coordinates");
                        break;
                    case 3:
                        System.out.println("Index: ");
                        index = console.nextInt();
                        for (int i = index; i < route.getWaypointList().size(); i++)
                            route.getWaypointList().get(i).setIndex(i);
                        route.getWaypointList().remove(index - 1);
                        JsonFile.write(route, workingFolder, "o");
                        System.out.println("Waypoint removed");
                        break;
                    case 4:
                        System.out.println("Total distance:" + String.format("%.2f", totalDistance(route)) + " km");
                        break;
                    default:
                        System.out.println("Not an option");
                        break;
                }
            } while (option != 0);
        } catch (Exception exception) {
            System.out.println(exception.getMessage());
        }
    }

    public static void main(String[] args) throws NoFileFound, IOException, RouteAlreadyExists, CantDeleteFile {
        String workingFolder = "C:\\Users\\rus_d\\30121_rus_dana-bendis-hera_isp_labs\\isp-lab-8-2023\\data";
        File folder = new File(workingFolder);
        File[] listOfFiles;
        Scanner console = new Scanner(System.in);
        String routeName;
        int option;

        do {
            listOfFiles = folder.listFiles();
            System.out.println("1. Display routes");
            System.out.println("2. Add route");
            System.out.println("3. Remove route");
            System.out.println("4. Open route");
            if (console.hasNextInt())
                option = console.nextInt();
            else
                option = -1;
            console.nextLine();
            switch (option) {
                case 0:
                    break;
                case 1:
                    if (listOfFiles != null) {
                        System.out.println("Routes: ");
                        for (File file : listOfFiles)
                            System.out.println(file.getName());
                        System.out.println();
                    } else System.out.println("No route found");
                    break;
                case 2:
                    System.out.println("Route name:");
                    routeName = console.nextLine();
                    if (addFirstLastWaypoint(routeName, workingFolder, "first") ||
                            addFirstLastWaypoint(routeName, workingFolder, "last")) {
                        listOfFiles = folder.listFiles();
                        assert listOfFiles != null;
                        for (File file : listOfFiles)
                            if (file.getName().equals(routeName)) {
                                String[] entries = file.list();
                                assert entries != null;
                                for (String s : entries) {
                                    File currentFile = new File(file.getPath(), s);
                                    if (!currentFile.delete())
                                        throw new CantDeleteFile("Error deleting" + currentFile);

                                }
                                if (file.delete())
                                    System.out.println("Route deleted");
                            }
                    }
                    break;
                case 3:
                    if (listOfFiles != null) {
                        System.out.println("Route name: ");
                        routeName = console.nextLine();
                        for (File file : listOfFiles)
                            if (file.getName().equals(routeName)) {
                                String[] entries = file.list();
                                assert entries != null;
                                for (String s : entries) {
                                    File currentFile = new File(file.getPath(), s);
                                    if (!currentFile.delete())
                                        throw new CantDeleteFile("Error deleting" + currentFile);
                                }
                                if (file.delete())
                                    System.out.println("Route deleted");
                            }
                    } else System.out.println("No route found");
                    break;
                case 4:
                    System.out.println("Route name: ");
                    try {
                        openRoute(console.nextLine(), workingFolder);
                    } catch (Exception exception) {
                        System.out.println(exception.getMessage());
                    }
                    break;
                default:
                    System.out.println("Not an option");
                    break;
            }
        } while (option != 0);
    }
}
