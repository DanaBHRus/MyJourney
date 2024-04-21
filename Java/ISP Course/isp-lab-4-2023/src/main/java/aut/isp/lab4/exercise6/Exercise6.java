package aut.isp.lab4.exercise6;

public class Exercise6 {
    public static void main(String[] args) {
        FishFeeder fishFeeder = new FishFeeder("RMN", "Mini", 10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "RMN", "Medio", 10.12F, 10.25F, 20, 50F, 6.2F);
        System.out.println(aquariumController.toString());
        aquariumController.checkTemperature();
        System.out.println(aquariumController.getPresentTemperature());
        aquariumController.checkTemperature();
        aquariumController.checkWaterLevel();
        System.out.println(aquariumController.getPresentLevel());
        aquariumController.checkPH();
        aquariumController.setPresentPH(6.5F);
        aquariumController.checkPH();
        System.out.println(aquariumController.getPresentPH());
        System.out.println(aquariumController.toString());
    }
}
