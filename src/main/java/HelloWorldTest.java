import org.joda.time.LocalTime;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class HelloWorldTest {
    public static void main(String[] args) {
        String url = "https://api.github.com/repos/wings-software/sridhartest/hooks/397313040/deliveries";
        String username = "sribalij";
        String password = "";

        String[] command = {"curl", "-u", username + ":" + password, url};

        try {
            Process process = Runtime.getRuntime().exec(command);

            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}