/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todoapp.utils;

import java.sql.*;
public class JdbcUtils 
{   
    private static Connection conn=null;
    
    public static Connection getConnection()
    {
         try{
           Class.forName("oracle.jdbc.OracleDriver");
           conn=DriverManager.getConnection("jdbc:oracle:thin:@//DESKTOP-EJ254C5:1521/XE","advjavabatch","mystudents");       
           
        }catch(Exception ex)
        {
            
        }
        return conn;
    }
       
}
