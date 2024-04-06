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
public class checkuserdao {
     public  boolean checkuser(String email,String pass) 
                {
                  boolean st =false;
                  try {

                      Connection tmp = db.getInstance().openConnection();
                      PreparedStatement ps = tmp.prepareStatement("select * from registration where email=? and password=?");
                      ps.setString(1, email);
                      ps.setString(2, pass);
                      ResultSet rs =ps.executeQuery();
                      st = rs.next();

                  }
                    catch(Exception e) {
                        e.printStackTrace();
                    }
        
                     return st;   
    
               }
}
