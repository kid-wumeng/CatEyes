package cc.cateyes.dao;

import cc.cateyes.pojo.Cat;
import java.util.List;

public interface CatDAO {
    
    public Cat selectCat(String catId);
    public List<Cat> selectCats(String catId);
    
}
