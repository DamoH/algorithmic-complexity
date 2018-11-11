//import java.util.Collections;
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.List;
import java.util.*;

public class Reverse {
    public static void main (String[] args) {

        Integer array[] = { 22, 55, 77, 5353, 75, 34, 88 }; // own Reverse algo!
        for(int i=0; i<array.length/2; i++){
            int temp = array[i];
            array[i] = array[array.length -i -1];
            array[array.length -i -1] = temp;
        }
        System.out.println(Arrays.toString(array)); // only need .util.*


//        List<String> myArray = new ArrayList<String>();
//        myArray.add("34");
//        myArray.add("6");
//        myArray.add("7");
//        myArray.add("67");
//        System.out.println(myArray);
//        Collections.reverse(myArray);
//        System.out.println(myArray); // only need .util.*


//        Integer arr[] = { 22, 55, 77, 5353, 75, 34, 88 };
//        System.out.println("Original Array : " + Arrays.toString(arr)); // only need .util.Arrays or .util.*
//        Collections.reverse(Arrays.asList(arr));
//        System.out.println("Modified Array : " + Arrays.toString(arr)); // only need .util.*

    }
}