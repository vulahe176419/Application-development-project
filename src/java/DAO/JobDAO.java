/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Account;
import entity.Category;
import entity.Job;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import org.apache.naming.java.javaURLContextFactory;
import util.DBContext;

public class JobDAO extends DBContext {

    ResultSet rs = null;
    PreparedStatement ps = null;

    public ArrayList<Job> getJobsFilter(String category, String type, String location) {
        ArrayList<Job> list = new ArrayList<>();
        try {
            String sql = "SELECT [job_id]\n"
                    + "      ,[job_name]\n"
                    + "      ,[description]\n"
                    + "      ,[requirement]\n"
                    + "      ,[benefit]\n"
                    + "      ,[contact_mail]\n"
                    + "      ,[offer_salary]\n"
                    + "      ,[level]\n"
                    + "      ,[experience]\n"
                    + "      ,[qualification]\n"
                    + "      ,category.category_name\n"
                    + "      ,[type]\n"
                    + "      ,[location]\n"
                    + "      ,[posted_date]\n"
                    + "  FROM [job] inner join category on category.category_id = job.category_id where category.category_id = ? and [type] like ? and [location] like ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, category);
            ps.setString(2,  "%" + type + "%");
            ps.setString(3,  "%" + location + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Job a = new Job(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getDate(14));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Job> getJobsHome(String search, String location) {
        ArrayList<Job> list = new ArrayList<>();
        try {
            String sql = "SELECT [job_id]\n"
                    + "      ,[job_name]\n"
                    + "      ,[description]\n"
                    + "      ,[requirement]\n"
                    + "      ,[benefit]\n"
                    + "      ,[contact_mail]\n"
                    + "      ,[offer_salary]\n"
                    + "      ,[level]\n"
                    + "      ,[experience]\n"
                    + "      ,[qualification]\n"
                    + "      ,category.category_name\n"
                    + "      ,[type]\n"
                    + "      ,[location]\n"
                    + "      ,[posted_date]\n"
                    + "  FROM [job] inner join category on category.category_id = job.category_id where [job_name] like ? and [location] like ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ps.setString(2, "%" + location + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Job a = new Job(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getDate(14));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Job> getJobs(String search) {
        ArrayList<Job> list = new ArrayList<>();
        try {
            String sql = "SELECT [job_id]\n"
                    + "      ,[job_name]\n"
                    + "      ,[description]\n"
                    + "      ,[requirement]\n"
                    + "      ,[benefit]\n"
                    + "      ,[contact_mail]\n"
                    + "      ,[offer_salary]\n"
                    + "      ,[level]\n"
                    + "      ,[experience]\n"
                    + "      ,[qualification]\n"
                    + "      ,category.category_name\n"
                    + "      ,[type]\n"
                    + "      ,[location]\n"
                    + "      ,[posted_date]\n"
                    + "  FROM [job] inner join category on category.category_id = job.category_id where [job_name] like ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Job a = new Job(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getDate(14));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Job> getJobsByCategory(String search) {
        ArrayList<Job> list = new ArrayList<>();
        try {
            String sql = "SELECT [job_id]\n"
                    + "      ,[job_name]\n"
                    + "      ,[description]\n"
                    + "      ,[requirement]\n"
                    + "      ,[benefit]\n"
                    + "      ,[contact_mail]\n"
                    + "      ,[offer_salary]\n"
                    + "      ,[level]\n"
                    + "      ,[experience]\n"
                    + "      ,[qualification]\n"
                    + "      ,category.category_name\n"
                    + "      ,[type]\n"
                    + "      ,[location]\n"
                    + "      ,[posted_date]\n"
                    + "  FROM [job] inner join category on category.category_id = job.category_id where category.category_name like ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Job a = new Job(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getDate(14));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Category> getCategory() {
        ArrayList<Category> list = new ArrayList<>();
        try {
            String sql = "select category.category_id, category.category_name, count(job.category_id) as total from category \n"
                    + "  inner join job on category.category_id = job.category_id\n"
                    + "  group by category.category_id, category.category_name";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category a = new Category(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Category> getCategories() {
        ArrayList<Category> list = new ArrayList<>();
        try {
            String sql = "select category.category_id, category.category_name from category";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category a = new Category(rs.getString(1),
                        rs.getString(2),
                        "");
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Job getJobsById(String id) {
        try {
            String sql = "SELECT [job_id]\n"
                    + "      ,[job_name]\n"
                    + "      ,[description]\n"
                    + "      ,[requirement]\n"
                    + "      ,[benefit]\n"
                    + "      ,[contact_mail]\n"
                    + "      ,[offer_salary]\n"
                    + "      ,[level]\n"
                    + "      ,[experience]\n"
                    + "      ,[qualification]\n"
                    + "      ,category.category_name\n"
                    + "      ,[type]\n"
                    + "      ,[location]\n"
                    + "      ,[posted_date]\n"
                    + "  FROM [job] inner join category on category.category_id = job.category_id where [job_id] = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Job(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getDate(14));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void addJob(String job_name, String description, String requirement, String benefit, String contact_mail, String offer_salary,
            String level, String experience, String qualification, String category_id, String type, String location, java.sql.Date posted_date) {
        try {
            String sql = "INSERT INTO [dbo].[job]\n"
                    + "           ([job_name]\n"
                    + "           ,[description]\n"
                    + "           ,[requirement]\n"
                    + "           ,[benefit]\n"
                    + "           ,[contact_mail]\n"
                    + "           ,[offer_salary]\n"
                    + "           ,[level]\n"
                    + "           ,[experience]\n"
                    + "           ,[qualification]\n"
                    + "           ,[category_id]\n"
                    + "           ,[type]\n"
                    + "           ,[location]\n"
                    + "           ,[posted_date])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            ps = connection.prepareStatement(sql);
            ps.setString(1, job_name);
            ps.setString(2, description);
            ps.setString(3, requirement);
            ps.setString(4, benefit);
            ps.setString(5, contact_mail);
            ps.setString(6, offer_salary);
            ps.setString(7, level);
            ps.setString(8, experience);
            ps.setString(9, qualification);
            ps.setString(10, category_id);
            ps.setString(11, type);
            ps.setString(12, location);
            ps.setDate(13, posted_date);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateJob(String job_name, String description, String requirement, String benefit, String contact_mail, String offer_salary,
            String level, String experience, String qualification, String category_id, String type, String location, String jobId) {
        try {
            String sql = "UPDATE [dbo].[job]\n"
                    + "   SET [job_name] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[requirement] = ?\n"
                    + "      ,[benefit] = ?\n"
                    + "      ,[contact_mail] = ?\n"
                    + "      ,[offer_salary] = ?\n"
                    + "      ,[level] = ?\n"
                    + "      ,[experience] = ?\n"
                    + "      ,[qualification] = ?\n"
                    + "      ,[category_id] = ?\n"
                    + "      ,[type] = ?\n"
                    + "      ,[location] = ?      \n"
                    + " WHERE job_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, job_name);
            ps.setString(2, description);
            ps.setString(3, requirement);
            ps.setString(4, benefit);
            ps.setString(5, contact_mail);
            ps.setString(6, offer_salary);
            ps.setString(7, level);
            ps.setString(8, experience);
            ps.setString(9, qualification);
            ps.setString(10, category_id);
            ps.setString(11, type);
            ps.setString(12, location);
            ps.setString(13, jobId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteJob(String jobId) {
        try {
            String sql = "delete from wishlist where job_id = ?\n"
                    + "\n"
                    + "  delete from apply where job_id = ?\n"
                    + "\n"
                    + "  delete from job where job_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, jobId);
            ps.setString(2, jobId);
            ps.setString(3, jobId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
