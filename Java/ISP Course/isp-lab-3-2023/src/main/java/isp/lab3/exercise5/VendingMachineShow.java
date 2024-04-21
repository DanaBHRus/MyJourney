package isp.lab3.exercise5;

public class VendingMachineShow
{
    public static void main(String[] args)
    {
        Product[] products = {new Product(1,"Biscuiti"),
                new Product(2,"Acadea"),
                new Product(3,"Apa"),
                new Product(4,"Limonada")};
        VendingMachine vendingMachine = new VendingMachine(products,0);
        System.out.println(vendingMachine.displayProducts());
        System.out.println(vendingMachine.selectProduct(1));
        System.out.println(vendingMachine.selectProduct(5));
        vendingMachine.displayCredit();
        vendingMachine.insertCoin(100);
        vendingMachine.displayCredit();
        vendingMachine.userMenu(vendingMachine);
    }
}
