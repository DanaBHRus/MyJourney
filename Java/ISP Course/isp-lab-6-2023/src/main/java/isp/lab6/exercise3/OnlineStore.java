package isp.lab6.exercise3;

import java.util.*;

public class OnlineStore {
    private List<Product> products = new ArrayList<>();
    private Map<String, ActiveSession> sessions = new HashMap<>();

    private ActiveSession activeSession = new ActiveSession();

    public OnlineStore(List<Product> products, Map<String, ActiveSession> sessions) {
        this.products = products;
        this.sessions = sessions;
    }

    public OnlineStore() {
    }

    public void makeProductStoreBD() {
        this.products.add(new Product("Lapte", 4.5));
        this.products.add(new Product("Oua", 0.95));
        this.products.add(new Product("Paine", 4.6));
        this.products.add(new Product("Paine", 7.0));
        this.products.add(new Product("Branza", 4.5));
        this.products.add(new Product("Branza", 12.5));
    }

    public List<Product> getProducts() {
        return products;
    }

    public List<Product> getProductsSorted(int sortCriteria) {
        switch (sortCriteria) {
            case 0:
                products.sort(Comparator.comparing(Product::getName));
                break;
            case 1:
                products.sort(Comparator.comparing(Product::getPrice));
                break;
            case 2:
                products.sort((p1, p2) -> {
                    int cmp = p1.getName().compareTo(p2.getName());
                    if (cmp == 0) cmp = (int) (p1.getPrice() - p2.getPrice());
                    return cmp;
                });
                break;
        }
        return products;
    }

    void addSession(String username) {
        ActiveSession activeSession = new ActiveSession(username);
        this.sessions.put(username, activeSession);
        System.out.println("Welcome to our site.");
    }

    void removeSession(String username) {
        this.sessions.remove(username);
        System.out.println("Have a nice day.");
    }

    public void addToCart(String username, Product product, Integer quantity) {
        activeSession.addToCart(product, quantity);
        this.sessions.put(username, activeSession);
    }

    public void checkOut(String username) {
        System.out.println(this.sessions);
    }
}
