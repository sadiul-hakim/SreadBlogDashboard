package com.hakim.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hakim
 */
public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {

        try {
            if (con == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/blog", "Hakim", "hakim@123");
            }
        } catch (ClassNotFoundException | SQLException e) {
            Logger.getLogger(ConnectionProvider.class.getName()).log(Level.SEVERE, null, e);
        }

        return con;
    }
}
