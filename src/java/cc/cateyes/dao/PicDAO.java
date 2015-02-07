package cc.cateyes.dao;

import cc.cateyes.pojo.Pic;
import java.util.Date;
import java.util.List;

public interface PicDAO {
    
    public Pic selectPic(Pic pic);
    public List<Pic> selectPics(Pic pic);
    public Pic addPic();
    public Long modifyPic(Pic pic);
    public Date selectMaxPublishDateTime(String catId);
    
}
