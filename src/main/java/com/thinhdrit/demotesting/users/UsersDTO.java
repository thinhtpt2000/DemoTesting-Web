/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.thinhdrit.demotesting.users;

import java.io.Serializable;

/**
 *
 * @author ThinhTPT
 */
public class UsersDTO implements Serializable {

    private String email;
    private String password;
    private String fullName;
    private String address;
    private String phone;
    private boolean status;

    public UsersDTO() {
    }

    public UsersDTO(String email, String fullName, String address, String phone) {
        this.email = email;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
