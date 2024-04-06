/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.db;

/**
 *
 * @author adala_06k8xra
 */
public class checkemaildao {
    public  boolean checkemail(String Email) 
                {
                  boolean st1 =false;
                  try {

                      Connection tmp = db.getInstance().openConnection();
                      PreparedStatement ps = tmp.prepareStatement("select * from registration where email=?");
                      ps.setString(1, Email);
                      ResultSet r =ps.executeQuery();
                      st1 = r.next();

                  }
                    catch(Exception e) {
                        e.printStackTrace();
                    }
        
                     return st1;   
    
               }
}
