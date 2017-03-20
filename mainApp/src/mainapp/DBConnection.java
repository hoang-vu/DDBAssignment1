/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mainapp;
import java.sql.*;
import oracle.jdbc.OracleDriver;
/**
 *
 * @author hoang_vu
 */
public final class DBConnection {
    public static Connection conn = null;
    /* Open connection to database*/
    public static Connection openConnection(){
        try{
            DriverManager.registerDriver(new OracleDriver());
            conn = DriverManager.getConnection("jdbc:oracle:thin:@hippo.its.monash.edu.au:1521:FIT5148A", "S28243250", "Ddvs_dv8");
            System.out.println("Connected to Oracle Database");
        }catch(SQLException e){
            System.out.println("Connection error. Cannot connect to database");
        }
        /*return an opened connection*/
        return conn;
    }
    
    /*Terminate connection*/
    public static void closeConnection(){
        try{
            conn.close();
            System.out.println("Connection closed");
        }catch(SQLException e){
            System.out.println("Connection cannot close properly");
        }        
    }
}
