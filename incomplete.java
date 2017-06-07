import java.util.Arrays;
import java.util.Scanner;
public class Main {
      static void ll(int a){
                 System.out.println(a);           
       }
    
  
   public static void main(String[] args){
        int a;
        Scanner xw = new Scanner(System.in);
       System.out.println("Please enter the size of the array: ");
           int [] abba = new int [xw.nextInt()];
          String abbaString = Arrays.toString(abba);
         System.out.println(abbaString);
         System.out.println("");
          System.out.println("Please, enter a value: ");
               Arrays.fill(abba,xw.nextInt());
          for (a=0;a<();a++) {
               ll(abba[a]);
          } 
            
  }
}
