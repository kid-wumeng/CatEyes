package cc.cateyes.dao.impl;

import cc.cateyes.dao.UserActDAO;
import cc.cateyes.pojo.UserAct;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class UserActDAOImpl extends SqlMapClientDaoSupport implements UserActDAO {

    public void addUserAct_selectCat(UserAct userAct) {
        getSqlMapClientTemplate().queryForList("addUserAct_selectCat", userAct);
    }
    
}
