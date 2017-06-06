class g_shape{
	   int faces,edges,points;
             int sooth;
}
public class RAW {
	public static void main(String[] args){
         double a,b,c;
          g_shape square = new g_shape();
             square.faces = (4);
             square.edges = 4;
             square.points = 0;
       g_shape rectangle = new g_shape();
              rectangle.faces = square.faces;
                rectangle.edges = square.edges;
                  rectangle.points = square.points;
       g_shape circle = new g_shape();
                circle.faces = (square.faces*2);
                 circle.edges = (0);
                    circle.points = 20;
       g_shape triangle = new g_shape();
                    triangle.sooth = 1;
                         triangle.points = triangle.sooth - (1/20)*100;
                      triangle.faces = triangle.points;
                         triangle.edges = triangle.points + triangle.sooth;
 	} 
}