//Waiting REVIEW....
import java.util.Scanner;
public class Main {
 private static void dd(String a){
              System.out.println(a);
 } 
   private static void ss(double a){
           System.out.println(a);
   }
  private static double ii(double a, double b){
                     return (a)/(2*(b*b)*Math.PI);
  }
public static void main(String[] args){
           double a[] = new double [5];
           Scanner gt = new Scanner(System.in);
           dd("Please enter the Rm: ");
            a[0] = gt.nextDouble();
          dd("Please enter the a: ");
            a[1] = gt.nextDouble();
            dd("Results:");
           dd("The end resistance is: ");
            System.out.println(ii(a[0],a[1]));
}
}
