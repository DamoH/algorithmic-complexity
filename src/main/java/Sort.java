import java.util.*;

public class Sort {
    public static void main (String[] args) {
//        Integer arr[] = { 535, 77, 5353, 22, 75, 34, 88 };
//        Arrays.sort(arr);
//        System.out.println(Arrays.toString(arr));
//
//        String array[] = { "b", "e", "a", "c", "d" };
//        Arrays.sort(array);
//        System.out.println(Arrays.toString(array));


        Integer arr[] = { 535, 77, 5353, 22, 75, 34, 88 };
//        String arr[] = { "b", "e", "a", "c", "d" };       // can't get alphabetically working like this yet
        int temp;
        for (int i=1; i<arr.length; i++) { // own "insert" Sort algo!
            for (int j=i; j>0; j--) {
                if (arr[j] < arr [j-1]) {
                    temp = arr[j];
                    arr[j] = arr[j - 1];
                    arr[j - 1] = temp;
                }
            }
        }
        System.out.println(Arrays.toString(arr));
//
//        for (int x=0; x<arr.length; x++) {        // for the alphabetical sort attempt
//            System.out.println(arr[i]);
//        }

    }
}