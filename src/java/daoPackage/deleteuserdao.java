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
public class deleteuserdao {
    public  static int deleteuser(String email, String pass) 
                {
                  int st2 =0;
                  try {
                      Connection tmp = db.getInstance().openConnection();
                      PreparedStatement ps = tmp.prepareStatement("delete from registration where email=? and password=?");
                      ps.setString(1, email);
                      ps.setString(2, pass);
                      st2 =ps.executeUpdate();

                  }
                    catch(Exception e) {
                        e.printStackTrace();
                    }
        
                     return st2;   
    
               }
}
