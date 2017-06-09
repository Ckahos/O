import java.util.*;
import java.util.Arrays;
import java.util.Scanner; 
public class Main{
     private static void dd(String a) {
         System.out.println(a);
        }
     private static void sqrt( double u) {
                System.out.println(Math.sqrt(u));
         }
           private static void square(double x){
                     System.out.println(x*x);         
           }
        private static void sh(double f){
            System.out.println(f);
        }
    public static void main(String [] args) {
          Scanner jj = new Scanner(System.in);   
          dd("Please enter a value:");
             double arr[] =  new double [4]; 
                 arr[0] = jj.nextDouble();  
            dd("Please enter a value:");
             arr[1] = jj.nextDouble();
            dd("Please enter a value:");
                arr[2]  = jj.nextDouble();
              dd("Please enter a value:");
                arr[3] =  jj.nextDouble();
                  dd(Arrays.toString(arr));
                  
    }
}
