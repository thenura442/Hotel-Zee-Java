/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import model.db;

/**
 *
 * @author adala_06k8xra
 */
public class updatepassdao {
    public  static int updatepass(String pass, String email) 
                {
                  int st3 =0;
                  try {
                      Connection tmp = db.getInstance().openConnection();
                      PreparedStatement ps = tmp.prepareStatement("update registration set password=? where email=?");
                      ps.setString(1, pass);
                      ps.setString(2, email);
                      st3 =ps.executeUpdate();

                  }
                    catch(Exception e) {
                        e.printStackTrace();
                    }
        
                     return st3;   
    
               }
}
