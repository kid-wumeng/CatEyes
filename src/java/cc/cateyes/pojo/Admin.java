package cc.cateyes.pojo;

public class Admin {
    
    private Integer adminId;
    private String adminAccount;
    private String adminPass;
    private String adminName;

    /* getter */
    public Integer getAdminId() { return adminId; }
    public String getAdminAccount() { return adminAccount; }
    public String getAdminPass() { return adminPass; }
    public String getAdminName() { return adminName; }
    /* setter */
    public void setAdminId(Integer adminId) { this.adminId = adminId; }
    public void setAdminAccount(String adminAccount) { this.adminAccount = adminAccount; }
    public void setAdminPass(String adminPass) { this.adminPass = adminPass; }
    public void setAdminName(String adminName) { this.adminName = adminName; }
    
}
