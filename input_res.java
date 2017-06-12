import java.util.Arrays;
import java.util.Scanner;
public class Main {
 private static void ss(double a){
               System.out.println(a);
 }
 private static void dd(String a){
      System.out.println(a);
 }
private static void gs(double a,double b, double c){
              double d = Math.PI;
             double x = Math.sqrt((a*b)/(2*(c*c*c)*(d*d))) ;
            ss(x);
  
}
public static void main(String [] args){
      double a[] = new double[3];
      Scanner ff = new Scanner(System.in);
      dd("Please, enter Rm:");
       a[0] = ff.nextDouble();
     dd("Please, enter the Ri:");
       a[1] = ff.nextDouble();
    dd("Please, enter the a:");
      a[2] = ff.nextDouble();
      dd("This is the result:");
       dd("Rm: " + a[0] + "\n" + "Ri: "+ a[1] + "\na: " + a[2]);
        dd( "With a input resistance of: ")  ;
        gs(a[0],a[1],a[2]);
}
}
//Weird results.......
