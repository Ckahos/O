import java.util.Scanner;
import java.util.Arrays;
class environment { 
	   double Kc,Qc,Cr; 
	String [] types = {"Chaotic","Quiescent","Nematic","Krommic"}; // Environment types....  
	 static double ii(double a,double b) {
	              double c = Math.sqrt(Math.PI);
		          return(Math.sqrt((a*a*a) - b + c ));	  
	    }
           static double sqrt(double a) {
        	               return Math.sqrt(a);
           }
                static double square(double a) {
                         return (a*a);                 	
                }
}

class cell extends environment {
	    double icm, speed,affinity,radius;
	 static double ll(double a,double b , double c){
		    return Math.sqrt(a*a + b*b); 
		 
	 }
	 static void kk(boolean a){
              System.out.println(a);		 
	 }
   static  void cc(String a){
	        System.out.println(a);
   }
    static void ss(String a,double b){
    	      System.out.println( a + b);
    }
   static void aa(String b) {
	      boolean a;    
	     if(b == "yes"){
	            a = true;
	        	 kk(a);
	         }
	         else 
	        	  a = false;
	            kk(a); }
      static  double en(double a){                	  
    	   environment cell_medium = new environment();    
               Scanner qw = new Scanner(System.in);
    	       cell_medium.Cr = sqrt(qw.nextDouble());     
    	   cell_medium.Qc = square(cell_medium.Cr);  
    	      cell_medium.Kc = ii(cell_medium.Qc,cell_medium.Cr);
                    return cell_medium.Kc;          
                    }
   
   }
public class umba extends cell {
	public static void main(String[] args){
	      cell larry = new cell();
	    Scanner xw = new Scanner(System.in);
	        cc("Please insert the cell's speed:");
	        larry.speed = xw.nextDouble();
	     cc("Please insert cell's radius:");
	       larry.radius = xw.nextDouble();
	        cc("Please, insert the cell's internal cell mass:");
	           larry.icm = xw.nextDouble();	
	    cc("Please, insert the cell's affinity to other carbonic chains:(yes/no):");
	             aa(xw.nextLine());
	         
	             
	}
}