package isp.lab3.exercise6;

import java.lang.NullPointerException;

public final class VendingMachine
{
    private static volatile VendingMachine instance;
    public static Product[] products;
    public static int credit;

    private VendingMachine() {}

    private VendingMachine(Product[] products, int credit)
    {
        this.products=products;
        this.credit=credit;
    }

    public static VendingMachine getInstance() {
        if (instance == null) {
            synchronized (VendingMachine.class) {
                if (instance == null) {
                    Product[] products = {new Product(1,"Biscuiti"),
                            new Product(2,"Acadea"),
                            new Product(3,"Apa"),
                            new Product(4,"Limonada")};
                    instance = new VendingMachine(products,0);
                }
            }
        }
        return instance;
    }

    public String displayProducts()
    {
        String array = "";
        for(Product product:products)
            array = array + product.toString() + '\n';
        return array;
    }

    public int insertCoin(int value)
    {
        credit=credit+value;
        return credit;
    }

    public String selectProduct(int id)
    {
        for(Product product:products)
            if(product.getId()==id)
                return product.getName();
        return "Error";
    }

    public void displayCredit()
    {
        System.out.println("Credit is: " + credit);
    }

    public void userMenu(VendingMachine vendingMachine)
    {
        System.out.println("You can buy: ");
        System.out.println(vendingMachine.displayProducts());
        displayCredit();
    }

    public static void main(String[] args)
    {
        VendingMachine vendingMachine = getInstance();
        System.out.println(vendingMachine.displayProducts());
        System.out.println(vendingMachine.selectProduct(1));
        System.out.println(vendingMachine.selectProduct(5));
        vendingMachine.displayCredit();
        vendingMachine.insertCoin(100);
        vendingMachine.displayCredit();
        vendingMachine.userMenu(vendingMachine);
    }
}