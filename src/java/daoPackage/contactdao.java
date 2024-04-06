/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.db;

/**
 *
 * @author adala_06k8xra
 */
public class contactdao {
    public  boolean contact(String email, String fname, String lname, String phone, String subject,String message) throws ClassNotFoundException, SQLException 
                {
                    Connection tmp = db.getInstance().openConnection();
                    PreparedStatement ps = tmp.prepareStatement("insert into contact values(?,?,?,?,?,?,?)");
                    ps.setString(1, null);
                    ps.setString(2, email);
                    ps.setString(3, fname);
                    ps.setString(4, lname);
                    ps.setString(5, phone);
                    ps.setString(6, subject);
                    ps.setString(7, message);
                    int i = ps.executeUpdate();

                    if(i > 0) 
                        return true;
                      else
                        return false;
                    
                }
}
