import java.util.*;

public class Shuffle {
    public static void main(String[] args) {
//        Integer arr[] = { 22, 55, 77, 5353, 75, 34, 88 };
////        String arr[] = { "a", "b", "c", "d", "e" };
//        System.out.println("Original array: " + Arrays.toString(arr));
//        Collections.shuffle(Arrays.asList(arr));
//        System.out.println("Shuffled array: " + Arrays.toString(arr)); // only need .util.*

// can also shuffle a list by creating an array list object
//        List arrList = new ArrayList();
// and then...
//        Collections.shuffle(arrList);


// to get a random number betweem 1-100....
//        Random ran = new Random();
//        int nxt = ran.nextInt(100);
//        System.out.println(nxt);


        Integer arr[] = { 22, 55, 77, 5353, 75, 34, 88 }; // own Shuffle algo!....
        Random ran = new Random();
        for (int i=0; i<arr.length; i++) {
            int randomPosition = ran.nextInt(arr.length);
            int temp = arr[i];
            arr[i] = arr[randomPosition];
            arr[randomPosition] = temp;
        }
        System.out.println(Arrays.toString(arr));

    }
}