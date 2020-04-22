import java.io.InputStreamReader;
import java.io.FileInputStream;

public class scanTest {
  public static void main(STring[] args){
    MyScanner s = null;
    try{
      s = new MyScanner (new InputStreamReader(new FileInputStream( args[0])));
    }//try
    catch(Exception e){
      e.printStackTrace();
    }//catch

    String t = null;
    do{
      try{
        t = s.nextToken();
      }//try
    catch(Exception e){
      e.printStackTrace();
      t = null;
    }//catch
    System.out.println("*** The String Was " + t);
  }while(t != null);
  }//main
}//class
