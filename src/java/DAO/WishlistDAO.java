/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Job;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import util.DBContext;

 
public class WishlistDAO extends DBContext {

    ResultSet rs = null;
    PreparedStatement ps = null;

    public ArrayList<Job> getWishlistJobs(int userId) {
        ArrayList<Job> list = new ArrayList<>();
        try {
            String sql = "select j.job_id, j.job_name, j.level, j.type, j.offer_salary, j.location,j.posted_date from wishlist w inner join job j on w.job_id = j.job_id \n"
                    + "  inner join account a on a.account_id = w.account_id where w.account_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                Job a = new Job(rs.getString(1),
                        rs.getString(2),
                        "",
                        "",
                        "",
                        "",
                        rs.getString(3),
                        rs.getString(4),
                        "",
                        "",
                        "",
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDate(7));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getWishlistJob(int userId, String jobId) {
        int wishlistId = 0;
        try {
            String sql = "select w.wishlist_id from wishlist w"
                    + " where w.account_id = ? and w.job_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setString(2, jobId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return wishlistId;
    }

    public void addWishlist(int userId, String jobId) {
        try {
            String sql = "INSERT INTO [dbo].[wishlist]\n"
                    + "           ([account_id]\n"
                    + "           ,[job_id])\n"
                    + "     VALUES\n"
                    + "           (?,?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setString(2, jobId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deleteWishlist(int wishlistId) {
        try {
            String sql = "delete from wishlist where wishlist_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, wishlistId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
