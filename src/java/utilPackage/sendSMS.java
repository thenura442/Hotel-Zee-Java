/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilPackage;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;

/**
 *
 * @author adala_06k8xra
 */
public class sendSMS {
    public void sendsms(String message,String phone)
    {
        try
        {
            
            String reciever = "+94"+phone;
            String msg = message;
            URL url = new URL("https://api.getshoutout.com/coreservice/messages");
            URLConnection con = url.openConnection();
            HttpURLConnection http = (HttpURLConnection)con;
            http.setRequestMethod("POST");
            http.setDoOutput(true);
            
            Root root = new Root();
            root.content = new Content();
            root.content.sms = msg;
            root.destinations = new ArrayList<String>();
            root.destinations.add(reciever);
            root.source = "ShoutDEMO";
            root.transports = new ArrayList<String>();
            root.transports.add("sms");
            
            byte[] out = new Gson().toJson(root).getBytes(StandardCharsets.UTF_8);
            int length = out.length;
            
            http.setFixedLengthStreamingMode(length);
            http.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
            http.setRequestProperty("Authorization", "Apikey eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiI0MzVhNjFjMC04NjVkLTExZWMtOTc2OS1mYmQzMWE4ZTg0ZTkiLCJzdWIiOiJTSE9VVE9VVF9BUElfVVNFUiIsImlhdCI6MTY0NDA0OTU2NiwiZXhwIjoxOTU5NTgyMzY2LCJzY29wZXMiOnsiYWN0aXZpdGllcyI6WyJyZWFkIiwid3JpdGUiXSwibWVzc2FnZXMiOlsicmVhZCIsIndyaXRlIl0sImNvbnRhY3RzIjpbInJlYWQiLCJ3cml0ZSJdfSwic29fdXNlcl9pZCI6IjY0NjQxIiwic29fdXNlcl9yb2xlIjoidXNlciIsInNvX3Byb2ZpbGUiOiJhbGwiLCJzb191c2VyX25hbWUiOiIiLCJzb19hcGlrZXkiOiJub25lIn0.GkqxFXNSlUa2RinCU14TPCtmbBOGeZXGanDqA9xk-oc");
            http.connect();
            try(OutputStream os = http.getOutputStream())
                {
                    os.write(out);
                }
            catch(Exception ex)
            {
                System.out.println(ex.toString());
            }
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
    }
    
    public class Content
    {
        public String sms;
        public Content(){}
    }
    
    public class Root
    {
        public Root(){}
        public String source;
        public List<String> destinations;
        public List<String> transports;
        public Content content;
    }
}
