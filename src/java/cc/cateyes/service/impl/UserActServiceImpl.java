package cc.cateyes.service.impl;

import cc.cateyes.dao.UserActDAO;
import cc.cateyes.pojo.UserAct;
import cc.cateyes.service.UserActService;

public class UserActServiceImpl implements UserActService {

    private UserActDAO userActDAO;
    
    public void addUserAct_selectCat(UserAct userAct) {
        userActDAO.addUserAct_selectCat(userAct);
    }

    /* getter */
    public UserActDAO getUserActDAO() { return userActDAO; }
    /* setter */
    public void setUserActDAO(UserActDAO userActDAO) { this.userActDAO = userActDAO; }
    
}
