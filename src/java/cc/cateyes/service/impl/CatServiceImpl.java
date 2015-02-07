package cc.cateyes.service.impl;

import cc.cateyes.dao.CatDAO;
import cc.cateyes.pojo.Cat;
import cc.cateyes.service.CatService;
import java.util.List;

public class CatServiceImpl implements CatService {

    private CatDAO catDAO;
    private List<Cat> cats;
    
    public Cat selectCat(String catId) {
        return catDAO.selectCat(catId);
    }
    
    public List<Cat> selectCats(String catId) {
        cats = catDAO.selectCats(catId);
        if(cats != null) {
            for(Cat cat : cats) {
                cat.setCatEnglishName(cat.getCatId().substring(cat.getCatId().lastIndexOf("_") + 1));
                cat.setCatColor(cat.getCatId().substring(cat.getCatId().indexOf("_") + 1, cat.getCatId().indexOf("_") + 2));
            }
        }
        if("all".equals(catId)) {
            cats.add(0, null);
        }
        return cats;
    }

    /* getter */
    public CatDAO getCatDAO() { return catDAO; }
    /* setter */
    public void setCatDAO(CatDAO catDAO) { this.catDAO = catDAO; }

}
