/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import util.DBContext;

public class UserDAO extends DBContext {

    ResultSet rs = null;
    PreparedStatement ps = null;

    public ArrayList<Account> getAllUser(String search) {
        ArrayList<Account> list = new ArrayList<>();
        try {
            String sql = "Select account_id,user_name,password,r.role_name,phone,email,address,status from account a "
                    + "inner join role r on r.role_id = a.role_id where user_name like ? or email like ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ps.setString(2, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8));
                list.add(a);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int checkEmailExist(String email) {
        try {
            String sql = "Select account_id from account where email = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public Account getAccount(String email, String password) {
        try {
            String sql = "select account_id,user_name,password,role_id,phone,email,address,specialism,status from account where email = ? and password = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void register(String username, String email, String phone, String address, String password, String roleId, String status, String specialism) {
        try {
            String sql = "INSERT INTO account (user_name, email, password,phone, address,role_id,status,specialism)VALUES (?,?,?,?,?,?,?,?)";
            ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setString(6, roleId);
            ps.setString(7, status);
            ps.setString(8, specialism);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void changePassword(String email, String password) {
        try {
            String sql = "update account set password = ? where email = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, email);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateProfile(int account_id, String userName, String email, String phone, String address, String specialism) {
        try {
            String sql = "UPDATE [dbo].[account]\n"
                    + "   SET [user_name] = ?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[phone] = ?\n"
                    + "      ,[address] = ?\n"
                    + "      ,[specialism] = ?\n"
                    + " WHERE [account_id] = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, userName);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, address);
            ps.setString(5, specialism);
            ps.setInt(6, account_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void updateUser(String account_id, String userName, String email, String phone, String address, String specialism,String roleId) {
        try {
            String sql = "UPDATE [dbo].[account]\n"
                    + "   SET [user_name] = ?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[phone] = ?\n"
                    + "      ,[address] = ?\n"
                    + "      ,[specialism] = ?\n"
                    + "      ,[role_id] = ?\n"
                    + " WHERE [account_id] = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, userName);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, address);
            ps.setString(5, specialism);
            ps.setString(6, roleId);
            ps.setString(7, account_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAccountById(int userId) {
        try {
            String sql = "select account_id,user_name,password,role_id,phone,email,address,specialism,status from account where account_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int countUser() {
        int count = 0;
        String sql = "SELECT COUNT(*) as 'count'\n"
                + "  FROM account";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return count;
    }

    public int countJob() {
        int count = 0;
        String sql = "SELECT COUNT(*) as 'count'\n"
                + "  FROM job";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return count;
    }

    public int countApply() {
        int count = 0;
        String sql = "SELECT COUNT(*) as 'count'\n"
                + "  FROM apply";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return count;
    }

    public void blockUser(String userID) {
        try {
            String sql = "UPDATE account \n"
                    + "SET status = CASE\n"
                    + "WHEN status = '0' THEN '1'\n"
                    + "WHEN status = '1' THEN '0'\n"
                    + "ELSE status\n"
                    + "end\n"
                    + "where account_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, userID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
