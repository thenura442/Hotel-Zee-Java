/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.db;
import model.user;

/**
 *
 * @author adala_06k8xra
 */
public class displaydao {
    public static List<user> display(String member){  
        List<user> list=new ArrayList<user>();  
          
        try
        {  
            Connection tmp = db.getInstance().openConnection(); 
            PreparedStatement ps = tmp.prepareStatement("select email,first_name,last_name,phone from registration where email=?");
            ps.setString(1,member);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                user u=new user();  
                u.setemail(rs.getString(1));  
                u.setfname(rs.getString(2));  
                u.setlname(rs.getString(3));   
                u.setphone(rs.getString(4));  
                list.add(u);  
            }  
            tmp.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
}
