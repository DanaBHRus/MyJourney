package isp.lab6.exercise3;

import java.util.Scanner;

public class UserInterface {
    private LoginSystem loginSystem = new LoginSystem();
    private OnlineStore store = new OnlineStore();

    private void firstOptions(int[] choose) {
        System.out.println("First options: 1. Register, 2. Login, 3. Logout");
        Scanner scanner = new Scanner(System.in);
        while (!scanner.hasNextInt()) {
            System.out.println("Enter a number.");
            scanner.nextLine();
        }
        choose[0] = scanner.nextInt();
    }

    private void ifLogin(int[] choose) {
        System.out.println("At login: 1. See products, 2. See products in order, \n 3. Add a product, 4. See your cart, 5. Back to the first menu");
        Scanner scanner = new Scanner(System.in);
        while (!scanner.hasNextInt()) {
            System.out.println("Enter a number.");
            scanner.nextLine();
        }
        choose[1] = scanner.nextInt();
    }

    private void ifSorted(int[] choose) {
        System.out.println("Sorting by: 1. Name, 2. Price, 3. Name&Price");
        Scanner scanner = new Scanner(System.in);
        while (!scanner.hasNextInt()) {
            System.out.println("Enter a number.");
            scanner.nextLine();
        }
        int x = scanner.nextInt();
        while (x < 1 || x > 3) {
            System.out.println("Enter a valid number.");
            while (!scanner.hasNextInt()) {
                System.out.println("Enter a number.");
                scanner.nextLine();
            }
            x = scanner.nextInt();
        }
        choose[2] = x - 1;
    }

    private void menuIfSorted(int[] choose) {
        ifSorted(choose);
        System.out.println(store.getProductsSorted(choose[2]));
    }

    private double checkPrice() {
        Scanner scanner = new Scanner(System.in);
        while (!scanner.hasNextDouble()) {
            System.out.println("Enter a number.");
            scanner.nextLine();
        }
        return scanner.nextDouble();
    }

    private int checkQuantity() {
        Scanner scanner = new Scanner(System.in);
        while (!scanner.hasNextInt()) {
            System.out.println("Enter a number.");
            scanner.nextLine();
        }
        return scanner.nextInt();
    }

    private void menuIfLogin(int[] choose, String username) {
        int stopLooping;
        Scanner scanner = new Scanner(System.in);
        store.makeProductStoreBD();
        do {
            ifLogin(choose);
            stopLooping = 1;
            switch (choose[1]) {
                case 1:
                    System.out.println(store.getProducts());
                    break;
                case 2:
                    menuIfSorted(choose);
                    break;
                case 3:
                    System.out.println("Enter name: ");
                    String name = scanner.next();
                    System.out.println("Enter price: ");
                    double price = checkPrice();
                    System.out.println("Enter quantity: ");
                    int quantity = checkQuantity();
                    store.addToCart(username, new Product(name, price), quantity);
                    System.out.println("Product added.");
                    break;
                case 4:
                    store.checkOut(username);
                    break;
                case 5:
                    firstOptions(choose);
                    menufirstOptions(choose);
                    stopLooping = 0;
                    break;
                default:
                    System.out.println("Enter a valid number.");
                    ifLogin(choose);
                    menuIfLogin(choose, username);
                    break;
            }
        } while (stopLooping == 1);
    }

    private void menufirstOptions(int[] choose) {
        Scanner scanner = new Scanner(System.in);
        String username, password;
        switch (choose[0]) {
            case 1:
                System.out.println("Enter username: ");
                username = scanner.next();
                System.out.println("Enter password: ");
                password = scanner.next();
                loginSystem.register(username, password);
                loginSystem.login(username, password);
                menuIfLogin(choose, username);
                break;
            case 2:
                System.out.println("Enter username: ");
                username = scanner.next();
                System.out.println("Enter password: ");
                password = scanner.next();
                loginSystem.login(username, password);
                menuIfLogin(choose, username);
                break;
            case 3:
                System.out.println("Enter username: ");
                username = scanner.next();
                loginSystem.logout(username);
                break;
            default:
                System.out.println("Enter a valid number.");
                firstOptions(choose);
                menufirstOptions(choose);
                break;
        }
    }

    public void loadInterface() {
        int[] choose = {-1, -1, -1};
        firstOptions(choose);
        menufirstOptions(choose);
    }
}
