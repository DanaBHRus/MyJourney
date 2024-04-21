package isp.lab4.exercise2;

public class Exercise2 {

    public static void main(String args[]) {
        Laptop laptop = new Laptop();
        laptop.setBatteryLevel(20);
        laptop.charge(20);
        System.out.println(laptop.toString());
        SmartPhone smartPhone = new SmartPhone();
        smartPhone.setBatteryLevel(40);
        smartPhone.charge(30);
        System.out.println(smartPhone.toString());
        SmartWatch smartWatch = new SmartWatch();
        smartWatch.setBatteryLevel(60);
        smartWatch.charge(50);
        System.out.println(smartWatch.toString());
    }
}
