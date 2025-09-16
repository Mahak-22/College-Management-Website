/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author mahak
 */
public class FacultyDto 
{
    private String fname,fid, fpass, fadd, fdept, fcontact, fcity, role;

    public String getFcity() {
        return fcity;
    }

    public void setFcity(String fcity) {
        this.fcity = fcity;
    }

    public String getFadd() {
        return fadd;
    }

    public void setFadd(String fadd) {
        this.fadd = fadd;
    }

    public String getFdept() {
        return fdept;
    }

    public void setFdept(String fdept) {
        this.fdept = fdept;
    }

    public String getFcontact() {
        return fcontact;
    }

    public void setFcontact(String fcontact) {
        this.fcontact = fcontact;
    }
    
    public String getfName()
    {
        return fname;
    }
    
    public void setfName(String fname)
    {
        this.fname = fname;
    }
    
     public String getfID() {
        return fid;
    }

    public void setfID(String fid) {
        this.fid = fid;
    }
    
     public String getfpass() {
        return fpass;
    }

    public void setfpass(String fpass) {
        this.fpass = fpass;
    }
    
    public String getRole()
    {
        return role;
    }
    public void setRole(String role)
    {
        this.role = role;
    }
}
