/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

 
public class Account {
    private int id;
    private String userName;
    private String password;
    private String role;
    private String phone;
    private String email;
    private String address;
    private String specialism;
    private boolean status;

    public Account(int id, String userName, String password, String role, String phone, String email, String address, boolean status) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.role = role;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.status = status;
    }

    public Account(int id, String userName, String password, String role, String phone, String email, String address, String specialism, boolean status) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.role = role;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.specialism = specialism;
        this.status = status;
    }

    public String getSpecialism() {
        return specialism;
    }

    public void setSpecialism(String specialism) {
        this.specialism = specialism;
    }
    
    public Account() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
