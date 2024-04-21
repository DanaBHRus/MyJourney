package aut.isp.lab4.exercise2;

public class Exercise2 {
    public static void main(String[] args) {
        FishFeeder fishFeeder = new FishFeeder("DBS", "Medio", 12);
        System.out.println(fishFeeder.toString());
        fishFeeder.showFeed();
        fishFeeder.showFeed();
        System.out.println(fishFeeder.toString());
        fishFeeder.showFillUp();
        System.out.println("Number of meals: " + fishFeeder.getMeals());
    }
}
