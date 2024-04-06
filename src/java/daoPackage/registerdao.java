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
import model.user;


/**
 *
 * @author adala_06k8xra
 */
public class registerdao {
    
    public  boolean register(user u) throws ClassNotFoundException, SQLException 
                {
                    Connection tmp = db.getInstance().openConnection();
                    PreparedStatement ps = tmp.prepareStatement("insert into registration values(?,?,?,?,?)");
                    ps.setString(1, u.getemail());
                    ps.setString(2, u.getfname());
                    ps.setString(3, u.getlname());
                    ps.setString(4, u.getphone());
                    ps.setString(5, u.getpassword());
                    int i = ps.executeUpdate();

                    if(i > 0) 
                        return true;
                      else
                        return false;
                    
                }
}
