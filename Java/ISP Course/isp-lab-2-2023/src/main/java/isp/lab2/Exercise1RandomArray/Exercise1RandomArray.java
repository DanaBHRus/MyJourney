package isp.lab2.Exercise1RandomArray;

import java.io.*;

public class Exercise1RandomArray {

    public static int getLengthOfArray(int n, int m)
    {
        int length=(int)Math.floor(Math.random()*(m-n+1)+n);
        return length;
    }

    public static int[] getArrayOfRandomNumbers(int length) throws IOException
    {
        int i;
        int a[]=new int[length];
        for(i=0;i<length;i++)
        {
          BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
          a[i]=Integer.parseInt(stdin.readLine());
        }
        return a;
    }

    public static int[] findMaxAndMin(int[] array, int length)
    {
        int mm[]=new int[2];
        mm[0]=array[0];
        mm[1]=array[0];
        int i;
        for(i=1;i<length;i++)
        {
            if(array[i]<mm[0])
                mm[0]=array[i];
            if(array[i]>mm[1])
                mm[1]=array[i];
        }
        return mm;
    }

    public static void main(String[] args) throws IOException
    {

        int n,m;
        BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
        n=Integer.parseInt(stdin.readLine());
        stdin = new BufferedReader(new InputStreamReader(System.in));
        m=Integer.parseInt(stdin.readLine());
        int length=getLengthOfArray(n,m);
        System.out.println("Lungimea este: "+length);
        int[] a = getArrayOfRandomNumbers(length);
        int[] mm = findMaxAndMin(a,length);
        System.out.println("Minimul este "+mm[0]+" si maximul este "+mm[1]);
    }
}
