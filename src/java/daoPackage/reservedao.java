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
public class reservedao {
    public  boolean reserve(String name, String email, String phone, String country, String arrival,String departure,String adult,String children,String room,String comment,String member) throws ClassNotFoundException, SQLException 
                {
                    Connection tmp = db.getInstance().openConnection();
                    PreparedStatement ps = tmp.prepareStatement("insert into reservation values(?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, null);
                    ps.setString(2, name);
                    ps.setString(3, email);
                    ps.setString(4, phone);
                    ps.setString(5, country);
                    ps.setString(6, arrival);
                    ps.setString(7, departure);
                    ps.setString(8, adult);
                    ps.setString(9, children);
                    ps.setString(10, room);
                    ps.setString(11, comment);
                    ps.setString(12, member);
                    int i = ps.executeUpdate();

                    if(i > 0) 
                        return true;
                      else
                        return false;
                    
                }
}
