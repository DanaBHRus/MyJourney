package isp.lab2.Exercise3SumOfIntegersRecursive;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Exercise3SumOfIntegersRecursive {


    /**
     * This method will return the sum of the first n integers
     * @param n
     * @return
     */
    public static int sumOfIntegers(int n)
    {
        if(n==1)
        return 1;
        else return n+sumOfIntegers(n-1);
    }

    public static void main(String[] args) throws IOException
    {
        BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
        int n=Integer.parseInt(stdin.readLine());
        System.out.println(sumOfIntegers(n));
    }
}
