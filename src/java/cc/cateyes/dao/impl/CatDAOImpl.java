package cc.cateyes.dao.impl;

import cc.cateyes.dao.CatDAO;
import cc.cateyes.pojo.Cat;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class CatDAOImpl extends SqlMapClientDaoSupport implements CatDAO {

    public Cat selectCat(String catId) {
        return (Cat) getSqlMapClientTemplate().queryForObject("selectCat", catId);
    }

    public List<Cat> selectCats(String catId) {
        return getSqlMapClientTemplate().queryForList("selectCats", catId);
    }
    
}
