package isp.lab6.exercise3;

import java.util.HashMap;
import java.util.Map;

public class ActiveSession {
    private String username;
    private Map<Product, Integer> shoppingCart = new HashMap<>();

    public ActiveSession(String username) {
        this.username = username;
    }

    public ActiveSession(String username, Map<Product, Integer> shoppingCart) {
        this.username = username;
        this.shoppingCart = shoppingCart;
    }

    public ActiveSession() {
    }

    public void addToCart(Product product, Integer quantity) {
        this.shoppingCart.put(product, quantity);
    }

    @Override
    public String toString() {
        return "ActiveSession{" +
                "shoppingCart=" + shoppingCart +
                '}';
    }
}
