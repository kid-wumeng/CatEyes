package cc.cateyes.service.impl;

import cc.cateyes.dao.AdminDAO;
import cc.cateyes.pojo.Admin;
import cc.cateyes.service.AdminService;

public class AdminServiceImpl implements AdminService {
    
    private AdminDAO adminDAO;
    
    public Admin selectAdmin(Admin admin) {
        return adminDAO.selectAdmin(admin);
    }
    
    /* getter */
    public AdminDAO getAdminDAO() { return adminDAO; }
    /* setter */
    public void setAdminDAO(AdminDAO adminDAO) { this.adminDAO = adminDAO; }
    
}
