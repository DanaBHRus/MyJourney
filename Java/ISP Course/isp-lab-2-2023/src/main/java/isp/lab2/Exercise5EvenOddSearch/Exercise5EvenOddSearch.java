package isp.lab2.Exercise5EvenOddSearch;

import java.util.Scanner;
import java.util.StringTokenizer;

public class Exercise5EvenOddSearch {

    static int MAX_VALUE=10^15;

    public static int parity(int number)
    {
        if(number%2==0)
            return 0;
        else return 1;
    }

    public static void oddNumber(StringTokenizer array, int[] numberArray)
    {
        int number=MAX_VALUE,finalPosition=0,position=0;
        while (array.hasMoreTokens())
        {
            int element = Integer.parseInt(array.nextToken());
            position++;
            if (parity(element)==1 && element<number)
            {
                number=element;
                finalPosition=position;
            }
        }
        numberArray[0]=number;
        numberArray[1]=finalPosition;
    }

    public static void evenNumber(StringTokenizer array, int[] numberArray)
    {
        int number=0,finalPosition=0,position=0;
        while (array.hasMoreTokens())
        {
            int element = Integer.parseInt(array.nextToken());
            position++;
            if (parity(element)==0 && element>=number)
            {
                number=element;
                finalPosition=position;
            }
        }
        numberArray[2]=number;
        numberArray[3]=finalPosition;
    }
    public static int[] findEvenOdd(String input)
    {
        StringTokenizer array = new StringTokenizer(input,",");
        int[] numberArray = new int[4];
        oddNumber(array,numberArray);
        array = new StringTokenizer(input,",");
        evenNumber(array,numberArray);
        return numberArray;
    }

    public static String readFromConsoleInt() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter line: ");
        return scanner.nextLine();
    }

    public static void main(String[] args) {
        String input = readFromConsoleInt(); ///"1,2,3,4,5,6,7,8,9,10";
        int[] result = findEvenOdd(input);
        if(result[1]==0 || result[3]==0) {
            if (result[1] == 0)
                System.out.println("Nu exista numere impare.\n");
            if (result[3] == 0)
                System.out.println("Nu exista numere pare.\n");
        }
        else
        for (int i : result)
            System.out.println(i);
    }
}
