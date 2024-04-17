/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {

    public Connection connection;
    
    public DBContext() {
        try {
            String user = "sa";
            String pass = "123456";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=job_searching_project";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (Exception ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
