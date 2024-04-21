package aut.isp.lab4.exercise5;

public class Exercise5 {
    public static void main(String[] args) {
        FishFeeder fishFeeder = new FishFeeder("MNC","Mini",10);
        AquariumController aquariumController = new AquariumController(fishFeeder, "MNC", "Medio",10.35F, 10.45F, 16);
        System.out.println(aquariumController.toString());
        aquariumController.checkTemperature();
        aquariumController.checkWaterLevel();
        aquariumController.checkTemperature();
        System.out.println(aquariumController.toString());
        TemperatureSensor temperatureSensor = new TemperatureSensor("AMN","Mini",26);
        System.out.println(temperatureSensor.toString());
        temperatureSensor.setValue(28);
        System.out.println(temperatureSensor.getValue());
        LevelSensor levelSensor = new LevelSensor("AMN","Mini",60F);
        System.out.println(levelSensor.toString());
        levelSensor.setValue(100F);
        System.out.println(levelSensor.getValue());
    }
}
