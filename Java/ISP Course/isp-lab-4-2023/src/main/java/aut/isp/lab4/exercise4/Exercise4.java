package aut.isp.lab4.exercise4;

public class Exercise4 {
    public static void main(String[] args) {
        FishFeeder fishFeeder = new FishFeeder("BDS", "Medio", 12);
        LightsControl lightsControl = new LightsControl(6.5F);
        AquariumController aquariumController = new AquariumController(fishFeeder, "ADF", "Medio", 10.15F, 10.30F,lightsControl);
        System.out.println(aquariumController.toString());
        fishFeeder.showFeed();
        fishFeeder.showFeed();
        System.out.println(aquariumController.toString());
        aquariumController.setCurrentTime(10.30F);
        aquariumController.setFeedingTime(10.45F);
        System.out.println(aquariumController.toString());
        lightsControl.setHoursOfLight(10F);
        System.out.println(lightsControl.toString());
        lightsControl.checkHoursOfLight();
        System.out.println(lightsControl.toString());
    }
}
