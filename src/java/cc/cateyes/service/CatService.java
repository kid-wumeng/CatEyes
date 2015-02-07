package cc.cateyes.service;

import cc.cateyes.pojo.Cat;
import java.util.List;

public interface CatService {
    
    public Cat selectCat(String catId);
    public List<Cat> selectCats(String catId);
    
}
