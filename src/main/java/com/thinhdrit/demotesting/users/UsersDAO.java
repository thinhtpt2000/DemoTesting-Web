/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thinhdrit.demotesting.users;

import com.thinhdrit.demotesting.util.DBUtil;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ThinhTPT
 */
public class UsersDAO implements Serializable {

    private static UsersDAO instance;

    private UsersDAO() {

    }

    public static UsersDAO getInstance() {
        if (instance == null) {
            instance = new UsersDAO();
        }
        return instance;
    }

    public UsersDTO checkLogin(String email, String password)
            throws SQLException, ClassNotFoundException {
        UsersDTO user = null;
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            con = DBUtil.makeConnection();
            String sql = "SELECT fullName, phone, address "
                    + "FROM Users "
                    + "WHERE email = ? AND password = ? AND status = 1";
            stm = con.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);

            rs = stm.executeQuery();
            if (rs.next()) {
                String fullName = rs.getString("fullName");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                user = new UsersDTO(email, fullName, address, phone);
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
        }
        return user;
    }
}
