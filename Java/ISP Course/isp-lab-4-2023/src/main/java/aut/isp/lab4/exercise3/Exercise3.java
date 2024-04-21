package aut.isp.lab4.exercise3;

public class Exercise3 {
    public static void main(String[] args) {
        FishFeeder fishFeeder = new FishFeeder("BDS", "Medio", 12);
        AquariumController aquariumController = new AquariumController(fishFeeder, "ADF", "Medio", 10.15F, 10.30F);
        System.out.println(aquariumController.toString());
        fishFeeder.showFeed();
        fishFeeder.showFeed();
        System.out.println(aquariumController.toString());
        aquariumController.setCurrentTime(10.30F);
        aquariumController.setFeedingTime(10.45F);
        System.out.println(aquariumController.toString());
    }
}
