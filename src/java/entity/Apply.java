/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

 
public class Apply {

    String applyId;
    String accountEmail;
    String jobName;
    String resumeId;
    String submissionDate;
    String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public Apply(String applyId, String accountEmail, String jobName, String resumeId, String submissionDate, String status) {
        this.applyId = applyId;
        this.accountEmail = accountEmail;
        this.jobName = jobName;
        this.resumeId = resumeId;
        this.submissionDate = submissionDate;
        this.status = status;
    }

    public Apply(String applyId, String accountEmail, String jobName, String submissionDate, String status) {
        this.applyId = applyId;
        this.accountEmail = accountEmail;
        this.jobName = jobName;
        this.submissionDate = submissionDate;
        this.status = status;
    }

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId;
    }

    public String getApplyId() {
        return applyId;
    }

    public void setApplyId(String applyId) {
        this.applyId = applyId;
    }

    public String getAccountEmail() {
        return accountEmail;
    }

    public void setAccountEmail(String accountEmail) {
        this.accountEmail = accountEmail;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getSubmissionDate() {
        return submissionDate;
    }

    public void setSubmissionDate(String submissionDate) {
        this.submissionDate = submissionDate;
    }
    
    
}
