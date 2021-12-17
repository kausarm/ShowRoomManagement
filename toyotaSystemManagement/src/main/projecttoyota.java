/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author me
 */
public class projecttoyota {
    private static Connection MYSQLConfig; 
    
    public static Connection config()throws SQLException{
        
        try {
          String URL = "jdbc:mysql://localhost:3306/toyotasystemmanagement";
          String user = "root";
          String pass = "";
          
          DriverManager.registerDriver(new com.mysql.jdbc.Driver());
          MYSQLConfig = DriverManager.getConnection(URL,user,pass);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "koneksi gagal "+e.getMessage());
        }
        return MYSQLConfig;
    }

}


