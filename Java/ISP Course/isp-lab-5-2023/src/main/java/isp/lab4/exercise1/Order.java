package isp.lab4.exercise1;

import java.time.LocalDateTime;

public class Order {
    private String orderId;
    private LocalDateTime date;
    private double totalPrice;
    private Product[] products = new Product[10];
    private int length;

    public Order(String orderId, LocalDateTime date, double totalPrice) {
        this.orderId = orderId;
        this.date = date;
        this.totalPrice = totalPrice;
        this.length = 0;
    }

    public void addAProduct(String productId, String name, double price, ProductCategory productCategory) {
        products[length] = new Product(productId, name, price, productCategory);
        this.length++;
    }

    @Override
    public String toString() {
        String answer = "Order: orderId = " + this.orderId + ", date = " + this.date + ", totalPrice = " + this.totalPrice + "\n";
        int i;
        for (i = 0; i < length; i++) {
            Product product = products[i];
            answer = answer + product.toString() + "\n";
        }
        return answer;
    }
}
