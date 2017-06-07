import java.util.Scanner;
     
    class polygon {
    	 double length_a, length_b, hypotenuse; 	 
     static double zod(double a,double b){
    	    return Math.sqrt(a*a + b*b);
     }
     static void ll(double a){
    	  System.out.println("The hypotenuse is: " + a);
     }
    }
    public class RAW extends polygon{
	   public static void main(String[] args){
		   double a;
		   polygon triangle = new polygon();
		      Scanner xw = new Scanner(System.in);
		        System.out.print("Please insert the first length:");
		          triangle.length_a = xw.nextDouble();
		        System.out.println("Please insert the second length:");
		            triangle.length_b = xw.nextDouble();
		         //System.out.println("\n\n" + triangle.length_a + "\t" + triangle.length_b);
	               a = zod(triangle.length_a,triangle.length_b);
	               ll(a);
	   }    
   }