package isp.lab2.Exercise2PrimeProduct;

import java.io.*;

public class Exercise2PrimeProduct {

    public static int checkPrime(int number)
    {
        if(number<=1)
            return 0;
        else
        {
            int d;
            for(d=2;d*d<=number;d++)
                if(number%d==0)
                    return 0;
        }
        return 1;
    }

    public static long getPrimeProduct(int n, int m)
    {
        int number;
        long product=1;
        for(number=n;number<=m;number++)
            if(checkPrime(number)==1)
                product=product*number;
        return product;
    }

    /**
     * This method should read from the console a number
     *
     * @return the number read from the console
     */
    public static int readfromConsoleInt() throws IOException
    {
        BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
        return Integer.parseInt(stdin.readLine());
    }

    public static void main(String[] args) throws IOException {
        System.out.println("The product of the first 10 prime numbers is: " + getPrimeProduct(1, 10));
        System.out.println("The product of prime numbers between n and m: " + getPrimeProduct(readfromConsoleInt(), readfromConsoleInt()));
    }

}
