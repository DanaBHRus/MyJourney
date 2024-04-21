package aut.isp.lab4.exercise1;

public class Exercise1 {

    public static void main(String[] args) {
        AquariumController aquariumController = new AquariumController("DBS", "Grande", 10.15F);
        System.out.println(aquariumController.toString());
        aquariumController.setCurrentTime(12.15F);
        System.out.println(aquariumController.toString());
    }
}
