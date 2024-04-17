/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Account;
import entity.Apply;
import entity.Category;
import entity.Job;
import entity.Resume;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import util.DBContext;

 
public class ResumeDAO extends DBContext {

    ResultSet rs = null;
    PreparedStatement ps = null;

    public ArrayList<Resume> getResumeByUserId(int accountId) {
        ArrayList<Resume> list = new ArrayList<>();
        try {
            String sql = "SELECT [resume_id]\n"
                    + "      ,[resume_name]\n"
                    + "      ,[full_name]\n"
                    + "      ,[phone]\n"
                    + "      ,[address]\n"
                    + "      ,[education]\n"
                    + "      ,[experience]\n"
                    + "      ,[portfolio_url]\n"
                    + "      ,[skill]\n"
                    + "      ,[award]\n"
                    + "  FROM [job_searching_project].[dbo].[resumes] where [account_id] = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            rs = ps.executeQuery();
            while (rs.next()) {
                Resume a = new Resume(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void createResume(int userId, String resumeName, String fullName, String phone, String address, String education, String exp, String pUrl, String skill, String award) {

        try {

            String sql = "INSERT INTO [resumes] ([resume_name],[account_id], [full_name], [phone],[address], [education],[experience],[portfolio_url],[skill],[award]) VALUES (?,?,?,?,?,?,?,?,?,?)";

            ps = connection.prepareStatement(sql);

            ps.setString(1, resumeName);

            ps.setInt(2, userId);

            ps.setString(3, fullName);

            ps.setString(4, phone);

            ps.setString(5, address);

            ps.setString(6, education);

            ps.setString(7, exp);

            ps.setString(8, pUrl);

            ps.setString(9, skill);

            ps.setString(10, award);

            ps.executeUpdate();

            ps.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

    }

    public void applyJob(int account_id, String job_id, String resume_id, java.sql.Date submission_date) {
        try {
            String sql = "INSERT INTO [apply] ([account_id], [job_id], [resume_id],[submission_date]) VALUES (?,?,?,?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, account_id);
            ps.setString(2, job_id);
            ps.setString(3, resume_id);
            ps.setDate(4, submission_date);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Apply> getApplys(String search) {
        ArrayList<Apply> list = new ArrayList<>();
        try {
            String sql = "select ap.apply_id, ac.email, j.job_name , ap.resume_id, ap.submission_date, ap.status from apply ap \n"
                    + "  inner join account ac on ap.account_id = ac.account_id \n"
                    + "  inner join job j on j.job_id = ap.job_id where ac.email like ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Apply a = new Apply(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Apply> getApplysByUserId(int userId) {
        ArrayList<Apply> list = new ArrayList<>();
        try {
            String sql = "select ap.apply_id, ac.email, j.job_name , ap.resume_id, ap.submission_date, ap.status from apply ap \n"
                    + "  inner join account ac on ap.account_id = ac.account_id \n"
                    + "  inner join job j on j.job_id = ap.job_id where ac.account_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                Apply a = new Apply(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Apply> getLatestApplys() {
        ArrayList<Apply> list = new ArrayList<>();
        try {
            String sql = "select ap.apply_id, ac.email, j.job_name , ap.resume_id, ap.submission_date, ap.status from apply ap \n"
                    + "  inner join account ac on ap.account_id = ac.account_id \n"
                    + "  inner join job j on j.job_id = ap.job_id where ap.submission_date = ?";
            java.util.Date currentDate = new java.util.Date();
            java.sql.Date orderDate = new java.sql.Date(currentDate.getTime());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            // Format the java.util.Date object to String
            String dateString = sdf.format(orderDate);
            ps = connection.prepareStatement(sql);
            ps.setString(1, dateString);
            rs = ps.executeQuery();
            while (rs.next()) {
                Apply a = new Apply(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
                list.add(a);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Resume getResumeById(String resumeId) {
        try {
            String sql = "SELECT [resume_id]\n"
                    + "      ,[resume_name]\n"
                    + "      ,[full_name]\n"
                    + "      ,[phone]\n"
                    + "      ,[address]\n"
                    + "      ,[education]\n"
                    + "      ,[experience]\n"
                    + "      ,[portfolio_url]\n"
                    + "      ,[skill]\n"
                    + "      ,[award]\n"
                    + "  FROM [job_searching_project].[dbo].[resumes] where [resume_id] = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, resumeId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Resume(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void updateResume(String resumeId, String resumeName, String fullName, String phone, String address, String education, String experience, String pUrl, String skill, String award) {
        try {
            String sql = "UPDATE resumes SET [resume_name]=?, [full_name]=?, [phone]=?, [address]=?, [education]=?, [experience]=?, [portfolio_url]=?, [skill]=?, [award]=? WHERE [resume_id]=?";
            ps = connection.prepareStatement(sql);

            ps.setString(1, resumeName);
            ps.setString(2, fullName);
            ps.setString(3, phone);
            ps.setString(4, address);
            ps.setString(5, education);
            ps.setString(6, experience);
            ps.setString(7, pUrl);
            ps.setString(8, skill);
            ps.setString(9, award);
            ps.setString(10, resumeId);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteResume(String resumeId) {
        try {
            String sql = "delete from resumes where resume_id = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, resumeId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void approvalApply(String applyId, String status) {
        try {
            String sql = "UPDATE [apply] SET [status]=? WHERE [apply_id]=?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, status);
            ps.setString(2, applyId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
