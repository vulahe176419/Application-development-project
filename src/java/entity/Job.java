/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

 
public class Job {
    String jobId;
    String jobName;
    String description;
    String requirement;
    String benefit;
    String contactMail;
    String offerSalary;
    String level;
    String experience;
    String qualification;
    String categoryName;
    String type;
    String location;
    Date postedDate;

    public Job(String jobId, String jobName, String description, String requirement, String benefit, String contactMail, String offerSalary, String level, String experience, String qualification, String categoryName, String type, String location, Date postedDate) {
        this.jobId = jobId;
        this.jobName = jobName;
        this.description = description;
        this.requirement = requirement;
        this.benefit = benefit;
        this.contactMail = contactMail;
        this.offerSalary = offerSalary;
        this.level = level;
        this.experience = experience;
        this.qualification = qualification;
        this.categoryName = categoryName;
        this.type = type;
        this.location = location;
        this.postedDate = postedDate;
    }

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRequirement() {
        return requirement;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public String getBenefit() {
        return benefit;
    }

    public void setBenefit(String benefit) {
        this.benefit = benefit;
    }

    public String getContactMail() {
        return contactMail;
    }

    public void setContactMail(String contactMail) {
        this.contactMail = contactMail;
    }

    public String getOfferSalary() {
        return offerSalary;
    }

    public void setOfferSalary(String offerSalary) {
        this.offerSalary = offerSalary;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(Date postedDate) {
        this.postedDate = postedDate;
    }

    

    
    
    
    
}
