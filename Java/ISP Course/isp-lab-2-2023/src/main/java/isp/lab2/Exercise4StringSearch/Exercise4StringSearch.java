package isp.lab2.Exercise4StringSearch;

import java.util.Scanner;
import java.util.StringTokenizer;

public class Exercise4StringSearch {
    /**
     * This method should return an array of strings that contain the substring.
     *
     * @param input
     * @param substring what to search for
     * @return
     */
    public static String[] searchSubstrings(String input, String substring)
    {
        StringTokenizer array = new StringTokenizer(input,",");
        int k=0;
        String[] copy = new String[15];
        while (array.hasMoreTokens())
        {
            String word = array.nextToken();
            if (word.contains(substring)==true)
            {
                copy[k]=word;
                k++;
            }
        }
        String[] output = new String[k];
        int i;
        for(i=0;i<k;i++)
            output[i]=copy[i];
        return output;
    }

    public static String readFromConsoleInt() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter line: ");
        return scanner.nextLine();
    }

    public static void main(String[] args) {
        String input; ///= "apples,computer,bread,tea,car";
        String substring; /// = "te";
        input=readFromConsoleInt();
        substring=readFromConsoleInt();
        String[] output = searchSubstrings(input,substring);
        for(String string: output)
            System.out.println(string);
        }
    }
