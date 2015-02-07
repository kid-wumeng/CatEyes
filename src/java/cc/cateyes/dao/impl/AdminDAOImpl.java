package cc.cateyes.dao.impl;

import cc.cateyes.dao.AdminDAO;
import cc.cateyes.pojo.Admin;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class AdminDAOImpl extends SqlMapClientDaoSupport implements AdminDAO {

    public Admin selectAdmin(Admin admin) {
        return (Admin) getSqlMapClientTemplate().queryForObject("selectAdmin", admin);
    }
    
}
