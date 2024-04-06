/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author adala_06k8xra
 */
public class db {
    private static db obj = null;
    private final String url = "jdbc:mysql://localhost:3306/hotel_zee";
    private final String user = "root";
    private final String pass = "";
    private Connection con = null;

    private db() {}

    public static db getInstance() {

        if(obj == null) {
            synchronized (db.class) {
                if(obj == null) {
                    obj = new db();
                }
            }
        }

        return obj;
    }

    public Connection openConnection() {
        try{

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);

            return con;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        }
    }

    public void closeConnection() {
        try{
            con.close();
        }catch (Exception ex) {
            System.out.println(ex.toString());
        }
    }
}
