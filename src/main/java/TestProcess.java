import java.io.*;

/**
 * Created with IntelliJ IDEA.
 * User: sorapark
 * Date: 13. 9. 25.
 * Time: 오후 2:26
 * To change this template use File | Settings | File Templates.
 */
public class TestProcess {
  public static void main(String args[]) throws IOException {
    String command = "cat";
    ProcessBuilder pb = new ProcessBuilder(command.split(" "));

    Process p = pb.start();

    // Serializer.writeMap
    OutputStream out = p.getOutputStream();
    out.write("Hello");

    // while (readIn.ready() ...) {}
    InputStream in = p.getInputStream();
    BufferedReader readIn = new BufferedReader(new InputStreamReader(in));

    String readLine = readIn.readLine();
    System.out.println(readLine);
    //p.wait();
  }
}
