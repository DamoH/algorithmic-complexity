import java.util.ArrayList;

public class Last {
    public static void main(String[] args) {
        int[] arr = { 22,55,77,5353,75,34,88 };
        int lastItem = arr[arr.length-1];
        System.out.println(lastItem);
    }
}




// this exercise swaps first and last elements of an array...

//import java.util.Arrays;
//public class Last {
//    public static void main(String[] args)
//    {
//        int[] array_nums = { 22,55,77,5353,75,34,88 };
//        System.out.println("Original Array: "+Arrays.toString(array_nums));
//        int x = array_nums[0]; // x equals 22
//        array_nums[0] = array_nums[array_nums.length-1]; // replaces start with end element
//        array_nums[array_nums.length-1] = x; // replace end element with x (22)
//        System.out.println("New array after swaping the first and last elements: "+Arrays.toString(array_nums));
//    }
//}