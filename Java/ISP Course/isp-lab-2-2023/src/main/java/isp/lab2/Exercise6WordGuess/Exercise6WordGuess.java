package isp.lab2.Exercise6WordGuess;

import javax.xml.stream.events.Characters;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Random;

public class Exercise6WordGuess {

    public static Dictionary makeDictionary()
    {
        Dictionary<Integer,String> dict = new Hashtable<>(); ///ijklmnopqrstuvwxyz
        dict.put(0,"abcada");
        dict.put(1,"abecedar");
        dict.put(2,"bar");
        dict.put(3,"creion");
        dict.put(4,"darnic");
        dict.put(5,"egoist");
        dict.put(6,"flamingo");
        dict.put(7,"ghimpe");
        dict.put(8,"harpon");
        dict.put(9,"iubire");
        dict.put(10,"juvete");
        dict.put(11,"kelvin");
        dict.put(12,"limonada");
        dict.put(13,"mama");
        dict.put(14,"nuvela");
        dict.put(15,"orhidee");
        dict.put(16,"papagal");
        dict.put(17,"quintal");
        dict.put(18,"raton");
        dict.put(19,"submarin");
        dict.put(20, "tata");
        dict.put(21, "urs");
        dict.put(22, "vulpe");
        dict.put(23, "watt");
        dict.put(24, "xilofon");
        dict.put(25, "yard");
        dict.put(26, "zimbru");
        return dict;
    }

    public static String selectWordFromDictionary(Dictionary dict)
    {
        Random rand = new Random();
        return dict.get(rand.nextInt(dict.size())).toString();
    }

    public static int countOccurence(char c, String word, int[] positionArray)
    {
        int i,k=2;
        positionArray[0]=0;
        for(i=0;i<word.length();i++)
            if(word.charAt(i)==c)
            {
                positionArray[0]++;
                positionArray[k]=i;
                k++;
            }
        positionArray[1]=k;
        return positionArray[0];
    }

    public static Dictionary makeDictionaryOfLetters(String word)
    {
        int n=word.length();
        Dictionary<Integer, String> lettersFound = new Hashtable<>();
        int i;
        for(i=0;i<n;i++)
            lettersFound.put(i,"@");
        return lettersFound;
    }

    public static Dictionary addLetters(Dictionary lettersFound, char[] c, int[] positionArray)
    {
        int n = positionArray[1];
        int k;
        for(k=2;k<n;k++)
        {
            lettersFound.put(positionArray[k],c[0]);
        }
        return lettersFound;
    }

    public static void showDictionary(Dictionary lettersFound)
    {
        int n=lettersFound.size(),i;
        for(i=0;i<n;i++)
            if(lettersFound.get(i)!="@")
                System.out.println("Litera " + lettersFound.get(i) + " pe pozitia " + (i+1));
    }

    public static void main(String[] args) throws IOException
    {
        Dictionary<Integer,String> dictionary = makeDictionary();
        String word = selectWordFromDictionary(dictionary);
        int letters=0, n=word.length(), tries=0;
        Dictionary<Integer,Characters[]> lettersFound = makeDictionaryOfLetters(word);
        while(letters!=n)
        {
            BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
            char[] c=stdin.readLine().toCharArray();
            int [] possitionArray = new int[20];
            int frequency = countOccurence(c[0],word,possitionArray);
            letters=letters+frequency;
            lettersFound = addLetters(lettersFound,c,possitionArray);
            showDictionary(lettersFound);
            if(frequency==0)
                System.out.println("Nu exista litera.");
            tries++;
        }
        System.out.println("Cuvantul: " + word);
        System.out.println("Numarul de incercari: " + tries);
    }

}
