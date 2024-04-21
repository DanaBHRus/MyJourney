package isp.lab7.safehome;

import java.util.Scanner;

public class SafeHome {
    public static void landlordOptions(DoorLockController ctrl) throws Exception {
        Scanner console = new Scanner(System.in);
        String name, pin;
        int option;
        do {
            System.out.println("0. Exit");
            System.out.println("1. Unlock Door");
            System.out.println("2. Add tenant");
            System.out.println("3. Remove tenant");
            System.out.println("4. Access Log");
            if (console.hasNextInt())
                option = console.nextInt();
            else
                option = -1;
            console.nextLine();
            switch (option) {
                case 1:
                    ctrl.enterPin(ControllerInterface.MASTER_KEY);
                    System.out.println(ctrl.door.getStatus());
                    break;
                case 2:
                    System.out.println("Name: ");
                    name = console.nextLine();
                    System.out.println("PIN: ");
                    pin = console.nextLine();
                    try {
                        ctrl.addTenant(pin, name);
                    } catch (Exception exception) {
                        System.out.println(exception.getMessage());
                    }
                    break;
                case 3:
                    System.out.println("Name: ");
                    try {
                        ctrl.removeTenant(console.nextLine());
                    } catch (Exception exception) {
                        System.out.println(exception.getMessage());
                    }
                    break;
                case 4:
                    ctrl.getAccessLog();
                    break;
                default:
                    if (option != 0)
                        System.out.println("Not an option");
                    break;
            }
        } while (option != 0);
    }

    public static void main(String[] args) throws Exception {
        DoorLockController ctrl = new DoorLockController();
        Scanner console = new Scanner(System.in);
        int option;

        System.out.println(ctrl.door.getStatus());
        do {
            System.out.println("0. Exit");
            System.out.println("1. Tenant");
            System.out.println("2. Landlord");
            if (console.hasNextInt())
                option = console.nextInt();
            else
                option = -1;
            console.nextLine();
            switch (option) {
                case 1:
                    System.out.println("Enter PIN: ");
                    try {
                        ctrl.enterPin(console.nextLine());
                    } catch (Exception exception) {
                        System.out.println(exception.getMessage());
                    }
                    System.out.println(ctrl.door.getStatus());
                    break;
                case 2:
                    landlordOptions(ctrl);
                    break;
                default:
                    if (option != 0)
                        System.out.println("Not an option");
                    break;
            }
        } while (option != 0);
    }
}
