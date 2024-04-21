package isp.lab4.exercise1;

import java.time.LocalDateTime;

public class Exercise1 {

    public static void main(String[] args) {
        Order order = new Order("10", LocalDateTime.now(),18.8);
        order.addAProduct("11","Mere",2.3,ProductCategory.HOME_AND_GARDEN);
        order.addAProduct("7","Pudra",16.5,ProductCategory.BEAUTY);
        System.out.println(order.toString());
        Customer customer = new Customer("123","George","0754301243",new Address("Ciucas","Cluj"));
        System.out.println(customer.toString());
    }
}
