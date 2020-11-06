/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thinhdrit.demotesting.util;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ThinhTPT
 */
public class DBUtil implements Serializable {

    public static Connection makeConnection()
            throws ClassNotFoundException, SQLException {
        Connection conn = null;
        String dbURL = "jdbc:sqlserver://SE140092\\SQL2012EXP;databaseName=SWT_DEMO";
        String user = "sa";
        String pass = "thinhtpt";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        conn = DriverManager.getConnection(dbURL, user, pass);
        return conn;
    }

}
