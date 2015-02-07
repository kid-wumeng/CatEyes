package cc.cateyes.dao.impl;

import cc.cateyes.dao.PicDAO;
import cc.cateyes.pojo.Pic;
import java.util.Date;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class PicDAOImpl extends SqlMapClientDaoSupport implements PicDAO {

    public Pic selectPic(Pic pic) {
        return (Pic) getSqlMapClientTemplate().queryForObject("selectPic", pic);
    }
    
    public List<Pic> selectPics(Pic pic) {
        return getSqlMapClientTemplate().queryForList("selectPics", pic);
    }

    public Pic addPic() {
        return (Pic) getSqlMapClientTemplate().queryForObject("addPic");
    }

    public Long modifyPic(Pic pic) {
        return (Long) getSqlMapClientTemplate().queryForObject("modifyPic", pic);
    }

    public Date selectMaxPublishDateTime(String catId) {
        return (Date) getSqlMapClientTemplate().queryForObject("selectMaxPublishDateTime", catId);
    }

}
