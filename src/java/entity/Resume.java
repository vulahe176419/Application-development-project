/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

 
public class Resume {
    String resumeId;
    String resumeName;
    String fullName;
    String phone;
    String address;
    String education;
    String experience;
    String porfolio;
    String skill;
    String award;

    public Resume(String resumeId, String resumeName, String fullName, String phone, String address, String education, String experience, String porfolio, String skill, String award) {
        this.resumeId = resumeId;
        this.resumeName = resumeName;
        this.fullName = fullName;
        this.phone = phone;
        this.address = address;
        this.education = education;
        this.experience = experience;
        this.porfolio = porfolio;
        this.skill = skill;
        this.award = award;
    }

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId;
    }

    public String getResumeName() {
        return resumeName;
    }

    public void setResumeName(String resumeName) {
        this.resumeName = resumeName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getPorfolio() {
        return porfolio;
    }

    public void setPorfolio(String porfolio) {
        this.porfolio = porfolio;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getAward() {
        return award;
    }

    public void setAward(String award) {
        this.award = award;
    }

    
    
    
}
